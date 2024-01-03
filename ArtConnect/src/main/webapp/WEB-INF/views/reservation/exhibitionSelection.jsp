<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
	var selectedExhibition;
	$(document).ready(function() {

		// 전시 목록 선택 시
		$(document).on('click', '.exhibition-row', function() {
			// 이전에 선택한 전시가 있다면 초기화
			if (selectedExhibition) {
				selectedExhibition.removeClass("selected");
				selectedExhibition.find('.checkbox').prop('checked', false);
			}

			// 선택한 전시로 업데이트
			selectedExhibition = $(this);
			selectedExhibition.addClass("selected");

			// 체크박스 상태 토글
			var checkbox = selectedExhibition.find('.checkbox');
			checkbox.prop('checked', !checkbox.prop('checked'));

			// 선택한 전시에 대한 예약 폼 초기화
			updateReservationForm();
		});

		// 체크박스 클릭 시 이벤트 처리
		$(document).on('click', '.checkbox', function(event) {
			event.stopPropagation(); // 이벤트 전파 방지

			// 선택한 전시로 업데이트
			selectedExhibition = $(this).closest('.exhibition-row');

			// 선택한 전시에 대한 예약 폼 초기화
			updateReservationForm();
		});

		// 인원 수 변경 시 가격 업데이트
		$(".reservationNumber").on("input", function() {
			updateTotalPrice();
		});

		// 초기화
		updateReservationForm();
	});
	function updateTotalPrice() {
		// 선택한 전시가 없으면 함수 종료
		if (!selectedExhibition) {
			return;
		}

		var price = selectedExhibition.find(".price").text();
		var reservationNumber = parseInt($("#reservationNumber").text());
		var totalPrice = price * reservationNumber;

		// 총 가격 표시
		$(".totalPrice").text("총 가격: " + totalPrice + "원");

		// 예약 폼에 선택한 가격 및 인원 수 입력
		$("input[name='galleryID']").val(
				selectedExhibition.find(".galleryID").text());
		$("input[name='exhibitionID']").val(
				selectedExhibition.find(".exhibitionID").text());
		$("input[name='reservationNumber']").val(reservationNumber);
		$("input[name='totalPrice']").val(totalPrice);
	}

	function updateReservationForm() {
		// 선택한 전시가 없으면 함수 종료
		if (!selectedExhibition) {
			return;
		}

		// 선택한 전시에 대한 예약 폼 초기화
		currentReservationNumber = 0;
		$("#reservationNumber").text(currentReservationNumber);
		updateTotalPrice();
	}

	function decreaseReservationNumber() {
		if (currentReservationNumber > 0) {
			currentReservationNumber--;
			updateReservationNumber();
		}
	}

	function increaseReservationNumber() {
		currentReservationNumber++;
		updateReservationNumber();
	}

	function updateReservationNumber() {
		// 선택한 전시가 없으면 함수 종료
		if (!selectedExhibition) {
			return;
		}

		$("#reservationNumber").text(currentReservationNumber);
		updateTotalPrice();
	}
</script>
</head>
<body>
	<div style="position: relative;">
		<h2>전시 목록</h2>

		<c:choose>
			<c:when test="${not empty listExhibition}">
				<table border="1">
					<thead>
						<tr>
							<th>선택</th>
							<th>전시 이름</th>
							<th>전시 기간</th>
							<th>전시실</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="exhibition" items="${listExhibition}">
							<tr class="exhibition-row">
								<td><input type="checkbox" name="exhibitionRadio"
									class="checkbox"></td>
								<td>${exhibition.exhibitionName}</td>
								<td>${exhibition.exhibitionPeriod}</td>
								<td>${exhibition.exhibitionRoom}</td>
								<td class="price">${exhibition.price}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<p>해당 갤러리에 대한 전시가 없습니다.</p>
			</c:otherwise>
		</c:choose>

		<!-- 인원 수 및 총 가격 표시 -->
		<div>
			<table>
				<tr>
				<td><label for="reservationNumber">인원 수 :</label></td>
				<!-- - 버튼 -->
				<td><button type="button" class="round-button"
					onclick="decreaseReservationNumber()">-</button>
				<!-- 인원 수 표시 -->
				<span id="reservationNumber" class="reservationNumber">0</span>
				<!-- + 버튼 -->
				<button type="button" class="round-button"
					onclick="increaseReservationNumber()">+</button></td>
				<td><span class="totalPrice">총 가격: 0원</span></td>
				</tr>
			</table>
		</div>
		<a
			href="${pageContext.request.contextPath}/reservation/${listExhibition[0].galleryID}"
			class="reservation-button">예약하기</a>
		<!-- 예약 폼 추가 (숨김) -->
		<form action="<%=request.getContextPath()%>/reservation/confirm"
			method="post" style="display: none;">
			<input type="hidden" name="galleryID" value=""> <input
				type="hidden" name="exhibitionID" value=""> <input
				type="hidden" name="reservationNumber" value="0"> <input
				type="hidden" name="totalPrice" value="0">
			<button type="submit" class="round-button">예약하기</button>
		</form>
	</div>
</body>
</html>
