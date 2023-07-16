<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- This script got from frontendfreecode.com -->

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
    <style>


        .card {
            border: none;
            background: #fdfbfb
        }

        .search {
            width: 100%;
            margin-bottom: auto;
            margin-top: 20px;
            height: 50px;
            background-color: #fff;
            padding: 10px;
            border-radius: 5px
        }

        .search-input {
            color: white;
            border: 0;
            outline: 0;
            background: none;
            width: 0;
            margin-top: 5px;
            caret-color: transparent;
            line-height: 20px;
            transition: width 0.4s linear
        }

        .search .search-input {
            padding: 0 10px;
            width: 100%;
            caret-color: #e34b74;
            font-size: 19px;
            font-weight: 300;
            color: black;
            transition: width 0.4s linear
        }

        .search-icon {
            height: 34px;
            width: 34px;
            float: right;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            background-color: #f1537b;
            font-size: 10px;
            bottom: 30px;
            position: relative;
            border-radius: 5px
        }

        .search-icon:hover {
            color: #fff !important
        }

        a:link {
            text-decoration: none
        }

        .card-inner {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid rgba(0, 0, 0, .125);
            border-radius: .25rem;
            border: none;
            cursor: pointer;
            transition: all 2s
        }

        .card-inner:hover {
            transform: scale(1.1)
        }

        .mg-text span {
            font-size: 12px
        }

        .mg-text {
            line-height: 14px
        }

        .color-red{
            filter: invert(45%) sepia(91%) saturate(2990%) hue-rotate(317deg) brightness(94%) contrast(88%);
        }
        .bg-light {
            background-color: #ffffff!important;
        }

    </style>

</head>
<body>
<div class="container-fluid mt-4 m-0 " >
    <div class="row d-flex justify-content-center">
        <div class="col-12">
            <div class="card p-2  bg-light">
                <h3 class="heading mt-5 text-center">원하시는 메뉴 또는 카테고리를 입력해 주세요</h3>
                <div class="d-flex justify-content-center px-5">
                    <div class="search d-flex justify-content-center">
                        <form onsubmit="searchPlaces(); return false;">
                            <input type="hidden" id="address" value="">
                            <input type="text" class="ui-autocomplete-input shadow" placeholder="먹고싶은 메뉴,가게 검색" name="" id="keyword" size="15" value="">
<%--                            <a href="#" onclick="searchPlaces();" class="search-icon"> <i class="fa fa-search"></i></a>--%>
                            <button type="submit" value="" id="search_btn" class="search_btn shadow " onclick="searchPlaces()" placeholder="먹고싶은 메뉴,가게 검색" id="keyword">
                                <i class="fa fa-search inputicon"></i>
                            </button>
                        </form>
                    </div>
                </div>



                <div class="row mt-4 g-1 px-4 mb-3">
                    <div class="col-sm-2 shadow">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('점심식사');"> <img src="https://cdn-icons-png.flaticon.com/512/4200/4200159.png" width="50" class="color-red" >
                            <div class="text-center mg-text"> <span class="mg-text">#점심식사</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('혼술');"> <img src="https://cdn-icons-png.flaticon.com/512/701/701986.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#혼술</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('데이트 코스');"> <img src="https://cdn-icons-png.flaticon.com/512/3938/3938278.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#데이트코스</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('혼밥');"> <img src="https://cdn-icons-png.flaticon.com/512/9742/9742643.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#혼밥</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('안심식당');"> <img src="https://cdn-icons-png.flaticon.com/512/4785/4785856.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#안심식당</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('정육식당');"> <img src="https://cdn-icons-png.flaticon.com/512/869/869727.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#정육식당</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('24시간식당');"> <img src="https://cdn-icons-png.flaticon.com/512/899/899061.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#24시간식당</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('이동약자 접근');"> <img src="https://cdn-icons-png.flaticon.com/512/10450/10450399.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#이동약자접근</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('맛집');"> <img src="https://cdn-icons-png.flaticon.com/512/1152/1152274.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#맛집</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('회식장소');"> <img src="https://cdn-icons-png.flaticon.com/512/4645/4645567.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#회식장소</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('가족모임');"> <img src="https://cdn-icons-png.flaticon.com/512/4596/4596368.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#가족모임</span> </div>
                        </div>
                    </div>
                    <div class="col-sm-2 shadow-sm">
                        <div class="card-inner p-3 d-flex flex-column align-items-center" onclick="updateKeyword('제로페이 음식점');"> <img src="https://cdn-icons-png.flaticon.com/512/6296/6296508.png" width="50" class="color-red">
                            <div class="text-center mg-text"> <span class="mg-text">#제로페이</span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="myLocation"></div>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>
</div>
<script>
    function updateKeyword(keyword) {
        document.getElementById("keyword").value = keyword;
        searchPlaces();
    }
</script>
</body>
</html>