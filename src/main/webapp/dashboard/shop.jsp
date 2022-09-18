<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
    <%@ include file="top_Header.jsp" %>
    <%@ include file="menu.jsp" %>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
    
    <div class="page-wrapper">
            <div class="content">
            <h2>Barber Shops 	!!</h2>
            	<div class="container">	
	                <div class="row">
	                <%	
	                
	                try{
	                
            	Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(  
						"jdbc:mysql://localhost:3306/ebarber","root","");
			
			    Statement stmt = con.createStatement(); 
			    String str = String.format("SELECT * FROM `add_product`");
			    ResultSet temp = stmt.executeQuery(str); 
			    while(temp.next()){
			    	String img=temp.getString("image");
			    	String price=temp.getString("price");
			    	String pname=temp.getString("pname");
			    	String dec=temp.getString("descp");
            	
			    
            	
            	%>
	                	
						<div class="col-md-4">
		                	<div class="card">
							  <img src="./image/<%out.print(img); %>" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title"><%out.print(pname); %></h5>
							    <p class="card-text"><%out.print(dec); %></p>
							    <h4 class="card-text"><i class="fa fa-dollar"></i><span> <% out.print(price); %></span></h4>
							    <a href="tel:+919155532679" class="btn btn-primary">Buy Now</a>
							  </div>
							</div>
						</div> 
						<%} 
						
						
	                } catch(Exception e){
	                	
	                }
						%>
						
 
            	</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>