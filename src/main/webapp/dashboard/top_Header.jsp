<!-- 	header section start -->

<%
	String name = (String)session.getAttribute("uName");
	out.print(name);
%>
        <div class="header">
			<div class="header-left">
				<a href="javascript:void()" class="logo">
					<img src="image/logo.png" width="35" height="35" alt=""> <span>E-Barber</span>
				</a>
			</div>
			<div class="mt-2">
			<a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
            <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a></div>
            <ul class="nav user-menu float-right">
                <li class="nav-item dropdown d-none d-sm-block ">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i> <span class="badge badge-pill bg-danger float-right" style="margin-top: 5px; margin-left: -5px;">0</span>
                    </a>
                    <!-- <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header">
                            <span>Notifications</span>
                        </div>
                    </div> -->
                </li>
                <li class="nav-item dropdown d-none d-sm-block">
                    <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link">
                        <i class="fa fa-comment-o"></i> <span class="badge badge-pill bg-danger float-right"style="margin-top: 5px; margin-left: -5px;">0</span>
                    </a>
                </li>
                <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                        <span class="user-img">
							<img class="rounded-circle" src="image/user-03.jpg" alt="Admin">
							<span class="status online"></span>
						</span>
						<span><%out.print(name); %></span>
                    </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="javascript:void()">My Profile</a>
						<a class="dropdown-item" href="javascript:void()">Edit Profile</a>
						<a class="dropdown-item" href="javascript:void()">Settings</a>
						<a class="dropdown-item" href="http://localhost:2020/webcont/logOut">Logout</a>
					</div>
                </li>
            </ul>
        </div>