<%@ page contentType="text/html;charset=gb2312" session="true" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><head> <base href="<%=basePath%>">
    
  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>网上书城</title>



<style type="text/css">
<!--

.STYLE2 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 24px;
	color: #000000;
}
.STYLE3 {color: #999999}
.STYLE4 {font-size: 36px}
.SearchBar { 
font-size:12px; letter-spacing:2px; 
border-bottom:1px solid #dddddd; 
padding:5px 0px 3px 0px; 
margin:4px 0px 4px 0px; 
text-align:center;height:24px; 
FILTER: progid:DXImageTransform.Microsoft.Gradient(startColorStr='#f5f5f5', endColorStr='#eeeeee', gradientType='0'); 
} 

-->
</style>
</head>

<body >

<center>

<table width="763" border="0"  align="center" height="80%">

<div>
<caption><font face="隶书" size="12px" color="lightblue" align=center>欢迎来到买书吧网上书城！</font><caption>
<hr color=blue></hr>
</div>

    <tr>
       <td width="30%" style="border-right:1px solid black"align="center" valign="top">
       
          <s:form action="loginAction" namespace="/bookshop" method="post">
          用户类型：
            <select name="usertype" >
                <option value="" selected="selected" >----选 择 用 户----</option>
                <option value="customer">注 册 用 户</option>
                <option value="manager">管理员用户</option>
                </select><br>
          账号：<input name="username" type="text" size="15" ><br>
          密码：<input name="password" type="password" size="15" ><br>
                <input type="submit" value="登 录">
                <input type="reset"  value="取 消"><br>
                <a href="Register.jsp">还没注册</a>
          </s:form>
          
          <br><br>
          
          <s:form action="book_search" namespace="/bookshop" method="post">
                <img src="images\ti2.gif"><br>
                <input type="text" name="searchname"  size="15" class="SearchBar">
                <input type="submit" value="搜索">
          </s:form>    
           
      </td>

      <td width="70%"valign="top" align=center>
            <table cellspacing="10" border="0" valign="top">
               <tr>
                   <td><font face="隶书" size="+2" color="red" >
                   <a href="book.jsp">图书阅览>></font></td>
               </tr>
               <tr>
                   <td>
                      <TABLE cellSpacing="0" cellPadding="10" width="760"  border="0" align=centervalign="top">
                         <TR>
                            <TD>
                               <table border="0">
                                  <tr>
                                     <td>
                                     <img src="images/1.jpg" width=150 height="200" "></td>
                                  </tr>
                                  <tr>
                                      <td><font face=微软细黑 size=4 color=blue>计算机组成原理</font></td>
                                  </tr>
                                  <tr>
                                     <td></td>
                                  </tr>
                               </table></TD>  <br>
                            <TD>
                               <table>
                                  <tr>
                                     <td>
                                     <img src="images/2.jpg" width=150 height="200"></td>
                                  </tr>
                                  <tr>
                                     <td><font face=微软细黑 size=4 color=blue>Java Web 编程技术</font></td>
                                  </tr>
                                  <tr>
                                     <td></td>
                                  </tr>
                               </table></TD>  <br>
                            <TD>
                               <table>
                                  <tr>
                                     <td>
                                     <img src="images/3.jpg" width=150 height="200"></td>
                                  </tr>    
                                  <tr>
                                     <td><font face=微软细黑 size=4 color=blue>数据库原理及应用教程</font></td>
                                  </tr> 
                                  <tr>
                                     <td></td>
                                  </tr>
                              </table></TD> <br>
                        </TR>  
                          <TR>
                             <TD>
                                <table>
                                   <tr>
                                      <td>
                                      <img src="images/4.jpg" width=150 height="200"></td>
                                  </tr>
                                   <tr>
                                      <td><font face=微软细黑 size=4 color=blue>计算机算法设计与分析</font></td>
                                   </tr>
                                   <tr>
                                      <td></td>
                                   </tr>
                               </table></TD>  
                              <TD>
                                 <table>
                                    <tr>
                                       <td>
                                       <img src="images/5.jpg" width=150 height="200"></td>
                                    </tr>
                                    <tr>
                                       <td><font face=微软细黑 size=4 color=blue>人工智能导论</font></td>
                                    </tr>
                                    <tr>
                                       <td></td>
                                    </tr>
                                </table></TD>  
                               <TD>
                                  <table>
                                     <tr>
                                        <td>
                                        <img src="images/6.jpg" width=150 height="200"></td>
                                     </tr>
                                     <tr>
                                        <td><font face=微软细黑 size=4 color=blue>多媒体通信技术</font></td>
                                     </tr>
                                     <tr>
                                        <td></td>
                                     </tr>
                                 </table></TD> 
                        </TR>                         
                     </TABLE></td></tr>
        </table></td>
    </tr>
</table>
</form>

<div>
<hr width="80%" color="blue" ></hr>
<p align="center"><font color="red">
Copyfight &copy;2013 Web bookshop,Inc.
</font></p>
</div>

</center>
<%String id="1";
session.setAttribute("custname",id);%>
</body>
</html>
