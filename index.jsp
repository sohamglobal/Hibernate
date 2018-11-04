<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.cfg.Configuration" %>
    <%@page import="org.hibernate.*" %>
    <%@page import="myentities.*" %>
    <%@page import="javax.persistence.*" %>
    <%@page import="javax.persistence.criteria.*" %>
    <%@page import="javax.persistence.Query" %>
    <%@page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sohamglobal</title>
</head>
<body>
<h2>Sohams Hibernate 5.3 demo running</h2>
<hr/>

<table border="1" cellspacing="0">
<tr>
<th>Number</th>
<th>Name</th>
<th>Type</th>
<th>Balance</th>
</tr>

<%
Configuration cfg=new Configuration().configure();
SessionFactory sf=cfg.addAnnotatedClass(Accounts.class).buildSessionFactory();
Session ses=(Session) sf.getCurrentSession();
ses.beginTransaction();

Query qr = ses.createQuery("from Accounts");
List<Accounts> results = qr.getResultList();

for(int i=0;i<results.size();i++)
{

%>
<tr>
<td><%=results.get(i).getAccno() %></td>
<td><%=results.get(i).getAccnm() %></td>
<td><%=results.get(i).getAcctype() %></td>
<td><%=results.get(i).getBalance() %></td>
</tr>


<%
}
out.println("<h3>Total Records Retrieved "+results.size()+"</h3>");


%>
</table>

</body>
</html>