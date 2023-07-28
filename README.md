# 🔔 토이프로젝트( 맛집서치 - 배달배달 ) 

## **📄 개요**
<p align="center">
  <br>
  <img src="https://cdn-icons-png.flaticon.com/512/7541/7541900.png" width="300" height="300">
  <br>
</p>

> **프로젝트:** 맛집서치 - 배달배달
>
> **기획 및 제작:** 김동현
>
> **분류:** 개인 프로젝트
>
> **제작 기간:** 2023.07.07 ~ 07.28
>
> **배포일:** x
>
> **사용 기술:** SPRING BOOT
>
> **문의:** dhk9309@gmail.com
> 
> 

## **🔨 기술 및 도구**
|Category|                  Detail                   |
|:--:|:-----------------------------------------:|
|FrontEnd|          HTML5, JS, CSS3, JQuery          |
|BackEnd|  Java(JDK 1.8), Servlet, Spring, Mybatis  |
|OS|                Windows 10                 |
|Libray&API|Spring Security, Validation,Lombok,Kakaomap
|IDE|      IntelliJ, VisualStudio, DBeaver      |
|Server|               Tomcat(v8.5)                |
|Document|          Google Drive, ERDCloud           |
|CI|                  Github                   |
|DateBase|                  MariaDB                  |

## **💻 기능구현**

### 1. 메인 페이지
<img src="src/main/resources/static/img/md/메인페이지.gif">

#### 1-1. 내 주변 맛집 검색
<img src="src/main/resources/static/img/md/메인-검색.gif">

  - 내 주변의 식당을 카테고리 & 검색으로 검색 가능
  - 카카오맵 API 를 이용해 식당 위치를 시각화
  - 내 위치를 자동으로 설정하기 위해 Geolocation API 사용

#### 1-2. 음식종류 선택 -> 내 주변 음식점 리스트 출력
<img src="src/main/resources/static/img/md/메인-카테고리.gif">

  - 메인 메뉴에서 음식종류 선택으로 주변 음식점 리스트 출력 
  - DB에 저장된 데이터가 아닌 크롤링된 데이터 사용
  - jsoup을 사용하여 페이지 로딩속도 개선

#### 1-2. 음식점 디테일 페이지 
<img src="src/main/resources/static/img/md/메인-디테일.gif">
  
  - 정적 크롤링 & 동적 크롤링 혼합 사용으로 페이지 로딩속도 개선 
  - 크롤링 된 데이터로 음식점 이미지, 별점 등 출력
  - 동적 크롤링(Selenium)을 사용하여 리뷰정보 크롤링
  - 자바스크립트를 사용해 리스트를 차례로 출력 