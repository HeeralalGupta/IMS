<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<%@ include file="common/head.jsp"%>
<body>
	<div class="wrapper">

		<!-- Main Header Start -->
		<%@ include file="common/header.jsp"%>

		<!-- Main Header End -->

		<!-- Sidebar Start-->
		<%@ include file="common/sidebar.jsp"%>

		<!-- Side bar End-->

		<!-- Main Body Start -->
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">Dashboard</h4>
					<div class="row">
						<div class="col-md-3">
							<div class="card card-stats card-warning">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-users"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">Total Supplier</p>
												<h4 class="card-title">1,294</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-success">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-bar-chart"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">Sales</p>
												<h4 class="card-title">$ 1,345</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-danger">
								<div class="card-body">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-cart-arrow-down"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">Total Products</p>
												<h4 class="card-title">1303</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats card-primary">
								<div class="card-body ">
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-check-circle"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">Order</p>
												<h4 class="card-title">576</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="row row-card-no-pd">
						<div class="col-md-4">
							<div class="card">
								<div class="card-body">
									<p class="fw-bold mt-1">My Balance</p>
									<h4>
										<b>$ 3,018</b>
									</h4>
									<a href="#"
										class="btn btn-primary btn-full text-left mt-3 mb-3"><i
										class="la la-plus"></i> Add Balance</a>
								</div>
								<div class="card-footer">
									<ul class="nav">
										<li class="nav-item"><a class="btn btn-default btn-link"
											href="#"><i class="la la-history"></i> History</a></li>
										<li class="nav-item ml-auto"><a
											class="btn btn-default btn-link" href="#"><i
												class="la la-refresh"></i> Refresh</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-5">
							<div class="card">
								<div class="card-body">
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">Profit</span> <span
												class="text-muted fw-bold"> $3K</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 78%" aria-valuenow="78" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="78%"></div>
										</div>
									</div>
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">Orders</span> <span
												class="text-muted fw-bold"> 576</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 65%" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="65%"></div>
										</div>
									</div>
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">Tasks Complete</span> <span
												class="text-muted fw-bold"> 70%</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-primary" role="progressbar"
												style="width: 70%" aria-valuenow="70" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="70%"></div>
										</div>
									</div>
									<div class="progress-card">
										<div class="d-flex justify-content-between mb-1">
											<span class="text-muted">Open Rate</span> <span
												class="text-muted fw-bold"> 60%</span>
										</div>
										<div class="progress mb-2" style="height: 7px;">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 60%" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" data-toggle="tooltip"
												data-placement="top" title="60%"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="card card-stats">
								<div class="card-body">
									<p class="fw-bold mt-1">Statistic</p>
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center icon-warning">
												<i class="la la-pie-chart text-warning"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">Number</p>
												<h4 class="card-title">150GB</h4>
											</div>
										</div>
									</div>
									<hr />
									<div class="row">
										<div class="col-5">
											<div class="icon-big text-center">
												<i class="la la-heart-o text-primary"></i>
											</div>
										</div>
										<div class="col-7 d-flex align-items-center">
											<div class="numbers">
												<p class="card-category">Followers</p>
												<h4 class="card-title">+45K</h4>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header ">
									<h4 class="card-title">All Products</h4>
									<p class="card-category">Product Lists</p>
								</div>
								<div class="card-body">
									<p class="card-category">Select No. of Rows</p>
									<div class="d-flex">
										<div class="form-group">
											<!--		Show Numbers Of Rows 		-->
											<select class="form-control" name="state" id="maxRows">
												<option value="5000">Show ALL Rows</option>
												<option value="5">5</option>
												<option value="10">10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="50">50</option>
												<option value="70">70</option>
												<option value="100">100</option>
											</select>
										</div>

										<div class="form-group d-flex ml-md-auto">
											<input type="text" id="search"
												class="form-control input-square" id="squareInput"
												placeholder="Search..." required>
											<div class="input-group-append">
												<span class="input-group-text"> <i
													class="la la-search search-icon"></i>
												</span>
											</div>
										</div>
									</div>
									<table
										class="table table-head-bg-success table-striped table-hover"
										id="table-id">
										<thead class="text-center">
											<tr>
												<th scope="col">S.No.</th>
												<th scope="col">Item Name</th>
												<th scope="col">Price(&#x20B9;)</th>
												<th scope="col">Quantity</th>
											</tr>
										</thead>
										<tbody class="text-center" id="myTable">
											<c:forEach var="product" items="${products}" varStatus="sno">
												<tr>
													<td>${sno.count}</td>
													<td>${product.name}</td>
													<td>${product.price}</td>
													<td>${product.quantity}</td>
													
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<!-- Start Pagination Control-->
									<div class="card-body">
										<ul class="pagination pg-primary">
											<li class="page-item" data-page="prev"><a
												class="page-link" href="#" aria-label="Previous"> <span
													aria-hidden="true">&laquo;</span> <span class="sr-only">(current)</span>
											</a></li>

											<li class="page-item" data-page="next" id="prev"><a
												class="page-link" href="#" aria-label="Next"> <span
													aria-hidden="true">&raquo;</span> <span class="sr-only">(current)</span>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Main Body End -->

				</div>
			</div>
			<!-- Modal -->
			<div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog"
				aria-labelledby="modalUpdatePro" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header bg-primary">
							<h6 class="modal-title">
								<i class="la la-frown-o"></i> Under Development
							</h6>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body text-center">
							<p>
								Currently the pro version of the <b>Ready Dashboard</b>
								Bootstrap is in progress development
							</p>
							<p>
								<b>We'll let you know when it's done</b>
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>

			<!-- Footer Start -->
			<%@ include file="common/footer.jsp"%>
			<!-- Footer End -->
		</div>
	</div>
</body>
<%@ include file="common/script-link.jsp"%>
</html>