<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<%@ include file = "common/head.jsp" %>
<body>
	<!-- Main Header Start -->
	<%@ include file="common/header.jsp" %>		
	<!-- Main Header End -->
			
	<!-- Side bar Start-->
	<%@ include file="common/sidebar.jsp" %> 
	<!-- Side bar Start End-->
	
	<!-- Main Body Starts -->
	<div class="main-panel">
		<div class="content">
			<div class="container-fluid">
				<h4 class="page-title">Add Supplier</h4>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">Add New Supplier</div>
							</div>
							<form action = "save-supplier" method = "post">
								<div class="card-body">
									<div class="form-group">
										<label for="squareInput">Supplier Name</label> <input
											type="text" name = "name" class="form-control input-square"
											id="squareInput" placeholder="Name" required>
									</div>
									<div class="form-group">
										<label for="squareInput">Contact Person Name</label> <input
											type="text" name = "contactPerson" class="form-control input-square"
											id="squareInput" placeholder="Contact person name" required>
									</div>
									<div class="form-group">
										<label for="squareInput">Phone Number</label> <input
											type="tel" name = "phoneNumber" maxlength="10" class="form-control input-square"
											id="squareInput" placeholder="Phone number" required>
									</div>
									<!-- <div class="form-group">
										<label for="squareSelect">Square Select</label> <select
											class="form-control input-square" id="squareSelect">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
									</div> -->

								</div>
								<div class="card-action">
									<button class="btn btn-success" type="submit">Add</button>
								</div>
							</form>
						</div>	
					</div>
				</div>
				
				<div class="row">	
						<div class="col-md-12">
								<div class="card">
									<div class="card-header ">
										<h4 class="card-title">All Supplier</h4>
									</div>
									<%
										if(session.getAttribute("supplierAddedSuccess")!=null){
											out.print("<script>Swal.fire({ title: 'Supplier Added!', text: 'Thank You!', icon: 'success'});</script>");
											session.removeAttribute("supplierAddedSuccess");
										}
										if(session.getAttribute("updateSuccess")!=null){
											out.print("<script>Swal.fire({ title: 'Supplier Updated!', text: 'Thank You!', icon: 'success'});</script>");
											session.removeAttribute("updateSuccess");
										}
									%>
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
								<table class="table table-head-bg-success table-striped table-hover" id="table-id">
											<thead class="text-center">
												<tr>
													<th scope="col">S.No.</th>
													<th scope="col">Supplier Name</th>
													<th scope="col">Contact Person Name</th>
													<th scope="col">Mobile Number</th>
													<th scope="col" colspan="2">Action</th>
												</tr>
											</thead>
											<tbody class="text-center" id="myTable">
												<c:forEach var="supplier" items="${suppliers}" varStatus="sno">
													<tr>
														<td>${sno.count}</td>
														<td>${supplier.name}</td>
														<td>${supplier.contactPerson}</td>
														<td>${supplier.phoneNumber}</td>
														<td class="text-right">
														    <a href="javascript:void(0);" onclick="deleteSupplier('${supplier.id}')" class="btn btn-danger">Delete</a>
														</td>
														<td class="text-left">
															<form method ="post" action="edit-supplier">
																<input type="hidden" name="supplierId" value="${supplier.id}">
																<button type="submit" class="btn btn-primary">Update</button>
															</form>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<!-- Start Pagination Control-->
										<div class="card-body">										
											<ul class="pagination pg-primary">
												<li class="page-item" data-page="prev">
													<a class="page-link" href="#" aria-label="Previous">
														<span aria-hidden="true">&laquo;</span>
														<span class="sr-only">(current)</span>
													</a>
												</li>
												
												<li class="page-item" data-page="next" id="prev">
													<a class="page-link" href="#" aria-label="Next">
														<span aria-hidden="true">&raquo;</span>
														<span class="sr-only">(current)</span>
													</a>
												</li>
											</ul>
										</div>										
									</div>
								</div>
							</div>
						</div>
				
			</div>
			
		</div>
		<!-- Footer Starts -->
		<%@ include file = "common/footer.jsp" %>
		<!-- Footer End -->
	</div>
	<!-- Main Body Ends -->
	
</body>
<%@ include file = "common/script-link.jsp" %>

<!-- Deleting supplier confirmation --> 
<script>
function deleteSupplier(supplierId){
	Swal.fire({
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Delete'
		}).then((result) => {
		  if (result.isConfirmed) {
		   window.location="/deleteSupplier/"+supplierId;
		  }
		  else{
			  swal("Your job is safe !!!")
		  }
		})
}
</script>

</html>