<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
  </head>
  
  <body>
   <br/>
   <s:iterator value="#request.bookstocks">
   	<s:property value="title"/> ,<s:property value="bookid"/>, <s:property value="author"/>,<s:property value="publisher"/>,<s:property value="price"/>,<s:property value="introduce"/><br/>
   </s:iterator>
   
   <c:forEach  items="${bookstocks}" var="bookstock">
   	${bookstock.title}, ${bookstock.bookid}, ${bookstock.author}, ${bookstock.publisher}, ${bookstock.price},${bookstock.introduce}<br/>
   </c:forEach>
    <H2 align="center"><a href="<s:url action="book_addUI" namespace="/bookshop"/>">增加图书</a></H2>
    <H2 align="center"><a href="<s:url action="b_deleteUI" namespace="/bookshop"/>">删除图书</a></H2>
    <H2 align="center"><a href="<s:url action="o_updateUI" namespace="/bookshop"/>">更新图书</a></H2>
  </body>
</html>
