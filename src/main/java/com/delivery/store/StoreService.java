package com.delivery.store;

import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
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
//    private static String storeURL = "https://www.mangoplate.com/search/%EA%B0%95%EC%84%9C%EA%B5%AC%20%ED%99%94%EA%B3%A1%EB%8F%99%20%ED%94%BC%EC%9E%90%20";
//    @Autowired
//    private SeleniumController seleniumController;

//    public List<StoreVO> getStoreDatas() throws IOException {
//        List<StoreVO> storeList = new ArrayList<>();
//        Document document = Jsoup.connect(storeURL).get();
//        Elements contents = document.select("figure.restaurant-item");
//
//        for (Element content : contents) {
//            StoreVO storeVO = StoreVO.builder()
//                    .title(content.select("div.info a h2.title").text()) //제목
//                    .image(content.select("a div img").attr("abs:data-original")) // 이미지
////                    .subject(content.select("h4 a").text())
////                    .url(content.select("a").attr("abs:href"))		// 링크
//                    .build();
//            storeList.add(storeVO);
//        }
//
//        return storeList;
//    }

    public List<StoreVO> getStoreList() throws InterruptedException {
        //drvier 설정 뒷쪽 내 크롬드라이버exe 위치
        System.setProperty("webdriver.chrome.driver","D:\\chromedriver_win32\\chromedriver.exe");

        //옵션 생성
//        ChromeOptions options = new ChromeOptions();
        WebDriver driver = new ChromeDriver();
        //창 숨기는 옵션 추가
//        options.addArguments("headless");
//
//        WebDriver driver = null;


        //크롬실행 객체 만들기
//        driver = new ChromeDriver(options);

        //URL 접속(접속할 곳 적어주기)
        driver.get("https://www.google.com");
        Thread.sleep(5000);
        List<StoreVO> storeVOList = new ArrayList<>();
        //조건이 성립할때까지 기다림 조건이 성립하지 않으면 설정된 시간만큼 기다림
//        WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(60));

        //클릭이가능할때까지 대기
//        wait.until(ExpectedConditions.elementToBeClickable(By.id("btn-sync")));
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
        driver.quit();

//        return storeVOList;
        return storeVOList;
    }
}
