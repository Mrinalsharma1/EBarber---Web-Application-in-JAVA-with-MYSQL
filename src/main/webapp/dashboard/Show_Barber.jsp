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
            <h2>Book Barber Shops 	!!</h2>
            	<div class="container">	
	                <div class="row">
	                <%	
	                String x= request.getParameter("pin");
					int pin = Integer.parseInt(x);
	                
	                try{
	                
	                	Class.forName("com.mysql.jdbc.Driver");
						Connection con = DriverManager.getConnection(  
								"jdbc:mysql://localhost:3306/ebarber","root","");
					
					    Statement stmt1 = con.createStatement(); 
					   
						
						
						String str = String.format("select * from `add_shop` where pin='%s';",pin);
					    
			            ResultSet rs = stmt1.executeQuery(str);
			        while(rs.next()){
			    	String img=rs.getString("image");
			    	String price=rs.getString("phone");
			    	String pname=rs.getString("sname");
			    	String dec=rs.getString("saddress");
            	
			    
            	%>
	                	
						<div class="col-md-4">
		                	<div class="card">
							  <img src="./image/<%out.print(img); %>" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title"><%out.print(pname); %></h5>
							    <p class="card-text"><%out.print(dec); %></p>
							    <h4 class="card-text"><i class="fa fa-phone"></i><span> <% out.print(price); %></span></h4>
							    <div class="py-2">
							    	<i class="fa fa-star text-danger"></i>
							    	<i class="fa fa-star text-danger"></i>
							    	<i class="fa fa-star text-danger"></i>
							    	<i class="fa fa-star"></i>
							    	<i class="fa fa-star-half"></i>
							    </div>
							    <a href="tel:+91<%out.print(price); %>" class="btn btn-primary">Book Now</a>
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