<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>예약 페이지</title>
    <!-- 필요한 CSS 및 JavaScript 파일을 로드하십시오. -->
    <link rel="stylesheet" type="text/css" href="resources/css/styles.css">
    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        // 인원 수를 입력할 때마다 가격을 업데이트하는 함수
        function updatePrice() {
            var price = ${selectedExhibition.price}; // 전시의 가격을 가져오기 (JSP에서 전달받은 값 사용)
            var quantity = $('#quantity').val(); // 입력된 인원 수 가져오기
            var totalPrice = price * quantity; // 총 가격 계산
            $('#totalPrice').text(totalPrice); // 총 가격 표시
        }

        $(document).ready(function () {
            // 초기 가격 업데이트
            updatePrice();

            // 인원 수 변경 시 이벤트 핸들러 연결
            $('#quantity').change(function () {
                updatePrice();
            });
        });
    </script>
</head>
<body>
    <h2>${gallery.galleryName} 예약</h2>

    <form method="post" action="reservation/confirm">
        <input type="hidden" name="galleryID" value="${selectedExhibition.galleryID}">
        <input type="hidden" name="exhibitionID" value="${selectedExhibition.exhibitionID}">
        <input type="hidden" name="exhibitionName" value="${selectedExhibition.exhibitionName}">

        <!-- 기타 예약 정보 입력 필드 추가 -->

        <label for="exhibitionSelect">전시 선택:</label>
        <select id="exhibitionSelect" name="exhibitionID" onchange="updatePrice()">
            <c:forEach var="exhibition" items="${listExhibition}">
                <option value="${exhibition.exhibitionID}">
                    ${exhibition.exhibitionName} - ${exhibition.price}원
                </option>
            </c:forEach>
        </select>

        <label for="quantity">인원 수:</label>
        <input type="number" id="quantity" name="reservationNumber" min="1" value="1" onchange="updatePrice()">
        
        <p>총 가격: <span id="totalPrice">${selectedExhibition.price}</span></p>

        <button type="submit">결제하기</button>
    </form>
</body>
</html>
