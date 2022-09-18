<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
    <%@ include file="top_Header.jsp" %>
    <%@ include file="menu.jsp" %>
    
    <div class="page-wrapper">
            <div class="content">
            <h2>Add Products 	!!</h2>
            	<div class="container">	
	                <div class="row">
	                	<div class="col-md-6">
		                	<form action="../add_product" method="post" enctype="multipart/form-data">
								  <div class="mb-3">
								    <label for="exampleInputEmail1" class="form-label">Product Name</label>
								    <input type="text" class="form-control" name="pname" aria-describedby="emailHelp">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Price</label>
								    <input type="text" class="form-control" name="price">
								  </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Description</label>
								    <input type="text" class="form-control" name="descp">
								  </div>
								 <div class="mb-3">
									  <label for="formFile" class="form-label">Add Product Image</label>
									  <input class="form-control" type="file" id="formFile" name="img">
								 </div>
								  <div class="mb-3">
								    <label for="exampleInputPassword1" class="form-label">Unit</label>
								    <input type="number" class="form-control" name="unit">
								  </div>
								  <button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div> 
	                </div>
            	</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>