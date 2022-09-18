


<!-- navigation section start -->
         <div class="sidebar" id="sidebar">
            <div class="sidebar-inner slimscroll">
                <div id="sidebar-menu" class="sidebar-menu">
                    <ul>
                        <li class="active">
                            <a href="main.jsp"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
                        </li>
                        <!--
						<li>
                            <a href="javascript:void()"><i class="fa fa-user-md"></i> <span>Doctors</span></a>
                        </li>
                        <li>
                            <a href="javascript:void()"><i class="fa fa-wheelchair"></i> <span>Patients</span></a>
                        </li>
                        <li>
                            <a href="javascript:void()"><i class="fa fa-calendar"></i> <span>Appointments</span></a>
                        </li> -->
                        <% if(isStatus.equals("admin")){  %>
						<li class="submenu">
							<a href="javascript:void()"><i class="fa fa-user"></i> <span> ADD Shop </span> <span class="menu-arrow"></span></a>
							<ul style="display: none;">
								<li><a href="add_shop.jsp">ADD</a></li>
								<li><a href="update_shop.jsp">Update</a></li>
							</ul>
						</li>
						<li class="submenu">
							<a href="#"><i class="fa fa-truck"></i> <span> Add Product </span> <span class="menu-arrow"></span></a>
							<ul style="display: none;">
								<li><a href="add_product.jsp"> Add Product </a></li>
								<li><a href="update_pdt.jsp"> Update</a></li>
							</ul>
						</li>
						<li>
                            <a href="faq.jsp"><i class="fa fa-question"></i> <span>User Query</span></a>
                        </li>
                        
                        
                        
                        <% } %>  
						<li>
                            <a href="shop.jsp"><i class="fa fa-fire"></i> <span>Shop</span></a>
                        </li>
                        
                        <li>
                            <a href="Find_shop.jsp"><i class="fa fa-bell"></i> <span>Find Barber</span></a>
                        </li>
                        
                       
                    </ul>
                </div>
            </div>
        </div>