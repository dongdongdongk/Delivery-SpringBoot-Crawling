function getLocation() {
    // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
    if (navigator.geolocation) {

        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
        navigator.geolocation.getCurrentPosition(function(position) {

            var lat = position.coords.latitude, // 위도
                lon = position.coords.longitude; // 경도

            var geocoder = new kakao.maps.services.Geocoder();

            var callback = function(result, status) {
                if (status === kakao.maps.services.Status.OK) {
                    var address = result[0].address_name;
                    console.log(address)
                    $.ajax({
                        type: "GET",
                        url: "/Store/list",
                        data: { address: address },
                        success: function(response) {
                            console.log(response);
                        },
                        error: function(error) {
                            console.error("Error sending address:", error);
                        }
                    });
                }
            };
            geocoder.coord2RegionCode(lon, lat, callback);

        });
    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
        alert("접속 위치 사용 불가능")
    }
    return true
}