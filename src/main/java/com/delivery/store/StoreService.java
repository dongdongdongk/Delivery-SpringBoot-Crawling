package com.delivery.store;

import com.delivery.user.WishListVO;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;


import java.io.IOException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

@Slf4j
@Service
public class StoreService {

    @Autowired
    private StoreDAO storeDAO;

    //스토어 리스트 정보 가져오기
    public List<StoreVO> getStoreList(String storeURL) throws Exception {
        List<StoreVO> storeList = new ArrayList<>();
        Document document = Jsoup.connect(storeURL).get();
        Elements contents = document.select("figure.restaurant-item");

        for (Element content : contents) {
            StoreVO storeVO = StoreVO.builder()
                    .title(content.select("div.info a h2.title").text()) //제목
                    .image(content.select("a div img").attr("abs:data-original")) // 이미지
                    .subdivision(content.select("p.etc").text()) //위치
                    .reviewCount(content.select("span.review_count").text())//리뷰 숫자
                    .view(content.select("span.view_count").text()) //조회수
                    .url(content.select("a.only-desktop_not").attr("href"))
                    .build();
            storeList.add(storeVO);
            storeDAO.setUserStoreSave(storeVO);
        }
        return storeList;
    }

    //가게 이름, 업데이트 날짜 등등 가져오기
    //여러개가 아니여서 for 뺌
    public StoreVO getStoreDetail(String storeURL) throws IOException {
        Document document = Jsoup.connect(storeURL).get();
        Elements contents = document.select("section.restaurant-detail");
        StoreVO storeVO = StoreVO.builder()
                .title(contents.select("h1.restaurant_name").text()) //제목
                .lastUpdate(contents.select("p.update_date").text()) //마지막 업데이트
                .build();



//        log.error("::::{}::::::",contents);


        return storeVO;
    }

    //table 파싱을 위한 기능
    public StoreTableVO getStoreTable(String storeURL) throws Exception {
        StoreTableVO storeTableVO = new StoreTableVO();
        Document document = Jsoup.connect(storeURL).get();
        Element table = document.select("table.info.no_menu").first();
        //store 이름 가져오기
        Element title = document.select("div.restaurant_title_wrap").first();
        String titleText = title.select("h1.restaurant_name").text();
        //우장산점 같은 점포명 가져오기
        String titleSub = title.select("p.branch").text();
        //subtitle 이 있다면 합쳐서 스토어 명 만들어주기
        if(!titleSub.isEmpty()) {
            String titleAll = titleText + " " + "(" + titleSub + ")";
            storeTableVO.setTitle(titleAll);
        }else {
            storeTableVO.setTitle(titleText);
        }


        log.error("storeTITLE : {} ",storeTableVO.getTitle());
        //StoreURL 저장
        storeTableVO.setUrl(storeURL);
        log.error("storeURL : {} ", storeURL);
        //크롤링 해야하는 테이블에 어떤곳은 메뉴 항목이 있고 그 항목에 tr 이 없어서 if 넣어줌
        if (table == null) {
             table = document.select("table.info").first();
        }
        Elements rows = table.select("tbody tr");

        for (Element row : rows) {
            Element header = row.selectFirst("th");
            Element data = row.selectFirst("td");
            String headerText = header.text();
            String dataText = data.text();

            switch (headerText) {
                case "주소":
                    storeTableVO.setAddress(dataText);
                    break;
                case "전화번호":
                    storeTableVO.setPhoneNumber(dataText);
                    break;
                case "음식 종류":
                    storeTableVO.setFoodType(dataText);
                    break;
                case "가격대":
                    storeTableVO.setPriceRange(dataText);
                    break;
                case "주차":
                    storeTableVO.setParking(dataText);
                    break;
                case "영업시간":
                    storeTableVO.setTime(dataText);
                    break;
                case "마지막주문":
                    storeTableVO.setLastOrder(dataText);
                    break;
                case "웹 사이트":
                    storeTableVO.setWebsite(dataText);
                    break;
                case "휴일" :
                    storeTableVO.setRestDay(dataText);
                default:
                    break;
                }
                System.out.println(headerText + ": " + dataText);
            }
        storeDAO.setUserStoreTableSave(storeTableVO);
        return storeTableVO;
    }



    //이미지 리스트 가져오기
    public List<StoreVO> getStoreDetailImage(String storeURL) throws Exception {
        List<StoreVO> storeList = new ArrayList<>();
        Document document = Jsoup.connect(storeURL).get();
        Elements images = document.select("figure.restaurant-photos-item");
        for (Element image : images) {
            StoreVO storeVO = StoreVO.builder()
                    .image(image.select("img.center-croping").attr("abs:src")) // 이미지
                    .build();
            storeList.add(storeVO);
        }
        return storeList;
    }


