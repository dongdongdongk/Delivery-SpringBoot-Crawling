package com.delivery.store;

import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;


import java.io.IOException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class StoreService {
    private static String storeURL = "https://www.mangoplate.com/search/%EA%B0%95%EC%84%9C%EA%B5%AC%20%ED%99%94%EA%B3%A1%EB%8F%99%20%ED%94%BC%EC%9E%90%20";
    private static String storeDetailURL = "https://www.mangoplate.com/restaurants/QPr6GVIc4Y";

    //스토어 리스트 정보 가져오기
    public List<StoreVO> getStoreList(String storeURL) throws IOException {
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
                default:
                    // Handle unrecognized header value, if needed
                    break;
            }
            System.out.println(headerText + ": " + dataText);
        }
        return storeTableVO;
    }
    //이미지 리스트 가져오기
    public List<StoreVO>getStoreDetailImage(String storeURL) throws Exception{
        List<StoreVO> storeList = new ArrayList<>();
        Document document = Jsoup.connect(storeURL).get();
        Elements images = document.select("figure.restaurant-photos-item");
        for(Element image : images ) {
            StoreVO storeVO = StoreVO.builder()
                    .image(image.select("img.center-croping").attr("abs:src")) // 이미지
                    .build();
            storeList.add(storeVO);
        }
        return storeList;
    }
















//    public List<StoreVO> getStoreList() throws Exception {
//        //drvier 설정 뒷쪽 내 크롬드라이버exe 위치
//        System.setProperty("webdriver.chrome.driver","C:\\win\\chromedriver_win32\\chromedriver.exe");
//
//        //옵션 생성
//        ChromeOptions options = new ChromeOptions();
//        options.addArguments("--remote-allow-origins=*");
//        WebDriver driver = new ChromeDriver(options);
//        WebDriver driver = new ChromeDriver();
        //창 숨기는 옵션 추가
//        options.addArguments("headless");
//
//        WebDriver driver = null;

        //크롬실행 객체 만들기
//        driver = new ChromeDriver(options);

        //URL 접속(접속할 곳 적어주기)
//        driver.get("https://www.diningcode.com/list.dc?query=%EA%B0%95%EC%84%9C%EA%B5%AC%20%ED%99%94%EA%B3%A1%EB%8F%99%20%ED%94%BC%EC%9E%90");
        //창이 뜨고 바로 꺼지지 않게 5초정도 대기
//        List<StoreVO> storeVOList = new ArrayList<>();
        //조건이 성립할때까지 기다림 조건이 성립하지 않으면 설정된 시간만큼 기다림
//        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(60));
        //액션 추가 (움직이게 하는 기능)
//        Actions actions = new Actions(driver);
//        actions.moveToElement(driver.findElement(By.className("sc-hhyLtv jVyekH Poi__List__Wrap"))).click();
//        actions.sendKeys(Keys.END).perform();
//        Thread.sleep(2000);
//        actions.sendKeys(Keys.END).perform();
//        Thread.sleep(2000);
//        actions.sendKeys(Keys.END).perform();
//        Thread.sleep(2000);

        //클릭이가능할때까지 대기
//        wait.until(ExpectedConditions.elementToBeClickable(By.id("btn-sync")));
//        log.error("::::::::::{}:::::::::::", driver.getPageSource());
//        System.out.println(driver);
//        Thread.sleep(5000);
//
//        //click
//        driver.findElement(By.xpath("//*[@id=\"btn-sync\"]")).click();
//
//        //텍스트가 "최신정보"가 될때까지 대기
//        wait = new WebDriverWait(driver, Duration.ofSeconds(60));
//        wait.until(ExpectedConditions.textToBe(By.id("btn-sync"), "최신정보"));
//
//        WebElement element =  driver.findElement(By.className("col-lg-8"));	//ID 정보

        // 드라이버 종료
//        driver.quit();

//        return storeVOList;
//        return storeVOList;
//    }
}
