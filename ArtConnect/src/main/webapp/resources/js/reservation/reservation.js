$(document).ready(function() {

        // 인원 수 변경 시 가격 업데이트
        $(".adultCount, .teenagerCount, .childCount").on("input", function() {
            updateTotalPrice();
        });

        // 초기화
        updateReservationForm();
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

    function updateReservationForm() {
        // 선택한 전시에 대한 예약 폼 초기화
        currentAdultCount = 0;
        currentTeenagerCount = 0;
        currentChildCount = 0;
        $("#adultCount").text(currentAdultCount);
        $("#teenagerCount").text(currentTeenagerCount);
        $("#childCount").text(currentChildCount);
        updateTotalPrice();
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
        $("#adultCount").text(currentAdultCount);
        updateTotalPrice();
    }

    function updateTeenagerCount() {
        $("#teenagerCount").text(currentTeenagerCount);
        updateTotalPrice();
    }

    function updateChildCount() {
        $("#childCount").text(currentChildCount);
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