    public List<StoreCommentVO> getStoreComment(String storeURL) throws Exception {
        //drvier 설정 뒷쪽 내 크롬드라이버exe 위치
        System.setProperty("webdriver.chrome.driver","C:\\chromedriver_win32\\chromedriver.exe");


//        //옵션 생성 (크롬 드라이버 버전 문제가 있는듯 data;
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        //창 숨기는 옵션 추가 (댓글이 뜨지 않는 문제가 있었는데 이걸로 해결 댓글에 이미지가 포함되서 인듯)
        options.addArguments("--disable-popup-blocking");       //팝업안띄움
        options.addArguments("headless");                       //브라우저 안띄움
//        options.addArguments("--disable-gpu");			//gpu 비활성화
        options.addArguments("--blink-settings=imagesEnabled=false"); //이미지 다운 안받음
//      크롬실행 객체 만들기
        WebDriver driver = new ChromeDriver(options);
//        WebDriver driver = new ChromeDriver();

        try {
            //URL 접속(접속할 곳 적어주기)
            driver.get(storeURL);
            //
            driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

            List<StoreCommentVO> commentList = new ArrayList<>();
            //조건이 성립할때까지 기다림 조건이 성립하지 않으면 설정된 시간만큼 기다림 wait 객체 생성
//          WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(60)); //조건 성립 x시 6초 대기

            //class 이름 , 에 더보기 라는 값이 생성 될 떄 까지 대기
//           wait.until(ExpectedConditions.textToBe(By.className("RestaurantReviewList__MoreReviewButton"), "더보기"));
            //액션 추가 (움직이게 하는 기능) 액션 객체 생성
            Actions actions = new Actions(driver);
            //화면을 end 버튼으로 내리고 더보기 버튼 클릭 반복 (댓글을 전부 불러오기 위한 기능)
            for (int i = 1; i <= 6; i++) {
                WebElement moreButton = driver.findElement(By.className("RestaurantReviewList__MoreReviewButton"));
                //너무 빨리 내리니까 댓글을 못읽는다...
                Thread.sleep(2000);
                actions.sendKeys(Keys.PAGE_DOWN).perform();
                Thread.sleep(1000);
                actions.sendKeys(Keys.PAGE_DOWN).perform();
                // 버튼이 없을 때 반복문을 빠져나가서 시간초과 오류 잡는기능
                if (moreButton != null && moreButton.isDisplayed()) {
                    actions.moveToElement(moreButton).click();
                } else {
                    break;
                }
//                actions.moveToElement(driver.findElement(By.className("RestaurantReviewList__MoreReviewButton"))).click();
            }

            List<WebElement> elements = driver.findElements(By.cssSelector("a.RestaurantReviewItem__Link"));
            for (WebElement element : elements) {
                StoreCommentVO storeCommentVO = new StoreCommentVO();
                String userName = element.findElement(By.className("RestaurantReviewItem__UserNickName")).getText();
                storeCommentVO.setUserName(userName);
                String contents = element.findElement(By.className("RestaurantReviewItem__ReviewText")).getText();
                storeCommentVO.setContents(contents);
                String rating = element.findElement(By.className("RestaurantReviewItem__RatingText")).getText();
                storeCommentVO.setRating(rating);
                String date = element.findElement(By.className("RestaurantReviewItem__ReviewDate")).getText();
                storeCommentVO.setDate(date);

                log.error("유저네임 : " + userName);
                log.error("콘텐츠 : " + contents);
                log.error("레이팅 : " + rating);
                log.error("날짜 : " + date);
                commentList.add(storeCommentVO);
            }

            //클릭이가능할때까지 대기
//        wait.until(ExpectedConditions.elementToBeClickable(By.id("btn-sync")));
//        System.out.println(driver);
//        Thread.sleep(5000);
//
//        //click
//        driver.findElement(By.xpath("//*[@id=\"btn-sync\"]")).click();
//
//        //텍스트가 "최신정보"가 될때까지 대기
//        wait = new WebDriverWait(driver, Duration.ofSeconds(60));
//
//        WebElement element =  driver.findElement(By.className("col-lg-8"));	//ID 정보

            // 드라이버 종료
            return commentList;

        } finally {
            driver.quit();
        }
    }

    public int setWishList(WishListVO wishListVO) throws Exception {
        return storeDAO.setWishList(wishListVO);
    }
}
