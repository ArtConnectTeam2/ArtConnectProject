// 인원 수 초기화
var currentAdultCount = 0;
var currentTeenagerCount = 0;
var currentChildCount = 0;

$(document).ready(function() {
		// 인원 수 변경 시 가격 업데이트
        $(".adultCount, .teenagerCount, .childCount").on("input", function() {
            updateTotalPrice();
        });
        
        // 페이지 로드 시 처음 한 번 가격 업데이트
        updateTotalPrice();
    });

    function updateTotalPrice() {
        // 전시 가격 정보 가져오기
        var priceAdult = extractNumber($(".priceAdult").text());
        var priceTeenager = extractNumber($(".priceTeenager").text());
        var priceChild = extractNumber($(".priceChild").text());
        var adultCount = parseInt($("#adultCount").text());
        var teenagerCount = parseInt($("#teenagerCount").text());
        var childCount = parseInt($("#childCount").text());
        var totalPrice = (priceAdult * adultCount) + (priceTeenager * teenagerCount) + (priceChild * childCount);
		
        // 총 가격 표시
        $(".totalPrice").text("총 가격: " + totalPrice + "원");

        // 예약 폼에 선택한 가격 및 인원 수 입력
        $("input[name='adultCount']").val(adultCount);
        $("input[name='teenagerCount']").val(teenagerCount);
        $("input[name='childCount']").val(childCount);
        $("input[name='totalPrice']").val(totalPrice);
    }

    function decreaseAdultCount() {
        if (currentAdultCount > 0) {
            currentAdultCount--;
            updateAdultCount();
        }
    }

    function increaseAdultCount() {
        currentAdultCount++;
        updateAdultCount();
    }

    function decreaseTeenagerCount() {
        if (currentTeenagerCount > 0) {
            currentTeenagerCount--;
            updateTeenagerCount();
        }
    }

    function increaseTeenagerCount() {
        currentTeenagerCount++;
        updateTeenagerCount();
    }

    function decreaseChildCount() {
        if (currentChildCount > 0) {
            currentChildCount--;
            updateChildCount();
        }
    }

    function increaseChildCount() {
        currentChildCount++;
        updateChildCount();
    }

    function updateAdultCount() {
        $("#adultCount").val(currentAdultCount);
        updateTotalPrice();
    }

    function updateTeenagerCount() {
        $("#teenagerCount").val(currentTeenagerCount);
        updateTotalPrice();
    }

    function updateChildCount() {
        $("#childCount").val(currentChildCount);
        updateTotalPrice();
    }

    // 텍스트에서 숫자 부분만 추출하는 함수
    function extractNumber(str) {
        // '무료'인 경우 0 반환
        if (str.includes('무료')) {
            return 0;
        }

        var num = str.replace(/[^0-9]/g, '');  // 숫자가 아닌 모든 문자 제거
        return parseInt(num);
    }
