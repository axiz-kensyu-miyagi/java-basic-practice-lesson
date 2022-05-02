<%@ page import="util.Utility"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    /* ※todoの部分に処理を追加してください */

    // 入力値を取得
    request.setCharacterEncoding("UTF-8");
    String widthStr = request.getParameter("width");
    String heightStr = request.getParameter("height");
    String btn = request.getParameter("btn");

    double result = 0;

    // todo:要実装

    // Utilityクラス内のメソッドを呼んで結果を取得
	int width = Integer.parseInt(widthStr);
	int height = Integer.parseInt(heightStr);
	//int width = Integer.valueOf(widthStr);
	//int height = Integer.valueOf(heightStr);

    // 三角形、長方形のどちらのボタンを押したかを判断し、
    // 押したボタンに対応するメソッドを呼ぶ
    
     switch(btn){
	     case "triangle":
	    	result =  (double)(height * width) / 2;
	        //result = Math.pow((height * width) / 2);
     		break;
    	 case"rectangle":
  			result = height * width;
    		break;
     }
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題5</title>
</head>
<body>
  <h1>Java基礎 - 演習問題5</h1>

  <h2>計算結果</h2>
  <p>
    面積：<%=String.format("%.1f",result) %><br>
  </p>
  <a href="javaBasic5_input.jsp">戻る</a>
</body>
</html>