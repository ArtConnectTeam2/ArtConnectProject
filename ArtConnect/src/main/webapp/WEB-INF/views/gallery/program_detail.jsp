<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.multi.artConnect.gallery.GalleryVO"%>
<%@ page import="com.multi.artConnect.gallery.ProgramVO_gallery"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>

<html>

<head>

<title>:: 프로그램 상세 페이지 ::</title>

<%@ include file="/header.jsp"%>

<!-- formatDate 영어로  -->
<fmt:setLocale value="en_US" />

<style>
strong {
	font-size: 18px;
	color: black;
}

p{
	color: black;
}

.rounded-container {
    border: 2px solid #333; /* 테두리 스타일 설정 */
    border-radius: 10px; /* 테두리의 모서리를 둥글게 만듭니다. */
    padding: 20px; /* 적절한 패딩 값 적용 */
    width: 1170px;
    background-color: white;
}

#viewMoreButton {
    font-size: 1.3em;
    margin-left : 0px;
}

</style>

<script>
	var userLang = navigator.language || navigator.userLanguage;
</script>

</head>

<body>
	<!-- nav, logo UI가 달라질 경우 이 부분을 변경해주세요 -->
	<%@ include file="/nav.jsp"%>

	<!-- main -->

	<main role="main-inner-wrapper" class="container">

		<!-- work details -->
		<div class="work-details" style="margin-left: 0; padding: 0;">
			<div class="row rounded-container">
				<h2 style="padding-left : 15px; font-size: 36px;" >${program.programTitle}</h2>
				<div class="col-xs-12 col-sm-12 col-md-5">
					<header role="work-title">

						<div style="margin-top: 20px;">
						<img src="${pageContext.request.contextPath}/resources/img/program/${program.programImg}"
						alt="${program.programID} 이미지" style="width: 500px; height: 500px;"class="img-responsive" />
						</div>
					</header>
				</div>


				<div class="col-xs-12 col-sm-12 col-md-7" style="margin-top: 0px;">
					<section>
						<h2 style="margin-left: 0px; font-size: 36px;  padding-top : 10px;">프로그램 정보</h2>
						
						<p style="font-size: 25px; line-height: 1.5; color : black;">
							<strong style="font-size: 25px;">프로그램 대표 아티스트 : </strong> ${program.artist} <br /> 
							<strong style="font-size: 25px;">프로그램 전시실 : </strong> ${program.programRoom} <br /> 
							<strong style="font-size: 25px;">프로그램 전시기간 : </strong>
						<fmt:formatDate value="${program.programStart}"
							pattern="yyyy.MM.dd" />
						-
						<fmt:formatDate value="${program.programEnd}"
							pattern="yyyy.MM.dd" />
						<br/> 
						<strong style="font-size: 25px;">성인 요금 : </strong> ${program.priceAdult}원 <br />
						<strong style="font-size: 25px;">청소년 요금 : </strong> ${program.priceTeenager}원 <br /> 
						<strong style="font-size: 25px;">아동 요금 : </strong> ${program.priceChild}원 <br /> 
						<strong style="font-size: 25px;">프로그램 문의처 : </strong>${program.programTel}<br/><br>
						<strong style="font-size: 25px;">프로그램 예약 </strong><br /> 
						
						<a href="${pageContext.request.contextPath}/reservation/reservation/${program.galleryID}/${program.programID}">
							<button id="viewMoreButton" class="btn btn-primary">예약하기</button>
						</a>
						
						</p>
					</section>
				</div>
			</div>
		</div>

<br>
<br>
<br>
<br>
<br>
			<div class="work-explain rounded-container" style="margin-left:-15px;">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<header role="work-title" style="text-align: left;">
							<h2 style="margin-left: 0px; font-size: 36px;">프로그램 설명</h2>
						</header>
						
						<br>
				<%-- 프로그램 설명을 출력할 부분 --%>
				<c:choose>
					<c:when test="${program.programID eq 1}">
						<p style="font-size: 17px; line-height: 2;">
							<strong style="font-weight: bold; font-size: 18px;">MMCA 현대차 시리즈</strong> 2023
							2023.09.06 ~ 2024.02.25 <br> 
							<strong style="font-weight: bold; font-size: 18px;">김구림</strong> 2023.08.25 ~ 2024.02.12<br> 
							<strong style="font-weight: bold; font-size: 18px;">올해의 작가상</strong> 2023 2023.10.20 ~ 2024.03.31 <br> 
							<strong style="font-weight: bold; font-size: 18px;">프로젝트 해시태그</strong> 2023 2023.11.03 ~ 2024.04.07<br> 
							<br>
							4개의 프로그램을 한번에 관람할 수 있는 국립현대미술관 서울지점 통합 관람권
						</p>
					</c:when>

					<c:when test="${program.programID eq 2}">
						<p style="font-size: 17px; line-height: 2;">
							<strong style="font-weight: bold; font-size: 18px;">갈라 포라스-김(2전시실)</strong>
