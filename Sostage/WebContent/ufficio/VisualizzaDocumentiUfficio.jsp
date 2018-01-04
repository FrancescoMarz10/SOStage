<%@ page import="bean.UfficioBean, bean.UtenteBean, model.UfficioModel" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="icon" href="images/icon.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/Sostage/style.css" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>SOSTAGE</title>
</head>
<body>
	<div class="header">
		<img id="logo" alt="immagine" src="/Sostage/images/LogoMotto.png">
		
		<div id="dipinfo">
			<a href="http://www.di-srv.unisa.it/" target="_blank"><img alt="informaticapic" id="logoInfo" src="/Sostage/images/informatica.png"></a>
		</div>
		
	<form  id="logoutForm" action="/Sostage/LogoutServlet" method="post">	
		<button type="submit" id="logout"><i class="fa fa-user-o"></i> Logout</button>
	</form>
	
	<nav id="bar">
		<a href="/Sostage/ufficio/HomeUfficio.jsp"><div class="elebar"> <p>H O M E</p> </div></a>
		<a href="/Sostage/ufficio/InfoUfficio.jsp"><div class="elebar"> <p>I N F O</p> </div></a>
		<a href="#"><div class="elebar"> <p>A B O U T - U S</p> </div></a>
	</nav>
	
	<div class="container">
			<div id="info">
					<%
						UtenteBean bean=(UtenteBean)session.getAttribute("bean"); 
						UfficioModel model= new UfficioModel();
						UfficioBean ufficio=model.doRetrieveByUsername(bean.getUsername());
					%>
					<img id="usericon" src="/Sostage/images/user.png" alt="superman"><h2 id="benv">Benvenuto <%=ufficio.getUsername()  %> !</h2>
					<br>
					<ul>
					  <li><p id="we">Sigla: <%=ufficio.getSigla() %></p></li>
					  <li><p id="we">Mail: <%=bean.getMail()%></p></li>
					  
					</ul>
					
				</div>
				
				<div id="Documenti">
					<img id="picDoc" src="/Sostage/images/doc.png">
					<br>
					<a target="_blank" href="/Sostage/Files/progettoFormativo.pdf"><input id="BottoneScarica" type="button" value="Scarica Documento"/></a>
					<br>
					<br>
					<input id="BottoneCarica" type="submit" value="Carica Documento"/>
					<br>
					<br>
					<input id="BottoneInvia" type="submit" value="Invia Notifica"/>
				</div>
	</div>
	<hr id="hr">
	
	<footer id="footer">
	
		<div id="foot1">
			<a href="http://www.unisa.it/" target="_blank"><img alt="informaticapic" id="logoUnisa" src="/Sostage/images/logoUnisa2.png"></a>
		</div>
		
		<div id="foot2">
			<p><i class="fa fa-envelope"></i> sostage@unisa.it</p>
			<p><i class="fa fa-home"></i> 84084 Fisciano (SA) - ITALY</p>
			<p><i class="fa fa-location-arrow"></i> Via Giovanni Paolo II, 132</p>
			<p><i class="fa fa-phone"></i> 089 961111</p>
		</div>
	
		<div id="foot3">
			<a href="/Sostage/ufficio/HomeUfficio.jsp"><p><i class="fa fa-home"></i> home</p></a>
			<a href="/Sostage/ufficio/InfoUfficio.jsp"><p><i class="fa fa-info-circle"></i> info</p></a>
			<a href="#"><p><i class="fa fa-address-book"></i> contatti</p></a>
			
		</div>
	
	</footer>
</body>
