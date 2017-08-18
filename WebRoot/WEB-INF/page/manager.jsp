<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>渣渣书店</title>
    
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
  <table width="778" border="0" align="center" cellpadding="0" cellspacing="0" class="text">
    <tr> 
      <td width="25"><img src="images/left01.gif" width="25" height="780" alt=""></td>
      <td align="center" valign="top"><table width="729" height="100%" border="0" cellpadding="0" cellspacing="0" class="text">
          <tr>
            <td width="729" height="365"><table width="729"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"  width="729" height="365">
                  <param name="movie" value="02library_1.swf">
                  <param name="quality" value="high"><param name="LOOP" value="false">
                  <embed src="02library_1.swf" width="729" height="365" loop="false" type="application/x-shockwave-flash"></embed>
                </object></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="729" border="0" cellpadding="0" cellspacing="0" class="text">
                <tr>
                  <td width="33"><img src="images/left02-13.gif" width="33" height="341" alt=""></td>
                  <td width="315" valign="top"><table width="315" border="0" cellpadding="0" cellspacing="0" class="text">
                      <tr>
                        <td><img src="images/welcome.gif" width="315" height="40" alt=""></td>
                      </tr>
                      <tr> 
                        <td><table width="315" border="0" cellpadding="0" cellspacing="0" class="text">
                            <tr>
                              <td width="129"><img src="images/pic01.gif" width="129" height="147" alt=""></td>
                              <td width="186" align="center" background="images/bg1.gif"><table width="150" border="0" cellpadding="0" cellspacing="0" class="text">
                                  <tr>
                                    <td><font color="#291100">
                                    管理员管理界面
                                    </font></td>
                                  </tr>
                                </table></td>
                            </tr>
                          </table>
                          <table width="315" height="108" border="0" cellpadding="0" cellspacing="0" background="images/bg2.gif" class="text">
                            <tr>
                              <td align="center"><table width="280" border="0" cellpadding="0" cellspacing="0" class="text">
                                  <tr> 
                                    <td><font color="#291100">
                                    <a href="login.jsp" >返回主页</a>
                                    </font></td>
                                  </tr>
                                </table></td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr>
                        <td height="46"><img src="images/more1.gif" width="315" height="46" alt=""></td>
                      </tr>
                    </table></td>
                  <td width="41"><img src="images/center.gif" width="41" height="341" alt=""></td>
                  <td align="center" valign="top"><table width="315" border="0" cellpadding="0" cellspacing="0" class="text">
                      <tr>
                        <td height="40"><img src="images/welcome.gif" width="315" height="40" alt=""></td>
                      </tr>
                      <tr>
                        <td align="center" valign="top"><table width="315" height="257" border="0" cellpadding="0" cellspacing="0" background="images/bg3.gif" class="text">
                            <tr>
                              <td align="center" valign="top"><br>

                                <table width="280" border="0" cellpadding="0" cellspacing="0" class="text">

                                </table>

                                <table width="280" border="0" cellpadding="0" cellspacing="0" class="text">
                                    <tr>
    <td ><a href="manager1.jsp" >图书信息管理</a></td>
<br>
<br>
    <td><p ><a href="manager2.jsp" >订单信息管理</a></p></td>
<br>
<br>
   </tr>
                                </table>
                             <br>
                                <br>
                                <table width="280" border="0" cellpadding="0" cellspacing="0" class="text">
                                  <tr> 
                                    <td width="185" height="47"><font color="#291100">	  



	  </div></font></td>
                                  </tr>
                                </table></td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr>                        <td height="44"><img src="images/more2.gif" width="315" height="44" alt=""></td>
                      </tr>
                    </table></td>
                  <td width="25"><img src="images/right02.gif" width="25" height="341" alt=""></td>
                </tr>
              </table></td>
          </tr>
          <tr>
            <td height="50"><img src="images/bottom01.gif" width="729" height="50" alt=""></td>
          </tr>
          <tr>
            <td height="24" align="center" background="images/bottom02.gif"><font color="#CAB9A4">哟哟切克闹，渣渣书店来一套。</font></td>
          </tr>
        </table></td>
      <td width="24"><img src="images/left02.gif" width="24" height="780" alt=""></td>
    </tr>
  </table>
</body>
</html>