<br>
							갈라 포라스-김은 LA와 런던을 오가며 활동하는 작가이다. <br> 
							작가는 사회적이고 정치적인 컨텍스트가 언어학과 역사학, 보존의 영역에 있는 소리, 언어, 역사와 같은 무형의 유산을 규정하고, 정의하는 방식에 관심을 가지고 있다. <br>
							작가의 작업은 박물관이나 미술관과 같은 기관이나 제도가 역사적으로 계승되어 온 관습과 형식을 만들어 가는 과정을 살펴보는 한편, 유물과 오브제가 그들이 위치한 장소의 맥락을 설명하는 방식을 살펴본다. <br>

<br> 
							<strong style="font-weight: bold; font-size: 18px;">전소정(2전시실)</strong> <br> 
							전소정은 영상, 사운드, 조각, 설치, 퍼포먼스, 책 등 다양한 매체로 작업해 왔다. <br> 
							개인전 심경의 변화 As You Like It (2010, 인사미술공간)와 이면의 이면 The Other Side of the Other Side (2012, 갤러리 팩토리)에서는 무언가에 사로잡힌 개인들, 사건에 가려진 개인들의 이야기를 꺼내놓는 방법을 고민하기 시작했고, 개인전 폐허 Ruins(2015, 두산갤러리)에서는 일상의 전문가들을 통해 예술하는 태도에 대해 질문을 던졌다.<br>
							이 무렵부터 음악, 무용, 비평, 건축, 문학 등 다양한 분야의 협업자들과 자신의 질문을 공유하고 감각적 확장을 적극적으로 시도하며 이동에 관한 사유를 담은 키스 미 퀵 Kiss Me Quick(2017, 송은아트스페이스), 동명의 이상의 시를 매개로 동시대의 속도감에 관한 오 마가쟁 드 누보떼 Au Magasin de Nouveauts(2020, 아뜰리에 에르메스) 등의 개인전을 열었다.<br>
							빌라 바실리프-페르노리카 펠로우쉽, 에르메스재단 미술상, 광주비엔날레 눈 예술상, 송은미술대상 대상 등을 수상한 바 있다.<br> 
<br>
							<strong style="font-weight: bold; font-size: 18px;">이강승(3전시실)</strong> <br>
							이강승은 로스앤젤레스와 서울을 기반으로 다학제적인 프로젝트를 진행하는 작가이다.<br> 
							작가는 초국가적인 퀴어 역사의 유산, 그 중에서도 퀴어 역사와 미술사가 교차되는 지점에 관심을 두고 있다. <br> 
							이강승의 작업은 LA 해머 미술관(2023)을 비롯해 파리 팔레 드 도쿄(2023), 암스테르담 드 아펠(2023), 뉴욕 휘트니 미술관(2022), 국립현대미술관(2020), 뉴욕 PARTICIPATION INC(2019) 등 여러 국제적인 미술관 전시에서 선보인 바 있다. <br> 
							최근 LA 빈센트 프라이스 미술관(2023), 갤러리 현대(2021), 커먼 웰스 앤 카운슬(2021) 등에서 개인전을 진행하였으며, 뉴욕 뉴 뮤지엄 트리엔날레(2021), 13회 광주 비엔날레(2021) 전시에도 참여하였다. <br> 
							이강승의 작업은 뉴욕 솔로몬 구겐하임 미술관, LA 카운티 미술관, 국립현대미술관, LA 게티 미술관 등에 소장되어 있다.<br>
