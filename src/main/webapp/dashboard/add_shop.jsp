<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
    <%@ include file="top_Header.jsp" %>
    <%@ include file="menu.jsp" %>
    
    <div class="page-wrapper">
            <div class="content">
            <h2>Add Barber Shops 	!!</h2>
            	<div class="container">	
	                <div class="row">
	                	<div class="col-md-6">
		                	<form action="../add_shop" method="post" enctype="multipart/form-data">
								  <div class="mb-3">
								    <label for="exampleInputEmail1" class="form-label">Shop Name</label>
								    <input type="text" class="form-control" name="sname" aria-describedby="emailHelp">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Owner Name</label>
								    <input type="text" class="form-control" name="oname">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Mobile</label>
								    <input type="text" class="form-control" name="phone">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Email</label>
								    <input type="email" class="form-control" name="email">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Shop Address</label>
								    <input type="text" class="form-control" name="saddress">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Pin</label>
								    <input type="text" class="form-control" name="pin">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Customer Strength</label>
								    <input type="number" class="form-control" name="cstr">
								  </div>
								  <div class="mb-3">
									  <label for="formFile" class="form-label">Image</label>
									  <input class="form-control" type="file" id="formFile" name="img">
								 </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">No of Barber</label>
								    <input type="number" class="form-control" name="nbarber">
								  </div>
								  <button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div> 
	                </div>
            	</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>