<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style type="text/css">
<!--
a {text-decoration:none} 
a:link{text-decoration:none ; color:#666 ;}
a:visited {text-decoration:none ; color:#000000;}
a:active {text-decoration:none ; color:#000 ;}
a:hover {text-decoration:underline; color:#0000FF;}
@import url("*");
.STYLE1 {	color: #000000;
	font-weight: bold;
	font-size: 16px;
}
.STYLE7 {
	font-size: 14px;
	color: #000000;
	border-bottom-color: #CCCCCC;
	border-top-color: #CCCCCC;
	border-left-color: #CCCCCC;
	border-right-color: #CCCCCC;
}
.STYLE8 {font-size: 36px}
.STYLE9 {font-family: "楷体"}
.STYLE11 {
	color: #FF0000;
	font-size: 10px;
}
-->
</style>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <body bgcolor="#663300">
 
	    <p align="center" class="STYLE8">欢迎进入网上书店</p>
	  <s:form action="book_add" namespace="/bookshop"  method="post" >
	    <table width="288" height="141" align="center" >
	      <tr><td><div align="left">书名</div></td>
	  	  <td>
	  	    
	  	    <div align="left">
	  	      <s:textfield name="bookstock.title"  class="STYLE7" />
            </div></td>
			<td width="40" ><font color="#FF0000">*<span class="STYLE9">必填</span></font></td>
          </tr>
	      <tr><td><div align="left">书号</div></td>
	  	  <td>
	  	    
	  	    <div align="left">
	  	      <s:textfield name="bookstock.bookid"  class="STYLE7" />
            </div></td>
			<td width="40" ><font color="#FF0000">*<span class="STYLE9">必填</span></font></td>
          </tr>

          <tr><td><div align="left">作者</div></td>
	  	  <td>
	  	    
	  	    <div align="left">
	  	      <s:textfield name="bookstock.author"  class="STYLE7" />
            </div></td><td width="40" ></td>
          </tr>
          
      <tr><td><div align="left">出版商</div></td>
	  	  <td>
	  	    
	  	    <div align="left">
         <s:textfield name="bookstock.publisher"  class="STYLE7" />
            </div></td><td width="40" ></td>
          </tr>
          
	      <tr><td><div align="left">价格</div></td>
	  	  <td>
	  	    
	  	    <div align="left">
	  	      <s:textfield name="bookstock.price"  class="STYLE7" />
            </div></td>
			<td width="40" ><font color="#FF0000">*<span class="STYLE9">必填</span></font></td>
          </tr>


	      <tr><td><div align="left">简介</div></td>
	  	  <td>
	  	    
	  	    <div align="left">
	  	      <s:textfield name="bookstock.introduce"  class="STYLE7" />
            </div></td><td width="40" ></td>
          </tr>
 
        </table>
          <div align="center">
	    <p align="center">
        <input name="submit" type="submit"  style="width:100px" value="确认">  
            &nbsp;&nbsp;<input type="reset" style="width:100px"  value="重置">
	    </p>
	  </div>
	  </s:form>
	  </body>
	  </html>