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
				<h4 class="page-title">Update Products</h4>
				
				<div class="row">

					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">Update Products</div>
							</div>
							<form action = "/update/${product.id}" method = "post">
								<div class="card-body">
									
									<div class="form-group">
										<label for="squareInput">Item Name</label> <input
											type="text" name = "name" value="${product.name}" class="form-control input-square"
											id="squareInput" placeholder="Name" required>
									</div>
									<div class="form-group">
										<label for="squareInput">Price</label> <input
											type="number" name = "price" value="${product.price}" class="form-control input-square"
											id="squareInput" placeholder="Price" required>
									</div>
									<div class="form-group">
										<label for="squareInput">Quantity</label> <input
											type="number" name = "quantity" value="${product.quantity}" class="form-control input-square"
											id="squareInput" placeholder="Quantity" required>
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
	</div>
	<!-- Main Body Ends -->
		
	<!-- Footer Starts -->
	<%@ include file = "common/footer.jsp" %>
	<!-- Footer End -->
</body>
<%@ include file = "common/script-link.jsp" %>
</html>