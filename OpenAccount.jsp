<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.cfg.Configuration" %>
    <%@ page import="org.hibernate.Session" %>
    <%@ page import="org.hibernate.SessionFactory" %>
    <%@ page import="myentities.*" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
int no;
String nm,ty;
double bal;

try
{
no=Integer.parseInt(request.getParameter("acnumber"));
nm=request.getParameter("acname");
ty=request.getParameter("actype");
bal=Double.parseDouble(request.getParameter("balance"));

Session ses;

Configuration cfg=new Configuration().configure();		
SessionFactory sf=cfg.addAnnotatedClass(Accounts.class).buildSessionFactory();
ses=sf.getCurrentSession();

ses.beginTransaction();

Accounts acc=new Accounts();
acc.setAccnm(nm);
acc.setBalance(bal);
acc.setAccno(no);
acc.setAcctype(ty);

ses.save(acc);
ses.getTransaction().commit();
ses.close();

out.println("Inserted..");
}
catch(Exception ex)
	{
		out.println("Error : "+ex);
	}

%>

</body>
</html>
