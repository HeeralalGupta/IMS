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
				<h4 class="page-title">Update Supplier</h4>
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">Update Supplier</div>
							</div>
							<form action = "/update-supplier/${supplier.id}" method = "post">
								<div class="card-body">
									<div class="form-group">
										<label for="squareInput">Supplier Name</label> <input
											type="text" name = "name" value="${supplier.name}" class="form-control input-square"
											id="squareInput" placeholder="Name" required>
									</div>
									<div class="form-group">
										<label for="squareInput">Contact Person Name</label> <input
											type="text" name = "contactPerson" value="${supplier.contactPerson}" class="form-control input-square"
											id="squareInput" placeholder="Contact person name" required>
									</div>
									<div class="form-group">
										<label for="squareInput">Phone Number</label> <input
											type="tel" name = "phoneNumber" maxlength="10" value="${supplier.phoneNumber }" class="form-control input-square"
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
									<button class="btn btn-success" type="submit">Update</button>
								</div>
							</form>
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
</html>