<br> 
							<strong style="font-weight: bold; font-size: 18px;">권병준(4전시실)</strong> <br>
							권병준은 1990년대 초반 싱어송 라이터로 음악 경력을 시작하였고, 얼터너티브 록에서부터 미니멀 하우스를 포괄하는 6개의 앨범을 발표했다.<br> 
							이후 2000년대부터는 영화 사운드 트랙, 패션쇼, 무용, 연극, 국악 등 다양한 문화영역에서 자신의 음악적 재능을 선보였다. <br> 
							2005년부터 네덜란드에 거주하며 실험적인 전자악기 연구개발기관인 스타임(STEIM)에서 하드웨어 엔지니어로 일하다가 2011년 귀국하여 현재까지 소리와 관련한
							하드웨어 연구자로 활발하게 활동하고 있으며 새로운 악기, 무대장치를 개발, 활용하여 극적 장면을 연출함으로써 음악, 연극, 미술을 아우르는 뉴미디어 퍼포먼스를 기획 연출하고 있다. <br> 
							엠비소닉 기술을 활용한 입체음향이 적용된 소리기록과 전시공간 안에서의 재현 관련 기술 개발에 선두적으로 참여하고 있으며 현재 로봇을 이용한 기계적 연극을 연출하고 있다.<br> 
							
<br> * 권병준 오묘한 진리의 숲(2023) 은 매일 오후 2시에서 5시까지 감상하실 수 있습니다.<br> 

<br> * 4 전시실(권병준)은 매주 수, 토 오후 6-9시 사이에 작품 보수가 진행됩니다.
						</p>
					</c:when>

					<c:when test="${program.programID eq 3}">
						<p style="font-size: 17px; line-height: 2;">
							MMCA 현대차 시리즈는 한국 현대미술의 지평을 넓히고 한국의 주요 작가들의 국제적 위상을 높이는 계기를 마련하고자 2014년부터 마련된 연례 프로그램으로, 10회째를 맞이한 2023년에는 작가 정연두가 선정되었다. <br>
							정연두는 평범한 사람들의 이야기와 역사적 사건을 소재로 기억과 재현, 현실과 이미지, 거대서사와 개별서사의 역설적 관계에 대해 질문을 던지는, 퍼포먼스와 연출 중심의 사진과 영상, 설치 작업으로 국내외 미술계의 조명을 받아왔다. <br>
							특히 2014년 이후에는 전쟁, 재난, 이주, 국가, 이데올로기와 같은 거시적 내러티브를 개인 서사 및 신화와 설화 등을 통해 재구성하고, 시와 음악, 연극의 언어를 경유하면서 다큐멘터리적 서사가 조직되는 과정에서 드러나지 않은
							공백들과 다층적인 목소리에 주목하였다.<br> 
<br> 
							이번 MMCA 현대차 시리즈 2023 : 정연두‒백년 여행기에서 작가가 주목한 서사는 20세기 초 멕시코로 건너간 한인 디아스포라이다. <br>
							전시명인 ‘백년 여행기’는 인천 제물포항을 떠나 40여 일의 항해 끝에 멕시코 유카탄 주의 수도 메리다에 도착했던 백여 년 전의 한인 이주기를 의미한다. <br> 
							‘역사’로서의 백 년 전 이주기에 대한 작가의 관심은 멕시코에서는 노팔 선인장으로 알려져 있고, 한국에서는 백년초라고 불리는 식물의 ‘설화’적 여행기에서 출발했다. <br>
							멕시코에서 태평양을 건너와 제주도에 뿌리내렸다고 전해져 내려오는 백년초 이동 설화에서 작가는 한국과 멕시코를 잇는 식물 및 사람의 백년 여행기라는 소재를 떠올리게 되었다. <br> 
							이때 식물의 ‘이식’은 뿌리가 뽑혀 다른 시공간으로 이동한 한인들의 ‘이주’와 접속한다.<br> 
							그리고 이는 제국, 식민, 노동, 역사를 둘러싼 기존의 이주 서사 이외의 제3의 이야기를 열어주는 통로가 된다.<br> 
<br> 
							4점의 신작을 포함하여 총 5점의 영상, 설치, 사운드 작품을 선보이는 이번 전시는 시공간을 초월하여 서로 무관해 보이는 존재를 연결하는 가능성의 영역으로 ‘이주와 이국성’의 주제에 다가간다. <br> 
							나아가 전시는 이질성과 친숙함의 관계, 탈구된 시공간 경험에 대한 상상, 이주를 둘러싼 세대 간의 문화적·역사적 간극, 그리고 경계를 넘나들며 이동하고 번역되는 존재 등에 대해 생각해보기를 권유한다. <br> 
