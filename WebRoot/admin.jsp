<%@ page  pageEncoding="gb2312" language="java" import="java.sql.*,javax.servlet.*" session="true" errorPage="wrong.jsp" %>
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
<title>����Աҳ��</title>
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

<body>

<div id="wrap">
  <div  class="header">
    <div class="logo"><a href="index.htm"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    <div id="menu">
      <ul>
        <li class="selected"><a href="Login.jsp">��ҳ   </a></li>
        <li class="selected"><a href="admin.jsp"> ����Ա</a></li>
        <li class="selected"><a href="Register.jsp">ע��</a></li>
		<li class="selected"><a href="book.jsp">ͼ�����</a></li>
		<li class="selected"><a href="Login.jsp">�װ��Ĺ���Ա����ӭ��½��������̨����ϵͳ</a></li>
      </ul>
    </div>
  </div>

  <p>&nbsp;</p>
  <table width="897" height="311" border="0">
    <tr>
      <td width="217" height="160"><s:form namespace="/bookshop" action="book_list"  method="post">
        <label>
          <div align="center">
            <input name="Submit" type="submit" class="button" value="�鿴����ͼ����Ϣ" />
          </div>
        </label>
      </s:form>      </td>
      <td width="218"><form id="form4" name="form4" method="post" action="BookAdd.jsp">
        <label>
        <div align="center">
          <input name="Submit4" type="submit" class="button" value="�����µ�ͼ����Ϣ" />
        </div>
        </label>
      </form></td>
      <td width="221"><div align="center">
        <s:form namespace="/bookshop" method="post" action="order_cartlist">
          <input name="Submit2" type="submit" class="button" value="�鿴���ж�����Ϣ" />
                </s:form>
        </div></td>
      <td width="221"><form  method="post" action="bookDelete.jsp">
        <label> </label>
        <div align="center">
          <input name="Submit5" type="submit" class="button" value="ɾ������ͼ����Ϣ" />
        </div>
      </form></td>
    </tr>
    <tr><s:form namespace="/bookshop" method="post" action="book_search"><td align="center">��������Ҫ������������
            <input type="text" name="searchname" class="SearchBar" />
    </td>
        <td align="center"><input name="Submit3" type="submit" class="button" value="�����鿴ͼ����Ϣ" /></td></s:form>
        <s:form namespace="/bookshop" method="post" action="book_searchforupdate"><td align="center">��������Ҫ�޸ĵ�������
            <input name="name" type="text"  class="SearchBar"/>
    </td>
        <td align="center"><input name="Submit3" type="submit" class="button" value="�鿴�޸�ͼ����Ϣ" /></td></s:form>
    </tr>
  </table>
 <p>&nbsp;</p> <p>&nbsp;</p>
 <div class="clear">
</div>
  <!--end of center content-->
<div class="footer">
  <div class="left_footer"><br />
  </div>
    <div class="right_footer"><a href="#">home</a> <a href="#">about us</a> <a href="#">services</a> <a href="#">privacy policy</a>  </div>
    <span class="left_footer"><img src="images/footer_logo.gif" alt="" title="" /></span></div>
</div>

</body>
</html>
