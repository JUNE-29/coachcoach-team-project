<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
	transition: 0.4s;
}

.active, .accordion:hover {
	background-color: #ADCDFD;
}

.panel {
	padding: 0 18px;
	display: none;
	background-color: white;
	overflow: hidden;
}
</style>
</head>
<body>

	<h2>자주묻는 질문</h2>

	<button class="accordion">Q.코치코치는 어떤 회사인가요?</button>
	<div class="panel">
		<p>- 트레이닝을 원하는 회원과 코치를 연결해주는 서비스입니다.</p>
	</div>

	<button class="accordion">Q.수업은 어디서 진행되나요?</button>
	<div class="panel">
		<p>- 집, 근처 공원, 오피스 등 회원님이 편한 곳에서 온라인,오프라인으로 PT수업이 가능합니다.</p>
	</div>

	<button class="accordion">Q.코치는 어떻게 선발되나요?</button>
	<div class="panel">
		<p>- 코치코치의 내부 규정에 적합한 코치를 사전 심사한 후, 홈핏팀과 직접 대면 미팅을 진행합니다. 코치의 경력과
			자격증을 검토하고, 진행 매뉴얼에 대해 교육 합니다. 이후 코치가 제출한 필수 서류를 검수하고 확인하는 과정을 거치고, 실제
			수업을 받은 회원님께 피드백을 받아 코치를 지속해서 관리합니다. 홈핏은 계속해서 코치들의 신뢰도를 높일 수 있는 검증
			시스템을 만들어 갈 것을 약속드립니다.</p>
	</div>

	<button class="accordion">Q.비용이 얼마인가요?</button>
	<div class="panel">
		<p>- 비용은 프로그램 목적과 인원에 따라 가격이 다릅니다. 정확한 비용은 프로그램 상세 페이지의 “비용”란을
			참고해주세요. ※ 첫 체험은 39,000원에 가능한 이벤트를 진행 중입니다.</p>
	</div>

	<button class="accordion">Q.어떤 목적의 운동이 가능한가요?</button>
	<div class="panel">
		<p>- 다이어트와 근력 향상, 스트레스 해소, 바른 체형을 위한 신체 정렬, 산전/산후 전문 관리, 통증 완화,
			기능회복이 모두 가능합니다..</p>
	</div>

	<button class="accordion">Q.결제 후 환불이 가능한가요?</button>
	<div class="panel">
		<p>- 네, 가능합니다. 환불을 원하실 경우 고객센터로 연락해주시길 바랍니다. 단, 환불 시 발생하는 위약금은 아래와
			같습니다. 첫 수업 진행 전 : 배상 책임 없음 첫 수업 진행 후 : 전체 계약 금액의 10% 배상.</p>
	</div>

	<button class="accordion">Q.코치가 불성실한 경우 어떻게 하나요?</button>
	<div class="panel">
		<p>- 코치가 빈번하게 수업을 취소, 지각하는 등 불성실한 태도로 임한다면 이는 중대한 위반 사항으로 규정하고
			있습니다. 코치님의 불성실한 태도를 경험하셨다면 고객센터로 알려주세요. 저희 코치팀이 더 좋은 환경에서 수업받으실 수 있도록
			도와드리겠습니다.</p>
	</div>

	<button class="accordion">Q.코치 지원 자격은 어떻게 되나요??</button>
	<div class="panel">
		<p>- 코치로 활동하기 위해서 3년 이상 경력과 3개 이상 자격증이 있으셔야 합니다.</p>
	</div>

	<button class="accordion">Q.어떤 순서로 선발이 되나요?</button>
	<div class="panel">
		<p>- 코치 지원 페이지를 통해 지원서를 작성해주시면 사전심사를 거쳐서 연락드리고 있으며, 이후 대면 미팅과 서류
			제출을 거친 이후 정식 코치로 활동하실 수 있습니다.</p>
	</div>

	<button class="accordion">Q.수업 주기는 어떻게 정하나요?</button>
	<div class="panel">
		<p>- 수업 주기는 원하시는 운동 목적과 몸 상태에 따라서 선택 가능합니다. 다만 본 프로그램 이용권에 따라서 아래와
			같은 특징이 있으니 코치님과 상담 시에 해당 내용에 대해 구체적으로 상담 나눠보시고 결정해보세요. 1) 정기 운동 프로그램:
			월 1회 결제 후 주 1회씩 월 4회 진행. 장기간 꾸준히 진행하고 싶은 분. 2) 단기 효과 프로그램: 횟수권 결제 후
			차감 형식으로 진행. 일주일에 2회 이상 수업하며, 단기간에 빠른 효과를 원하시는 분.</p>
	</div>


	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.display === "block") {
					panel.style.display = "none";
				} else {
					panel.style.display = "block";
				}
			});
		}
	</script>

</body>
</html>


