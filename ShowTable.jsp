<%@ page contentType="text/html; charset=Windows-31J"%>
<!DOCTYPE HTML>
<HTML><HEAD>
<TITLE>JSP�T���v��</TITLE>
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
<% //�����Ɠ�����1�̕�����ɂ��Ă���TD���ɔz�u��������� %>
<%for(int i=1;i<=9;i++){%>
  <TR>
  <%for(int j=1;j<=9;j++){%>
    <TD><%=i+"�~"+j+"��"+i*j%></TD>
  <%}%>
  </TR>
<%}%>
</TABLE>

<br>

<TABLE>
<% //���~�Ɓ���html��̕�����Ť����ȊO��java�̒l��z�u��������� %>
<%for(int i=1;i<=9;i++){%>
  <TR>
  <%for(int j=1;j<=9;j++){%>
    <TD><%=i%>�~<%=j%>��<%=i*j%></TD>
  <%}%>
  </TR>
<%}%>
</TABLE>



<%-- JSP�̃R�����g

<% %>  �����̊���̒��ɤjava���L�q����

<%= %> �����̋L�q�Ťjava�́w�l�x�����̏ꏊ�ɔz�u�ł���

--%>


</BODY></HTML>
