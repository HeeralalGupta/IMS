<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%@ include file="common/head.jsp"%>
<body>
	<!-- Main Header Start -->
	<%@ include file="common/header.jsp"%>
	<!-- Main Header End -->

	<!-- Side bar Start-->
	<%@ include file="common/sidebar.jsp"%>
	<!-- Side bar Start End-->

	<!-- Main Body Starts -->
	<div class="main-panel">
		<div class="content">
			<div class="container-fluid">
				<h4 class="page-title">Purchase Report</h4>
				<!-- 	Success order -->
				<%
				if (session.getAttribute("successOrder") != null) {
				%>
				<script>
					Swal.fire({
						title : "Order Success!",
						text : "Thank You!",
						icon : "success"
					});
				</script>
				<%
				session.removeAttribute("successOrder"); // Remove session attribute after displaying message
				}
				%>

				<form action="/purchase" method="post">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Seller Information</div>
								</div>

								<div class="card-body">
									<div class="row mx-4 px-4">
										<div class="col-md-3">
											<p style="font-weight: bold;">Order Id</p>
											<p>12345</p>
										</div>
										<div class="col-md-3">
											<p style="font-weight: bold;">Order Date</p>
											<p>12/4/2024</p>
										</div>
										<div class="col-md-3">
											<p style="font-weight: bold;">Supplier Name</p>
											<p>Heera</p>
										</div>
										<div class="col-md-3">
											<p style="font-weight: bold;">Supplier Address</p>
											<p>Ranchi</p>
										</div>
									</div>
								</div>

								<div class="card-header">
									<div class="card-title">Product Information</div>
								</div>
								<div class="card-action">
									<table class="table table-head-bg-primary table-striped table-hover" id="table-id">
										<thead class="text-center">
											<tr>
												<th scope="col">Item Name</th>
												<th scope="col">Rate(&#x20B9;)</th>
												<th scope="col">Quantity</th>
												<th scope="col">Total</th>
												<th scope="col">Date</th>
											</tr>
										</thead>
										<tbody class="text-center" id="myTable">
											<c:set var="sum" value="0.0" />
											<tbody class="text-center">
												<c:forEach var="purchaseTemp" items="${purchaseDetials}">
													<tr>
														<td>${purchaseTemp.itemName}</td>
														<td>${purchaseTemp.rate}</td>
														<td>${purchaseTemp.qty}</td>
														<td>${purchaseTemp.tota}</td>
														<td>${purchaseTemp.date }</td>
													</tr>
													<!-- Accumulate sum -->
													<c:set var="sum" value="${sum + purchaseTemp.tota}" />
												</c:forEach>
										</tbody>
										<tfoot class="text-center bg-primary border text-white w-100"
											style="font-weight: bold;">
											<tr>
												<td colspan="3">Total</td>
												<td>${sum}</td>
												<!-- Display total sum -->
												<td></td>
											</tr>
										</tfoot>
									</table>
								</div>
								
							</div>
						</div>
					</div>

				</form>

			</div>
		</div>
		<!-- Footer Starts -->
		<%@ include file="common/footer.jsp"%>
		<!-- Footer End -->
	</div>
	<!-- Main Body Ends -->


</body>
<%@ include file="common/script-link.jsp"%>
</html>