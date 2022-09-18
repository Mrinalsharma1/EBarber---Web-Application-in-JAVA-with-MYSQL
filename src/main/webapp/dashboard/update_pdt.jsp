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
            <h2>List of Products :-</h2>
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
						            ResultSet rs = stmt1.executeQuery("select * from add_product"); 
						            
						            Boolean bool = false; %>
						            
						            <table class="table">
									  <thead>
									    <tr>
									      <th class="text-center" scope="col">S.No</th>
									      <th class="text-center" scope="col">Product Name</th>
									      <th class="text-center" scope="col">Price</th>
									      <th class="text-center" scope="col">Descripction</th>
									      <th class="text-center" scope="col">No Of Unit</th>
									      <th class="text-center text-danger" scope="col">#</th>
									    </tr>
									  </thead>
									  <tbody>
									  <% int cnt=1; %>
										
									<%
									   while (rs.next()) 
							             {  
										     String id=rs.getString("id");
										   	 String qf1 = rs.getString("pname");
							                 String of1 = rs.getString("price");  
							                 String of2 = rs.getString("descp");  
							                 String of3 = rs.getString("unit"); 
							                 
							               %>
							               
											    <tr>
											    	  <td class="text-center"> <% out.print(cnt); %> </td>
												      <td class="text-center" ><% out.print(qf1); %></td>
												      <td class="text-center"> <% out.print(of1); %> </td>
												      <td class="text-center"> <% out.print(of2); %></td>
												      <td class="text-center"> <% out.print(of3); %></td>
												      
												      
												      <td class="text-center"> <a href="http://localhost:2020/webcont/Delete_product?id=<% out.print(id); %>" class="btn btn-danger"> Delete </a> </td>
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