<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.multi.artConnect.gallery.GalleryVO" %>
<%@ page import="com.google.gson.Gson" %>

<!DOCTYPE html>
<html>

<head>

<title>:: 미술관 조회 및 검색 ::</title>

<%@ include file="/header.jsp" %>

<style>
/* 체크박스 스타일 */
.form-check-input {
    /* 원하는 스타일 속성을 추가하세요 */
    width: 30px; /* 체크박스의 너비 */
    height: 30px; /* 체크박스의 높이 */
    margin-right: 30px; /* 체크박스 간격 조정 */
    display: inline-block; /* inline-block으로 설정하여 화면에 표시 */
    border: 2px solid #FB5353; /* 테두리 스타일 설정 */
}

.form-check-input:checked {
    background-color: #FB5353; /* 체크됐을 때의 배경색 설정 */
    border: 2px solid #FB5353; /* 체크됐을 때의 테두리 스타일 설정 */
}

.form-check-input:not(:checked) {
    background-color: transparent; /* 체크되지 않았을 때의 배경색 설정 */
}

.gallery-location-label {
    font-size: 18px; /* 키우고자 하는 글자 크기로 설정하세요 */
    font-weight: bold; /* 글자를 볼드체로 설정할 수도 있습니다 */
}

.search-form {
        margin-bottom: 50px;
         font-size: larger; 
}

.rounded-container {
    border: 2px solid #333; /* 테두리 스타일 설정 */
    border-radius: 10px; /* 테두리의 모서리를 둥글게 만듭니다. */
    padding: 20px; /* 적절한 패딩 값 적용 */
    width: 1170px;
    background-color: white;
}

#filteredData {
  display: flex;
  flex-wrap: wrap;
  width: 1170px;
}

</style>

</head>

<body>

<%@ include file="/nav.jsp" %>

   <!-- main -->

   <main role="main-inner-wrapper" class="container">
      <div class="row">
         <section class="col-xs-12 col-sm-6 col-md-6 col-lg-6 ">

            <article role="pge-title-content" style="padding-left : 0px;">

               <header style="padding-top:0px;">

                  <h2>
                     <span>Art Gallery </span>Inquiry & Search
                  </h2>

               </header>

               <p style="font-size: 25px;">미술관 조회 및 검색을 할 수 있습니다</p>

            </article>

         </section>
<div class="rounded-container">
         
         <div class="clearfix"></div>

<div class="search-form" style="margin-top: 20px;">
    <form action="${pageContext.request.contextPath}/gallery/search2" method="GET">
        <div style="display: flex; align-items: center; justify-content: space-between; max-width: 400px; margin: 0 auto; text-align: center; border: 2px solid #333; border-radius: 5px; overflow: hidden;">
            <input type="text" name="galleryName" placeholder="Search by Gallery Name" required style="flex: 1; padding: 10px; text-align: center; width: 100%; border: none; outline: none;">
            <button type="submit" style="background-color: #333; color: #fff; padding: 10px 20px; border: none; cursor: pointer;">Search</button>
        </div>
    </form>
    <a href="${pageContext.request.contextPath}/gallery/search"  style="text-decoration: none;"></a>
</div>

         <div class="form-check" style="padding-left : 15px;">
            <span class="gallery-location-label" style="font-size: 25px;">Gallery Location  </span>
                <input class="form-check-input check" type="checkbox" value="서울" id="flexCheckSeoul" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckSeoul" style="font-size: 20px; margin-bottom:0px;">서울시</label>
            </div>
            
            <div class="form-check" style="padding-left : 15px;">
            <span class="gallery-location-label" style="font-size: 25px;">Open Day  </span>
                <input class="form-check-input check" type="checkbox" value="Monday" id="flexCheckMonday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckMonday" style="font-size: 20px; margin-bottom:0px;">월요일</label>
                
                <input class="form-check-input check" type="checkbox" value="Tuesday" id="flexCheckTuesday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckTuesday" style="font-size: 20px; margin-bottom:0px;">화요일</label>
                
                <input class="form-check-input check" type="checkbox" value="Wednesday" id="flexCheckWednesday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckWednesday" style="font-size: 20px; margin-bottom:0px;">수요일</label>
                
                <input class="form-check-input check" type="checkbox" value="Thursday" id="flexCheckThursday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckThursday" style="font-size: 20px; margin-bottom:0px;">목요일</label>
                
                <input class="form-check-input check" type="checkbox" value="Friday" id="flexCheckFriday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckFriday" style="font-size: 20px; margin-bottom:0px;">금요일</label>
                
                <input class="form-check-input check" type="checkbox" value="Saturday" id="flexCheckSaturday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckSaturday" style="font-size: 20px; margin-bottom:0px;">토요일</label>
                
                <input class="form-check-input check" type="checkbox" value="Sunday" id="flexCheckSunday" style = "margin-top : 0;">
                <label class="form-check-label" for="flexCheckSunday" style="font-size: 20px; margin-bottom:0px;">일요일</label>
            </div>
