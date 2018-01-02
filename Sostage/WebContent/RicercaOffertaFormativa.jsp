<%@ page import="bean.StudenteBean, bean.OffertaFormativaBean, model.OffertaFormativaModel, java.util.*" %> 
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
		<a href="/Sostage/studente/HomeStudente.jsp"><div class="elebar"> <p>H O M E</p> </div></a>
		<a href="/Sostage/studente/InfoStudente.jsp"><div class="elebar"> <p>I N F O</p> </div></a>
		<a href="#"><div class="elebar"> <p>A B O U T - U S</p> </div></a>
	</nav>

<section id="ricercaDiv">
		
			
			
				<div class="TableRow">
				<h2>Ricerca Offerta</h2>
				
		         Scegli la citt�:
		            <select name="sede" id="sede">
		               <%
		            OffertaFormativaModel model= new OffertaFormativaModel();
					Collection<String> offerte=new ArrayList<String>();
					offerte=model.doRetrieveDistinctCity();
					
		            if(offerte!= null && offerte.size() > 0){
						Iterator<?> is= offerte.iterator();
						while(is.hasNext()){
							String bean= (String) is.next(); %>
		              <option value="<%=bean %>"><%=bean%> </option>
		             <% 
						}
					}
			
				%>
		            </select>
					<br>
		            <br> 
				 	Scegli la tematica:
			         <select name="Tema" id="Tema">
		               <%
		            
					Collection<String> tematiche=new ArrayList<String>();
					tematiche=model.doRetrieveDistinctTopic();
					
		            if(tematiche!= null && tematiche.size() > 0){
						Iterator<?> is= tematiche.iterator();
						while(is.hasNext()){
							String bean= (String) is.next(); %>
		              <option value="<%=bean %>"><%=bean%> </option>
		             <% 
						}
					}
			
				%>
		            </select>
			         	
			
			
				</div>
			
			<br>
				<input id="BottoneMostra" type="submit" value="Mostra" onclick="return loadDoc()"/>
				
			
			
		</section>
		
		
		<script>
				function loadDoc() {
					
					var sede=document.getElementById("sede").value;
					var Tema=document.getElementById("Tema").value;
				
					
				  var xhttp = new XMLHttpRequest();
				  xhttp.onreadystatechange = function() {
				    if (this.readyState == 4 && this.status == 200) {
				      document.getElementById("selezionati").innerHTML =
				      this.responseText;
				    }
				  };  
				  xhttp.open("GET", "/Sostage/studente/Mostra.jsp?sede="+sede+"&Tema="+Tema, true);
				  xhttp.send();
				  
				  return false;
				}
				
				</script>
		
		
		
		
		
		<section id="selezionati">
				
	
		</section>
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
			<a href="#"><p><i class="fa fa-home"></i> home</p></a>
			<a href="/Sostage/studente/InfoStudente.jsp"><p><i class="fa fa-info-circle"></i> info</p></a>
			<a href="#"><p><i class="fa fa-address-book"></i> contatti</p></a>
			
		</div>
	
	</footer>
</body>

</html>
