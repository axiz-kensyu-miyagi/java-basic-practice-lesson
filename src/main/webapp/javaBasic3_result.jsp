<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください

    // 入力値取得
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String bType = request.getParameter("bloodType");

	if(age == ""){
			age =  "0";
	}
	int ageA = Integer.parseInt(age);
	
    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
  <h1>Java基礎 - 演習問題3</h1>

  <h2>ロボットからの返信</h2>
  <div>
    <!-- 必要に応じて処理を変更してください  -->

	<!--ロボットからの返信１行目-->
    <p>
    <%
    if(name.equals("ロボット")){
    	out.println("こんにちわ！"+name+"さん！私と同じ名前ですね！");
    }else if(name != ""){
    	out.println("こんにちわ！"+name+"さん！");
    }else if(name == ""){
    	out.println("こんにちわ！名無しさん！");
    }
    %>
    </p>

	<!--ロボットからの返信2行目-->
    <p>
	    <%
	    if(ageA == 20){
	    	out.println("私と同い年ですね！");
	    }else if(ageA > 20){
	    	out.println("私よりも" + (ageA-20) + "歳年上ですね！");
	    	}else if(ageA < 20){
	    		out.println("私よりも" + (20-ageA) + "歳年下ですね！");
	    	}
	    %>
    </p>

	<!--ロボットからの返信3行目-->
    <p>
  	  <%
    	switch (bType) {
	    	case "typeA":
	    		out.println("A型ですね！");
    			break;
    		case "typeB":
	    		out.println("B型の人と話すのは初めてです。");
    			break;
    		case "typeAB":
	    		out.println("私の母がAB型です。");
    			break;
    		case "typeO":
	    		out.println("私の父がO型です。");
    			break;
    	}
   	 %>
    </p>
    
  </div>
  <a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>