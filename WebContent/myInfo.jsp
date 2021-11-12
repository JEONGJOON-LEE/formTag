<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- html 주석 => ctrl + shift + / -->
<%-- jsp 주석 --%>

<%-- 
	<%@ ~ %> : 디렉티브		=> 대부분 자동을 입력된다. import 같이 설정에 관련된 정보를 적는다.
	<%! ~ %> : 선언부		=> 프로그램에서 사용할 변수나 메소드를 정의한다. => java 파일로 뽑아내서 사용한다.
	<%= ~ %> : 표현식		=> 변수에 저장된 데이터나 연산결과를 출력한다. => EL(${ ~ })로 대체해서 사용한다.
	<% ~ %>  : 스크립트 릭  => 일반적인 jsp 코드를 적는다. => jstl로 대체해서 사용한다.
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  
	html은 spacebar를 여러번 눌러도 한칸밖에 떨어지지 않고, enter키를 여러번 눌러도 줄이 변경되지 않는다.
	2칸이상 연속해서 띄우려면 &nbsp;를 띄울 칸의 개수만큼 입력하고, 줄을 바꿀때는 <br> 태그를 사용하면 된다.
-->
	myInfo.jsp<br> 
	&nbsp; &nbsp; &nbsp; &nbsp;입니다.<br>

<!--  
	현재 페이지에 입력한 데이터를 특정 페이지로 전송하려면, 전송할 데이터를 입력하는 코드를 <form> ~ </form> 사이에 작성해야 한다.
	action 속성은 전송(submit) 버튼이 클릭되면 form에 입력한 데이터가 전송될 페이지 이름을 쓴다. => "?"만 입력하면 현재 페이지를 의미한다.
	method 속성은 action 페이지로 데이터가 전송될 때 전송되는 정보가 url(주소)창에 표시되는 여부를 지정한다.
	method 속성의 기본값은 get이고, 전송되는 데이터가 url 창에 표시된다. post로 변경하면 전송되는 정보가 url창에 표시되지 않는다.
-->

	<form action="myInfoOK.jsp" method="post">
		<!-- 
			size 속성으로 텍스트 상자의 크기를 지정할 수 있다.
			maxlength 속성으로 텍스트 상자에 입력가능한 최대 문자의 개수를 지정할 수 있다.
			autocomplete 속성으로 자동완성 기능을 해제할 수 있다. "on"이 기본값이고, 자동완성 설정을 의미한다.
		-->
		<label>이름 <input type="text" name="name"></label><br> 
		아이디<input type="text" name="id"><br>
		<!-- input type="password"일 경우 한글을 타이핑해서 입력할 수 없다. -->
		비밀번호 <input type="password" name="pw"><br> 
		나이 <input type="text" name="age"><br>

		<!--
			radio와 checkbox는 같은 그룹끼리 반드시 같은 이름의 name 속성을 지정해야 그룹으로 묶인다.
			checked="checked" 속성을 지정하면 브라우저에 표시될 때 기본값으로 선택 여부를 지정할 수 있다.
			radio와 checkbox는 컨트롤 자체가 화면에 표시되는 기능밖에 없기 때문에 선택했을 때 다음 페이지로 넘겨줄 데이터를 value 속성을 사용해서 넣어줘야 한다. 
			=> value 속성을 지정하지 않으면 1개 이상 선택한 경우 "on"이 넘어가고, 선택하지 않으면 null이 다음 페이지로 넘어간다. 
		  -->
		<hr color="red" size="1" style="width: 30%; " align="left" >
		<fieldset style="width: 120px;">
			<legend>성별</legend>
			<input type="radio" name="gender" value="true">남자 
			<input type="radio" name="gender" value="false">여자<br>
		</fieldset>

		<fieldset style="width: 270px;">
			<legend>취미</legend>
			<input type="checkbox" name="hobbies" value="늦잠자기">늦잠자기 
			<input type="checkbox" name="hobbies" value="운동하기">운동하기 
			<input type="checkbox" name="hobbies" value="게임하기">게임하기<br>
		</fieldset>
		<hr color="red" size="1" style="width: 30%;" align="left">
		
		<!-- 콤보 박스 만들기  -->
		가고싶은 여행지는? <select name="trip" style="">
								<option>괌</option>
								<option>코타키나바루</option>
								<option>다낭</option>
								<option>나트랑</option>
								<option>대만</option>
								<option selected="selected">보라카이</option>
							</select><br><br>

		<!-- 리스트 박스 만들기 -->
		가고싶은 여행지<br> <select name="travel" style="" multiple="multiple" size="6">
							<option>괌</option>
							<option selected="selected">코타키나바루</option>
							<option>다낭</option>
							<option>나트랑</option>
							<option>대만</option>
							<option>보라카이</option>
						</select><br><br> 
		<hr color="red" size="1" style="width: 30%;" align="left">
		
		<!-- 메모박스 만들기 -->
		메모<br>
		<textarea rows="10" cols="60" name="contents" style="resize: none;"></textarea><br>
		
		<!-- 정보보기 제출버튼 만들기 -->
		<input type="submit" value="정보보기">
	</form>


</body>
</html>