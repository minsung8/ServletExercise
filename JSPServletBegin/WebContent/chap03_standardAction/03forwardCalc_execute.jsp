<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function goSubmit() {
		var frm = document.myFrm;
	      var num1 = frm.firstNum.value.trim();
	      var num2 = frm.secondNum.value.trim();
	      
	      if(num1=="" || num2=="") {
	         alert("값을 입력하세요!!");
	         frm.firstNum.value = "";
	         frm.secondNum.value = "";
	         frm.firstNum.focus();
	         return; // 종료
	      }
	      
	      var regExp = /^[0-9]{1,5}$/;
	      
	      if( !( regExp.test(num1) && regExp.test(num2) ) ) {
	         alert("값을 입력하세요!!");
	         frm.firstNum.value = "";
	         frm.secondNum.value = "";
	         frm.firstNum.focus();
	         return; // 종료
	      }
	      
	      frm.action = "<%=ctxPath%>/03forwardCalc.do";
	   //   frm.method = "GET"; // method를 명기하지 않으면 기본은 "GET" 이다.
	      frm.submit();
	};
	
</script>

</head>
<body>
   <h2>입력한 두개의 수 사이를 누적한 값 알아오기</h2>
   
   <form name="myFrm">
      <p>
         첫번째 수 : <input type="text" name="firstNum" size="5" maxlength="5" /><br/>
         두번째 수 : <input type="text" name="secondNum" size="5" maxlength="5" /><br/>
         <button type="button" onclick="goSubmit()">계산하기</button> 
      </p>
   </form>
</body>
</html>