<br> 
							작가는 2022년부터 올해까지 멕시코를 세 차례 방문하고 한인 이민 후손들을 인터뷰하면서 이민자의 시간과 경험에 최대한 가깝게 다가가고자 하였다. <br> 
							관계 맺기를 중심으로 하는 이러한 작가의 수행성이 멕시코 이주 서사 내부의 미시사를 끄집어내는 관계적 통로라면, 텍스트, 퍼포먼스, 영상, 사운드, 무대적 설치 등이 혼합된 복합 매체 작업은 이주 역사라는 고정된 서사 아래 숨겨진 다양한 역설과 모순의 상황 및 혼종성의 맥락을 표층으로 떠오르게 하는 시각적 장치이다.<br>
							MMCA 현대차 시리즈 2023: 정연두‒백년 여행기를 통해 멕시코 이민 서사를 살아 있는 문화 생성지대로 재방문하고, 낯섦에 대한 공감의 지대를 넓혀갈 수 있기를 기대한다.<br>
						</p>
					</c:when>

					<c:when test="${program.programID eq 4}">
						<p style="font-size: 17px; line-height: 2;">
							리솔츠는 ‘생각하는 아름다움’의 가치가 깃든 스킨, 헤어, 바디 케어 제품을 제안합니다.<br> 
							균형된 삶이 가져다 주는 아름다움과 그것을 찾아가는 과정에 대한 공감을 바탕으로 리솔츠만의 리추얼을 설계합니다.<br>
							리솔츠와 비더비는 전시를 통해 여러분에게 매력적인 삶과 아름다움에 대한 이야기를 전합니다. <br> 
							무감각에 길들여진 일상에서 벗어나 자신만의 리추얼을 마련할 수 있는 ‘시티 웰니스’를 만나보세요.<br> 
<br>
							리솔츠는 전시 기간동안 총 2가지 컨셉으로 전시를 진행합니다.<br> 
<br> 
							<strong style="font-weight: bold; font-size: 18px;">Show 1. 균형된 삶의 아름다움(The beauty of a balanced life)</strong><br>
							- Salt : 필요한 것을 더하고, 불필요한 것을 빼다.<br> 
							리솔츠의 소금은 나의 몸에 필요한 것은 더하고 불필요한 것은 빼는, 매력적인 삶을 위한 필수적인 Life Material 입니다. 리솔츠와 함께 나의 균형을 찾아보세요.<br> 
<br>
							<strong style="font-weight: bold; font-size: 18px;">Show 2. 생각하는 아름다움(The beauty of thoughts)</strong><br>
							- Ritual : 내면 깊숙한 곳으로 안내하다.<br>
							리솔츠는 바쁨 속에서 나만을 위한 시간을 생각하고 사유하기 위한 제품과 메시지를 제안합니다. <br> 
							나만의 균형된 감각, 그것을 유지하는 리추얼을 경험해보세요. 리솔츠는 우리를 내면 깊숙한 곳으로 안내합니다.<br>
<br> 
							전시장에는 리솔츠의 모든 제품이 전시되어 있으니 자유롭게 테스트해 보세요. <br>
							리솔츠의 아이덴티티인 ‘소금’으로 구현한 오브제와 다채로운 콘텐츠를 통해 나만의 균형 있는 삶과 아름다움을 만나기를 바랍니다.<br>
						</p>
					</c:when>

					<c:when test="${program.programID eq 5}">
						<p style="font-size: 17px; line-height: 2;">
							대담하고 도발적인 디자인으로 널리 찬사를 받는 세계적인 디자이너 스테판 사그마이스터(Stefan Sagmeister)는 이번 전시에서 과거와 현재의 데이터를 비교해 ‘지금이 더 나은 세상이다’ 라는 긍정적인 메시지를 보여주는 100여점의 작품을 선보입니다.<br> 
							스테판 사그마이스터는 짧게는 50년에서 길게는 200년까지 삶의 질, 기대수명, 죽음, 빈곤, 범죄율, 온실가스 배출 등의 글로벌 이슈와 연관된 유의미한 데이터와 근거자료를 조사하고 이를 바탕으로 디자이너의 시각을 표현한 혼합매체 작품 시리즈를 제작했습니다.<br> 
