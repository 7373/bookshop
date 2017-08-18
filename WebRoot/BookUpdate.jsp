<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,com.bookshop.entity.*,com.opensymphony.xwork2.ActionContext,com.bookshop.action.*,com.bookshop.DAO.*,com.bookshop.DAOservice.*,javax.servlet.*,javax.servlet.http.*" errorPage="" %>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>����ͼ��</title>
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
.STYLE5 {color: #000000}
.STYLE6 {color: #FF9933}


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
        <li class="selected"><a href="admin.jsp">����Ա</a></li>
        <li class="selected"><a href="Register.jsp">ע��</a></li>
		<li class="selected"><a href="book.jsp">ͼ�����</a></li>
      </ul>
    </div>
  </div>

		<%	 Book book =(Book)ActionContext.getContext().getSession().get("book");
 		%><s:form namespace="/bookshop" action="book_update" method="post">
		  <table width="596" height="259" border="0" align="center" bordercolor="#000000">
            <tr>
              <td colspan="2" rowspan="4"><input type="text" name="book.image" value="<%=book.getImage()%>"></td>
              <td height="60" colspan="4"><div align="center"><span class="STYLE2">
                <input type="text" name="book.name" value="<%=book.getName()%>">
              </span> </div></td>
            </tr>
            <tr>
              <td width="95" ><div align="center" class="STYLE3">���ߣ�</div></td>
              <td width="131"><div align="center">
                <input type="text" name="book.writer" value="<%=book.getWriter()%>">
              </div></td>
              <td width="95"><div align="center" class="STYLE3">ISBN��</div></td>
              <td width="130"><div align="center">
                <input type="text" name="book.isbn" value="<%=book.getIsbn()%>">
              </div></td>
            </tr>
            <tr>
              <td ><div align="center" class="STYLE3">�����磺</div></td>
              <td><div align="center">
                <input type="text" name="book.publish" value="<%=book.getPublish()%>">
              </div></td>
              <td><div align="center" class="STYLE3">�������ڣ�</div></td>
              <td><div align="center">
                <input type="text" name="book.pubdate" value="<%=book.getPubdate()%>">
              </div></td>
            </tr>
            <tr>
              <td height="63"><div align="center" class="STYLE3">�� ��</div></td>
              <td><div align="center">
                <input type="text" name="book.price" value="<%=book.getPrice()%>">
                Ԫ</div></td>
              <td height="63" colspan><label> </label>
                  <div align="center">
                    <input name="Submit" type="submit" value="�ύ�޸�">
                </div></td>
            </tr>
          </table>
		  <div align="center">
<table width="629" border="0" class="button"align="center">
            <tr>
              <td height="29"><div align="center" class="STYLE6">���</div></td>
            </tr>
            <tr>
              <td width="623" height="78"> <p>&nbsp;&nbsp;<span class="STYLE5"><input type="text" name="book.contents" width="623px" height="78px"value="<%=book.getContents()%>"></span></p></td>
            </tr>
          </table></s:form>
</div>
		<p>&nbsp;</p>
<div >
    <div align="center">
      <table>
        <TR>
          <TD align=center>
            <a href="admin.jsp" ><font size=5>���� </a></font>          </TD>
     </TR>
       </table>
    </div>

<p>&nbsp;</p>
<p>&nbsp;</p>
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
