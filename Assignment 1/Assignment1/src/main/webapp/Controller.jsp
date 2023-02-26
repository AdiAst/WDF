<%@page import="dao.UserDao"%>
<jsp:useBean id="u" class="beans.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDao.register(u);
if(i>0){
	request.getRequestDispatcher("thank-you-page.jsp").forward(request, response);
}else{
	request.setAttribute("error","Your input doesn't met requirement" );
	request.getRequestDispatcher("register.jsp").forward(request, response);
}
%>