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
            <h2>List of User Query :-</h2>
            	<div class="container">	
            		<div class="row">
                    	<div class="col-sm-10 mx-auto mt-2">
                		<div class="row mt-4 shadow">                			
                			<%
								try{
								
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection(  
											"jdbc:mysql://localhost:3306/ebarber","root","");
								    Statement stmt1 = con.createStatement();  
						            ResultSet rs = stmt1.executeQuery("select * from faq"); 
						            
						            Boolean bool = false; %>
						            
						            <table class="table">
									  <thead>
									    <tr>
									      <th class="text-center" scope="col">S.No</th>
									      <th class="text-center" scope="col">Name</th>
									      <th class="text-center" scope="col">Email</th>
									      <th class="text-center" scope="col">Phone</th>
									      <th class="text-center" scope="col">Time</th>
									      <th class="text-center" scope="col">Message</th>
									      <th class="text-center text-danger" scope="col">#</th>
									    </tr>
									  </thead>
									  <tbody>
									  <% int cnt=1; %>
										
									<%
									   while (rs.next()) 
							             {  
										     String id=rs.getString("id");
										   	 String qf1 = rs.getString("name");
							                 String of1 = rs.getString("email");  
							                 String of2 = rs.getString("phone");  
							                 String of3 = rs.getString("time");  
							                 String of4 = rs.getString("msge");  
							                 
							               %>
							               
											    <tr>
											    	  <td class="text-center"> <% out.print(cnt); %> </td>
												      <td class="text-center" ><% out.print(qf1); %></td>
												      <td class="text-center"> <% out.print(of1); %> </td>
												      <td class="text-center"> <% out.print(of2); %></td>
												      <td class="text-center"> <% out.print(of3); %></td>
												      <td class="text-center"> <% out.print(of4); %> </td>
												     
												      
												      <td class="text-center"> <a href="mailto:<%=of1 %>" class="btn btn-success"> Reply </a> </td>
											    </tr>
							               <%   
							             
							             cnt++;
							             }  	   
								
								}
                				catch(Exception e){
									
								}
                	           
							%>
								  				</tbody>
											</table>
                		</div>
                	
				</div>
    
    
                    	
                	</div>
            	</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>