</div>	
<br>
<br>
<br>
<br>
            <div id="filteredData"  style="margin-top:15px;">
                <!-- 여기에 필터링된 데이터를 표시할 div -->
            </div>

<script>

$(document).ready(function() {
    // 초기에는 모든 갤러리 데이터를 가져와서 표시
    fetchAllGalleries();

    // 체크박스가 변경될 때마다 필터링된 데이터 가져와서 표시
    $('.check').on('change', function() {
        console.log('filterData is called');
        var filterValues = getCheckedCheckboxValues();

        if (filterValues.length === 0) {
            // 만약 아무 체크박스도 선택되지 않았다면 전체 갤러리 데이터 표시
            fetchAllGalleries();
        } else {
            // 필터링된 데이터를 가져오기 위한 Ajax 호출
            fetchFilteredData(filterValues);
        }
    });

    function getCheckedCheckboxValues() {
        return $('.form-check input[type="checkbox"]:checked').map(function() {
            return this.value;
        }).get();
    }

    function fetchFilteredData(filterValues) {
        $.ajax({
            url: "filterData",
            data: {
                filterValues: filterValues
            },
            traditional: true,
            success: function(jsonarr) {
                console.log(jsonarr);
                displayFilteredData(jsonarr);
            },
            error: function(err) {
                console.error("데이터 필터링 중 오류 발생:", err);
            }
        });
    }

    function fetchAllGalleries() {
        // 전체 갤러리 데이터 가져오기 위한 Ajax 호출
        $.ajax({
            url: "allGalleries",
            success: function(jsonarr) {
                console.log(jsonarr);
                displayFilteredData(jsonarr);
            },
            error: function(err) {
                console.error("전체 갤러리 데이터 가져오기 중 오류 발생:", err);
            }
        });
    }

    function displayFilteredData(jsonarr) {
        console.log('displayFilteredData is called with data:', jsonarr);
        var filteredDataDiv = $('#filteredData');

        filteredDataDiv.empty(); // 이전 내용 지우기
        filteredDataDiv.append('<div class="rounded-container">');

        jsonarr.forEach(function(gallery) {
            console.log(gallery);
            console.log(gallery.galleryImg);

            var galleryDetailUrl = '${pageContext.request.contextPath}/gallery/detail?galleryID=' + encodeURIComponent(gallery.galleryID);

            appendGalleryThumbnail(filteredDataDiv, galleryDetailUrl, gallery.galleryImg, gallery.galleryName);
        });
        filteredDataDiv.append('</div>');
    }

    function appendGalleryThumbnail(container, url, imgSrc, galleryName) {
        container.find('.rounded-container').append(
            '<div class="thumbnails-pan">'  +
            '<section class="col-xs-12 col-sm-4 col-md-4 col-lg-4 " style="margin-bottom: 30px;">' +
            '<figure>' +
            '<a href="' + url + '">' +
            '<img src="${pageContext.request.contextPath}/resources/img/gallery/' + imgSrc + '" alt="이미지" class="img-responsive" />' +
            '</a>' +
            '<figcaption>' +
            '<h3>' + galleryName + '</h3>' +
            '<h5>View more</h5>' +
            '</figcaption>' +
            '</figure>' +
            '</section>' +
            '</div>'
        );
    }
});
      // 초기에 모든 데이터 로딩
   </script>

      </div>

   </main>

   <!-- footer -->

   <footer role="footer">

      <!-- nav -->

      <nav role="footer-nav">

         <ul>

            <li><a href="index.html" title="Work">Work</a></li>

            <li><a href="about.html" title="About">About</a></li>

            <li><a href="blog.html" title="Blog">Blog</a></li>

            <li><a href="contact.html" title="Contact">Contact</a></li>

         </ul>

      </nav>

      <!-- nav -->

      <ul role="social-icons">

         <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

         <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>

         <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>

         <li><a href="#"><i class="fa fa-flickr" aria-hidden="true"></i></a></li>

      </ul>

      <p class="copy-right">
         Shared by <i class="fa fa-love"></i><a
            href="https://bootstrapthemes.co">BootstrapThemes</a>
      </p>

   </footer>

<%@ include file="/alljs.jsp" %>

</body>

</html>