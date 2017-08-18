<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,com.bookshop.entity.*,com.opensymphony.xwork2.ActionContext,com.bookshop.action.*,com.bookshop.DAO.*,com.bookshop.DAOservice.*,javax.servlet.*,javax.servlet.http.*" errorPage="" %>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>管理员订单</title>
<link rel="stylesheet" type="text/css" href="style.css" />



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


-->
</style>
</head>
<%
request.setCharacterEncoding("gb2312");
%>

<div id="wrap">
  <div  class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li class="selected"><a href="Login.jsp">首页</a></li>
        <li class="selected"><a href="admin.jsp">管理员</a></li>
        <li class="selected"><a href="Register.jsp">注册</a></li>
		<li class="selected"><a href="book.jsp">图书浏览</a></li>
      </ul>
    </div>
  </div>

<p>&nbsp;</p><%if(ActionContext.getContext().getSession().get("result")!=null){%>
			<font class="STYLE2"><%=ActionContext.getContext().getSession().get("result")%></font>
			<%}%><br><TABLE cellSpacing=0 cellPadding=0 width=676 align=center border=0>
  <TBODY>
  <TR>
    <TD width=763 bgColor=#55808f>
      <TABLE cellSpacing=1 cellPadding=1 border=0>
        <TBODY>
        <TR>
          <TD align=center width=80><B>
          <FONT class=p9  color=#ffffff>订单用户</FONT> </B></TD>
          <TD align=center width=80><B>
          <FONT class=p9 color=#ffffff>收货姓名</FONT></B></TD>
		  <TD align=center width=80><B>
          <FONT class=p9 color=#ffffff>收货地址</FONT></B></TD>
		  <TD align=center width=100><B>
          <FONT class=p9 color=#ffffff>联系电话</FONT></B></TD>
		  <TD align=center width=80><B>
          <FONT class=p9 color=#ffffff>是否发货</FONT></B></TD>
        </TR></TBODY></TABLE>
    </TD></TR>
  <TR>
    <TD width=763 bgColor=#c0d0c5>
      <TABLE cellSpacing=1 cellPadding=1 border=0>
        <TBODY>
      <%         
				 	
			 List<Shoppingcart> ems =(List<Shoppingcart>)ActionContext.getContext().getSession().get("cart");
 		%><%
			for(Shoppingcart em: ems){
		%>
       
        
        <TR>
          <TD align=center width=80><%=em.getUsername()%></FONT></TD>
          <TD class=p9 align=center width=80><%=em.getBuyer()%></TD>
          <TD class=p9 align=center width=80><%=em.getAddress()%></TD>
		  <TD class=p9 align=right width=80><%=em.getCount()%></TD>
		  <TD class=p9 align=right width=80><%=em.getState()%></TD>
		 
          
          <TD align=center width=80>&nbsp; </TD>
          </TR>
          
           <%
         }
      
      %>
       
         
          
          </TBODY></TABLE></TD></TR>
  <TR>
    <TD height=7 width="763"></TD></TR>
  <TR>
    <TD width=763>
      <TABLE width=763 align=right>
        <TBODY><s:form namespace="/bookshop" action="order_send"><tr><td>输入要发货的订单用户<input type="text" name="admin"><input type="submit" value="发货"></td></tr></s:form>
        <TR>
          <TD class=p9 align=middle><FONT 
            class=p2>您可以输入用户，点击发货来修改发货信息</B> 
    </FONT></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=7 width="763"></TD></TR>
  <TR>
    <TD vAlign=bottom align=middle width=763><A 
      href="admin.jsp"><U><FONT class=normal 
      color=blue>返回主页面 </FONT></U></A></TD></TR></FORM></TBODY></TABLE>
<TABLE width=763 align=center border=0>
  <TBODY>
  <TR>
    <TD>
      <HR width="90%" SIZE=1>
    </TD></TR>
  <TR>
    <TD>
      <p align="center"></TD></TR></TBODY></TABLE>


<p>&nbsp;</p>
<p>&nbsp;</p>
 <div class="clear">
</div>
  <!--end of center content-->
<div class="footer">
  <div class="left_footer"><br />
  </div>
    <div class="right_footer"> <a href="#">home</a> <a href="#">about us</a> <a href="#">services</a> <a href="#">privacy policy</a></div>
    <span class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /></span></div>
</div>

</body>
</html>