<br>
							작가는 이러한 객관적인 데이터가 반영된 작품을 통해 장기적인 측면에서 인류는 긍정적인 방향으로 나아가고 있고 세상을 바라보는 관점에 조금의 변화를 주는 것만으로도 세상의 밝은 면을 볼 수 있다고 말합니다.<br> 
							다양한 크기의 회화, 대형 렌티큘러 프린트뿐만 아니라 디지털 캔버스, 의류, 컵, 손목시계 등 데이터를 시각화한 다채로운 디자인 제품들을 선보이는 이번 전시는 DDP(동대문디자인플라자) 전시를 위해 한국의 데이터를 적용해 제작된 ‘서울 에디션’ 작품과 DDP 관람객 수치 데이터로 만든 ‘DDP 에디션’이 국내 최초로 공개되어 더욱 특별합니다.<br>

<br> 
							* 야외작품 We’d rather be ALIVE than DEAD은 2023년 12월31일부로 운영 마감되었습니다.<br> 
<br> 
							* 실내 전시와 더불어 9월부터 잔디언덕에 설치된 공공디자인 작품 ‘We’d rather be alive than dead: 삶은 그 어떤 경우에도 죽음보다 아름답다‘는 작가의 시리즈 중 하나로, DDP(동대문디자인플라자)전시를 위해 특별 기획되었습니다.
						</p>
					</c:when>

					<c:when test="${program.programID eq 6}">
						<p style="font-size: 17px; line-height: 2;">프로그램 설명이 없습니다.</p>
					</c:when>

					<c:when test="${program.programID eq 7}">
						<p style="font-size: 17px; line-height: 2;">
							현대의 한국화는 동양의 전통적 사유체계를 기반으로 다양한 철학적 변주를 보여주고 있습니다. <br> 
							기후 변화, 생태 환경의 파괴 등을 바라보며 인간의 통제 속에 가두려 했던 기존의 사고방식을 재고하여 자연과 공생하는 인간으로서 세계를 어떻게 이해해야 할지의 논재를 고민해야 할 시점입니다.<br>
<br> 
							이러한 현상황에서 동양철학과 전통적인 화법을 계승하며 새로운 매재의 확장을 통해 한국화의 현대적 변용을 보여주고 있는 현대 작가 10인을 초청하여 '2024년 겸재 맥잇기 초청 기획전' 그 첫 번째 서막을 열고자 합니다.<br> 
<br>
							필묵은 단순한 예술적 도구로서의 가치를 넘어 그 자체로 예술정신을 상징한다고 할 수 있습니다.<br> 
							이러한 필과 묵의 정서에 기반해 일관된 창작열을 보여주는 작가들의 창작 정신이 세상과 조우하길 바라는 의미로 '필+묵 사유하는 실천' 전시를 마련하였습니다. <br> 
<br> 
							이번 전시를 통해 한국화의 현주소를 확인하고, 다른 영역과의 통섭을 통하여 현대 한국화의 잠재적 가능성 및 방향성을 모색해 볼 수 있는 소중한 기회가 되기를 기대해 봅니다.<br> 
							나아가 이번 전시가 현대 한국화의 발전에 활력을 불어넣는 기폭제가 되어 K컬처의 새로운 영역을 개척할 수 있는 좌표가 되길 바랍니다.<br>
						</p>
					</c:when>

					<c:when test="${program.programID eq 8}">
						<p style="font-size: 17px; line-height: 2;">
							2022년 7월 26일부터 2023년 3월 12일까지 서울시립 북서울미술관은 관람객 참여형 어린이 전시《서도호와 아이들 : 아트랜드를 개최했습니다. <br> 
							이를 통해 약 14,000명의 어린이들이 만든 61개의 섬으로 이어진 거대한 아트랜드가 탄생하였습니다.<br> 
							서도호 작가와 그의 두 아이들은 집에서 어린이용 점토를 사용해 다양한 동식물이 사는 복잡하고 환상적인 생태계 ‘아트랜드’를 만들었습니다. <br> 
							이러한 아트랜드의 섬들 중 하나가 북서울미술관으로 옮겨져, 이제 미술관에 오는 아이들은 새로운 섬들을 하나씩 이어 나갑니다.<br>
<br> 
							이번 2023년 5월부터는 기존의 아이들이 만든 섬들을 지하 세계로 돌리고 일부를 다시 새롭게 이어 아이들이 지속적으로 아트랜드를 확장에 참여할 수 있도록 하는 상설전 서도호와 아이들 : 아트랜드를 준비하였습니다. <br>
