<%@ page contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE HTML>
<HTML><HEAD>
<TITLE>JSPサンプル</TITLE>
<META http-equiv="content-type" content="text/html; charset=Windows-31J">
<STYLE TYPE="text/css">
TABLE{
	border-collapse:collapse;
}
TD{
	width:80px;
	text-align:center;
	border-style:solid;
	border-width:1px;
}
</STYLE>
</HEAD><BODY>


<TABLE>
<%for(int i=1;i<=9;i++){%>
  <TR>
  <%for(int j=1;j<=9;j++){%>
    <TD><%=i*j%></TD>
  <%}%>
  </TR>
<%}%>
</TABLE>

<br>

<TABLE>
<% //▼式と答えを1つの文字列にしてからTD中に配置するﾊﾟﾀｰﾝ %>
<%for(int i=1;i<=9;i++){%>
  <TR>
  <%for(int j=1;j<=9;j++){%>
    <TD><%=i+"×"+j+"＝"+i*j%></TD>
  <%}%>
  </TR>
<%}%>
</TABLE>

<br>

<TABLE>
<% //▼×と＝はhtml上の文字列で､それ以外はjavaの値を配置するﾊﾟﾀｰﾝ %>
<%for(int i=1;i<=9;i++){%>
  <TR>
  <%for(int j=1;j<=9;j++){%>
    <TD><%=i%>×<%=j%>＝<%=i*j%></TD>
  <%}%>
  </TR>
<%}%>
</TABLE>



<%-- JSPのコメント

<% %>  ←この括りの中に､javaを記述する｡

<%= %> ←この記述で､javaの『値』をこの場所に配置できる｡

--%>


</BODY></HTML>
