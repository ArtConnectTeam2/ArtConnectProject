// 초기 연도, 월, 일
var initial = new Date();
var initialYear = initial.getFullYear();
var initialMonth = initial.getMonth();
var initialDate = initial.getDate();

// 현재 연도, 월, 일
var currentYear = initialYear;
var currentMonth = initialMonth;
var currentDate = initialDate;
	
let prevCell = null; // 클릭한 셀의 스타일 초기화를 위한 전역 변수
let selectedDate = null; // 선택한 날짜를 저장하는 전역 변수

// 달력 클릭 이벤트 함수
function showGalleryTime(cell, cellDate, isActive) {
	
	const week = ["일", "월", "화", "수", "목", "금", "토"];
	const dayOfWeek = week[new Date(cell.dataset.year,
		Number(cell.dataset.month), cellDate).getDay()];
	
	if (isActive && dayOfWeek !== closedDay) {
	
		cell.style.fontWeight = "bold";  // 글씨를 굵게
		cell.style.background = "white";  // 배경을 흰색으로
		cell.style.cursor = "pointer"; // 커서를 포인터로 변경
		
		cell.addEventListener('click', function() {
			const year = this.dataset.year;
			const month = Number(this.dataset.month) + 1; // 1월이 0부터 시작하기 때문에
			const date = this.dataset.date;
			
			if (selectedDate) {
				let prevSelectedCell = document.querySelector(`[data-year='${selectedDate.year}'][data-month='${selectedDate.month}'][data-date='${selectedDate.date}']`);
				if (prevSelectedCell) {
					prevSelectedCell.style.background = "white";
					prevSelectedCell.style.color = "black";
				}
			}
			
			selectedDate = {
				year: this.dataset.year,
				month: Number(this.dataset.month),
				date: this.dataset.date,
				element: this
			};
			
			const dateElement = document.getElementById('date');
			const messageElement = document.getElementById('message');
			dateElement.innerHTML = `${year}-` + (month < 10 ? `0${month}` : month) +
				"-" + (date < 10 ? `0${date}` : date) + ` (${dayOfWeek})`;
			messageElement.innerHTML = gallery.galleryOpentime + "~" +  gallery.galleryClosetime;

			// 이전에 클릭한 셀 스타일 복원을 위한 조건문
			if(prevCell) {
				prevCell.style.background = "white";
				prevCell.style.color = "black";
			}

			// 클릭한 셀의 스타일 변경
			cell.style.background = "black";  // 배경을 검은색으로
			cell.style.color = "white";  // 글씨를 흰색으로

			// 이전에 클릭한 셀 초기화
			prevCell = cell;
		}); // addEventListener
	} else {
		cell.style.background = "lightgray";  // 배경을 옅은 회색으로
		cell.style.cursor = "default";
	}
} // function showGalleryTime
	
// 달력 만드는 함수
function createCalendar(year, month) {

	var firstDay = new Date(year, month, 1); // 이번 달의 첫 날
	var lastDay = new Date(year, month + 1, 0); // 이번 달의 마지막 날
	var lastDayPrevMonth = new Date(year, month, 0); // 전 달의 마지막 날
	var daysInPrevMonth = lastDayPrevMonth.getDate();
	var daysInMonth = lastDay.getDate();
	var startingDay = firstDay.getDay(); // 월의 첫째 날에 대한 요일 (0(일)~6(토))

	var tableBody = document.getElementById("calendar").getElementsByTagName('tbody')[0];
	tableBody.innerHTML = ''; // 이전 내용 초기화

	var date = 1; // 이번 달의 시작 날짜
	var nextDate = 1; // 다음 달의 시작 날짜
		
	// 각 주의 바깥 루프
	for (let i = 0; i < 6; i++) {
		const row = tableBody.insertRow(i);

		// 각 일의 안쪽 루프
		for (let j = 0; j < 7; j++) {
			const cell = row.insertCell(j);

			if (i === 0 && j < startingDay) {
				cell.innerHTML = "";
			} else if (date > daysInMonth) {
				cell.innerHTML = nextDate;

				// 날짜가 다음 달의 날짜인 경우
				var nextMonth = (month === 11) ? 0 : month + 1;
				var nextYear = (month === 11) ? year + 1 : year;
        			
				// data-* 속성 추가
				cell.dataset.year = nextYear;
				cell.dataset.month = nextMonth;
				cell.dataset.date = nextDate;

				var nextDateObj = new Date(nextYear, nextMonth, nextDate);
				var today = new Date(initialYear, initialMonth, initialDate);
				var diffTime = Math.abs(nextDateObj - today);
				var diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

				if (diffDays <= 18 && (nextYear === initialYear && nextMonth === (initialMonth + 1) || nextYear === initialYear + 1 && nextMonth === 0)) {
					showGalleryTime(cell, nextDate, true);
				} else {
					showGalleryTime(cell, nextDate, false);
				}
				
				nextDate++;
			} else {
				cell.innerHTML = date;

				// data-* 속성 추가
				cell.dataset.year = year;
				cell.dataset.month = month;
				cell.dataset.date = date;
					
				// 날짜가 오늘로부터 2주 이내인 경우 클릭 이벤트 추가
				if (year === initialYear && month === initialMonth && date >= initialDate && date <= initialDate + 18) {
					showGalleryTime(cell, date, true);
				} else if (year === initialYear && month === initialMonth + 1 && date <= initialDate + 18 - daysInPrevMonth) {
					showGalleryTime(cell, date, true);
				} else if (year === initialYear + 1 && month === 0 && initialMonth === 11 && date <= initialDate + 18 - daysInPrevMonth) {
					showGalleryTime(cell, date, true);
				} else {
					showGalleryTime(cell, date, false);
				}
				
				// 선택한 날짜가 있다면 스타일 변경
				if (selectedDate && selectedDate.year == cell.dataset.year && selectedDate.month == cell.dataset.month && selectedDate.date == cell.dataset.date) {
					cell.style.background = "black";  // 배경을 검은색으로
					cell.style.color = "white";  // 글씨를 흰색으로
					
					// 선택한 셀 업데이트
					selectedDate.element = cell;
				}
				
        		date++;
        	} // if-else if-else
    	} // for 안쪽 루프
	} // for 바깥 루프
		
	// 달력 헤더에 연도와 월 표시
	document.getElementById("calendar-title").innerText = year + "년 " + (month + 1) + "월";
} // function createCalendar
	
// 달을 변경하는 함수
function changeMonth(increment) {
	currentMonth += increment;

	if (currentMonth < 0) {
		currentMonth = 11;
		currentYear--;
	} else if (currentMonth > 11) {
		currentMonth = 0;
		currentYear++;
	}

	createCalendar(currentYear, currentMonth);
	
	// 달력 업데이트 후 선택한 날짜 스타일 유지
	if (selectedDate) {
		let selectedCell = document.querySelector(`[data-year='${selectedDate.year}'][data-month='${selectedDate.month}'][data-date='${selectedDate.date}']`);
		selectedDate.element.style.background = "black";
		selectedDate.element.style.color = "white";
	}
}

// 이전 달로 이동하는 함수
function changePrevMonth() {
	changeMonth(-1);
}
		
// 다음 달로 이동하는 함수
function changeNextMonth() {
	changeMonth(+1);
}
