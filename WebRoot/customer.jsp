<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,com.bookshop.entity.*,com.opensymphony.xwork2.ActionContext,com.bookshop.action.*,com.bookshop.DAO.*,com.bookshop.DAOservice.*,javax.servlet.*,javax.servlet.http.*" errorPage="" %>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>  <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>�û�ҳ��</title>
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

<body>

<div id="wrap">
  <div  class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li class="selected"><a href="Login.jsp">��ҳ</a></li>
        <li class="selected"><a href="customer.jsp">�û�</a></li>
        <li class="selected"><a href="Register.jsp">ע��</a></li>
		<li class="selected"><a href="book.jsp">ͼ�����</a></li>
		<li class="selected"><a href="Login.jsp">�װ����û�<%=ActionContext.getContext().getSession().get("username") %>,��ӭ��½�������</a></li>
      </ul>
    </div>
  </div>

  <p>&nbsp;</p>
  <table width="897" height="313" border="0">
    <tr>
      <td width="437" height="160"><s:form namespace="/bookshop" method="post" action="book_list">
        <label>
          <div align="center">
          <s:hidden name="username" value='cai'/>
            <input name="Submit" type="submit" class="button" value="�鿴����ͼ����Ϣ" />
          </div>
        </label>
      </s:form>      </td>
      <td width="444"><div align="center">
        <s:form namespace="/bookshop" method="post" action="order_cardlist">
        
          <input name="Submit2" type="submit" class="button" value="�鿴���Ĺ��ﳵ��Ϣ" />
                </s:form>
        </div></td>
    </tr>
    <tr><s:form namespace="/bookshop" method="post" action="book_search"><td align="center"> ��������Ҫ������������<br>
        <input type="text" class="SearchBar" name="searchname" />
        </td>
      <td height="145" colspan="2">
          <div align="center">
            <input name="Submit3" type="submit" class="button" value="�����鿴ͼ����Ϣ" />
            
          </div></td></s:form>
    </tr>
  </table>
 <p>&nbsp;</p> <p>&nbsp;</p>
 <div class="clear">
</div>
  <!--end of center content-->
<div class="footer">
  <div class="left_footer"><br />
  </div>
    <div class="right_footer"> <a href="#">home</a> <a href="#">about us</a> <a href="#">services</a> <a href="#">privacy policy</a> <a href="#"></a> </div>
    <span class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /></span></div>
</div>

</body>
</html>
<body >


