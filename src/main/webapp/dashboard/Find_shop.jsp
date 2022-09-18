<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="header.jsp" %>
    <%@ include file="top_Header.jsp" %>
    <%@ include file="menu.jsp" %>
    
    <div class="page-wrapper">
            <div class="content">
            <h2>Find Barber !!</h2>
            
            <div class="container">
            	<div class="row">
   
            			<form action="Show_Barber.jsp" method="get">
            				<div class="input-group mb-3">
            				<input type="text" class="form-control" name="pin" placeholder="Search By PinCode" aria-label="Recipient's username">
            		
            				<div class="col-md-6"><button type="submit" class="btn btn-outline-secondary">Submit</button>
						</form>
						
				</div>
            	
            	</div>
            </div>
            	<div class="container">	
	                <div class="row">
	                	<div class="col-md-4">
		                	<div class="card">
							  <img src="https://content3.jdmagicbox.com/comp/bangalore/r6/080pxx80.xx80.220316232806.w1r6/catalogue/salon-perimeter-yelahanka-bangalore-beauty-parlours-t0j7qrwhmf.jpg?clr=521433" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							    <h4 class="card-text"><i class="fa fa-dollar"></i><span> 876</span></h4>
							    <a href="tel:+919155532679" class="btn btn-primary">Book Now</a>
							  </div>
							</div>
						</div> 
						<div class="col-md-4">
							<div class="card">
							  <img src="https://content3.jdmagicbox.com/comp/def_content/beauty-salons-for-men/shutterstock-452433712-beauty-salons-for-men-6-7h8u9.jpg" alt="...">
							  <div class="card-body">	
							    <h5 class="card-title">Card title</h5>
							    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
							    <h4 class="card-text"><i class="fa fa-dollar"></i><span> 876</span></h4>
							    <a href="tel:+919155532679" class="btn btn-primary">Book Now</a>
							  </div>
							</div>	
						</div> 
						<div class="col-md-4">
		                	<div class="card">
							  <img src="https://content3.jdmagicbox.com/comp/bangalore/s7/080pxx80.xx80.211203222019.d4s7/catalogue/goldfingers-unisex-family-saloon-doddakallasandra-bangalore-nhsx5i3u5m.jpg" alt="...">
							  <div class="card-body">
							    <h5 class="card-title">Card title</h5>
							    <p class="card-text">Some quick example text to build on the card title.</p>
							    <h4 class="card-text"><i class="fa fa-dollar"></i><span> 876</span></h4>
							    <a href="tel:+919155532679" class="btn btn-primary">Book Now</a>
							  </div>
							</div>
						</div> 
	                </div>
            	</div>
			</div>
		</div>
		
		<%@ include file="footer.jsp" %>