<br> 
							약 1년의 기간 동안 자유롭고 지속적으로 아트랜드에 방문하여 이 아트랜드가 어디까지 계속 뻗어나갈 수 있는지 함께 참여해 주시고 지켜봐 주시길 바랍니다. <br>
						</p>
					</c:when>

					<c:when test="${program.programID eq 9}">
						<p style="font-size: 17px; line-height: 2;">
							2023 유휴공간 프로젝트 빛나는 방, 속삭이는 거울(Glowing Chambers, Whispering Mirrors)새롭게 조성되어 시민들의 활용도가 높은 북서울미술관 2층 ‘라운지’와 3층 아트라이브러리 유휴공간에 람한 작가의 작품을 전시함으로써 서울시립미술관의 소장품 향유 기회를 확대합니다.<br> 
<br> 
							<strong style="font-weight: bold; font-size: 18px;">유휴공간 프로젝트</strong><br> 
<br>
							아파트 숲 사이 공원에 위치한 북서울미술관의 다양한 진입로 및 관내외 유휴공간을 동시대 작가들의 작품을 통해 활성화시키는 프로젝트이다. <br> 
							미술관과 지역사회의 공간적 접점인 유휴공간에 다양한 작품을 설치하여 시민의 일상적 삶에 감각적, 물질적으로 개입하고 미술관의 문턱을 낮추고 문화를 향유할 수 있는 기회를 다변화한다. <br>
						</p>
					</c:when>

					<c:when test="${program.programID eq 10}">
						<p style="font-size: 17px; line-height: 2;">
							성북구립미술관은 2022년 7월 30일부터 2024년 6월 30일까지 미술관 외부에 위치한 복합문화공간 ‘거리갤러리’에서 공공미술 프로젝트로 기획된 조각가 정현의 『시간의 초상을 개최한다.<br> 
<br>
							2018년 첫 개관한 성북구립미술관 거리갤러리에서는 최정화, 김승영 등 한국을 대표하는 현대미술가들의 다채로운 설치 작품들을 지속적으로 선보여왔다. <br> 
							성북구립미술관은 이와 같은 현대 작가들의 작품 세계를 통해 역사와 문화가 공존하는 성북동의 시간과 공간 그리고 다양한 사람들을 아우르는 열린 뮤지엄으로서 거리갤러리만의 정체성과 색깔을 형성해오고 있다.<br> 
<br> 
							올해 성북구립미술관 공공미술 프로젝트의 세 번째 참여작가로 선정된 정현은 낡고 버려진 존재들에 응축된 힘과 시간의 흔적을 통해 인간과 자연의 본질을 성찰해온 조각가이다. <br>
							그는 철도의 침목, 고한옥의 대들보 등 폐기된 사물들과 아스팔트 콘크리트, 석탄, 석재 등의 물질을 통해 그 속에 깃든 시간의 기억을 발견하고 그것을 하나의 조각으로 형상화한다.<br> 
<br> 
							이번 전시에서 정현은 성북동의 옛 풍광과 예술가들의 삶을 품은 거리갤러리 공간 위에 시간의 흔적을 겹겹이 새긴 존재들을 펼쳐 보인다. <br> 
							침목, 파쇄공, 폐철근을 이어 붙인 조형물 등 ‘삶’이라는 터널을 통과하며 각각의 존재들이 맞닥뜨린 시련과 인고의 흔적들은 정현의 손과 몸을 통해 또 다른 시간의 초상으로 새롭게 소생된다.<br>
<br>
							본 전시를 통해 과거와 현재가 공존하는 거리갤러리 공간에 펼쳐진 시간의 초상들을 조우하며 우리는 인간과 자연 안에 내재된 영겁의 시간과 생명력을 새롭게 느껴볼 수 있을 것이다.<br>
						</p>
					</c:when>
					<c:otherwise>
						<p style="font-size: 17px;">프로그램 설명이 없습니다.</p>
					</c:otherwise>
				</c:choose>
						
					</div>
				</div>
			</div>


		<!-- work details -->

	</main>

	<!-- main -->

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

	<!-- footer -->


	<!-- Java Script -->
	<%@ include file="/alljs.jsp"%>

</body>

</html>