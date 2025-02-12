<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="sidebar">
				<div class="scrollbar-inner sidebar-wrapper">
					<div class="user">
						<div class="photo">
							<img src="views/assets/img/profile.jpg">
						</div>
						<div class="info">
							<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									Heera
									<span class="user-level">Administrator</span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample" aria-expanded="true" style="">
								<ul class="nav">
									<li>
										<a href="#profile">
											<span class="link-collapse">My Profile</span>
										</a>
									</li>
									<li>
										<a href="#edit">
											<span class="link-collapse">Edit Profile</span>
										</a>
									</li>
									<li>
										<a href="#settings">
											<span class="link-collapse">Settings</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav">
						<li class='nav-item <c:if test="${active eq 'dashboard'}">active</c:if>'>
							<a href="/">
								<i class="la la-dashboard"></i>
								<p>Dashboard</p>
								<span class="badge badge-count">5</span>
							</a>
						</li>
						<li class='nav-item <c:if test="${active eq 'add-product' or active eq 'save-product'}">active</c:if>'>
							<a href="add-products">
								<i class="la la-plus-circle"></i>
								<p>Products</p>
								<span class="badge badge-count">14</span>
							</a>
						</li>
						<li class='nav-item <c:if test="${active eq 'add-supplier' or active eq 'save-supplier'}">active</c:if>'>
							<a href="add-supplier">
								<i class="la la-users"></i>
								<p>Supplier</p>
								<span class="badge badge-count">50</span>
							</a>
						</li>
						<li class='nav-item <c:if test="${active eq 'purchase' or active eq ''}">active</c:if>'>
							<a href="purchase">
								<i class="la la-bar-chart"></i>
								<p>Purchase</p>
								<span class="badge badge-count">50</span>
							</a>
						</li>
						<li class='nav-item <c:if test="${active eq 'sales' or active eq ''}">active</c:if>'>
							<a href="sales">
								<i class="la la-check-circle"></i>
								<p>Sales</p>
								<span class="badge badge-count">50</span>
							</a>
						</li>
						<li class='nav-item <c:if test="${active eq 'stock' or active eq ''}">active</c:if>'>
							<a href="stock">
								<i class="la la-cart-arrow-down"></i>
								<p>Stock</p>
								<span class="badge badge-count">50</span>
							</a>
						</li>
						
					
						<!-- <li class="nav-item update-pro">
							<button  data-toggle="modal" data-target="#modalUpdate">
								<i class="la la-hand-pointer-o"></i>
								<p>Update To Pro</p>
							</button>
						</li> -->
					</ul>
				</div>
			</div>
			
</body>
</html>