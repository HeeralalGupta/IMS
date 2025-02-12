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
				<h4 class="page-title">Purchase</h4>
				
			<form action="cart" method="post">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">Purchase Details</div>
							</div>
									<% 
									    if (session.getAttribute("itemExist") != null) { 
									%>
									    <script>
									        Swal.fire({
									            title: "Item already in cart!",
									            text: "Thank You!",
									            icon: "warning"
									        });
									    </script>
									<% 
									        session.removeAttribute("itemExist"); // Remove session attribute after displaying message
									    } 
									%>
									<% 
									    if (session.getAttribute("itemSuccess") != null) { 
									%>
									    <script>
									        Swal.fire({
									            title: "Item added to cart!",
									            text: "Thank You!",
									            icon: "success"
									        });
									    </script>
									<% 
									        session.removeAttribute("itemSuccess"); // Remove session attribute after displaying message
									    } 
									%>
								<!-- 	Success order -->
								<% 
									    if (session.getAttribute("successOrder") != null) { 
									%>
									    <script>
									        Swal.fire({
									            title: "Order Success!",
									            text: "Thank You!",
									            icon: "success"
									        });
									    </script>
									<% 
									        session.removeAttribute("successOrder"); // Remove session attribute after displaying message
									    } 
									%>
								<!-- cart empty -->
								<% 
									    if (session.getAttribute("cartEmpty") != null) { 
									%>
									    <script>
									        Swal.fire({
									            title: "Sorry! your cart is empty",
									            text: "Thank You!",
									            icon: "warning"
									        });
									    </script>
									<% 
									        session.removeAttribute("cartEmpty"); // Remove session attribute after displaying message
									    } 
									%>
								<div class="card-body d-md-flex">
									
									<div class="col-md-3 col-sm-6">
									    <div class="form-group">
									        <label for="squareSelect">Item</label>
									        <select name="productId" class="form-control input-square" id="squareSelect" onchange="getPrice(this.value)" required>
									            <option value="" selected disabled>Select Item</option> <!-- Ensure value is empty -->
									            <c:forEach var="products" items="${productList}">
									                <option value="${products.id}">${products.name}</option>
									            </c:forEach>
									        </select>
									        <span id="error-message" style="color: red; display: none;">Please select an item.</span> <!-- Error message -->
									    </div>
									</div>

									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareInput">Rate</label> <input type="number"
												name="rate" class="form-control input-square"
												id="rate" placeholder="Rate" readonly required>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareInput">Quantity</label> <input type="tel"
												name="qty" class="form-control input-square"
												id="qty" placeholder="Quantity" onkeyup="findTotal()" required>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareInput">Total</label> <input type="number"
												name="tota" class="form-control input-square" 
												id="total" placeholder="Total" readonly required>
										</div>
									</div>

								</div>
								<!-- ================= Adding Cart Button ================= -->
								<div class="card-action">
									<input type= "submit" class="btn btn-success float-right" value="Add To Cart">
								</div>
						</div>
					</div>
				</div>
			</form>
			
			<form action="/purchase" method="post">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="card-title">Choose Supplier</div>
							</div>
								
								<div class="card-body d-md-flex">
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareInput">Invoice No.</label> <input type="number"
												name="invoice" class="form-control input-square"
												id="squareInput" placeholder="Invoice" readonly required>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareInput">Current Date</label> <input type="date"
												name="date" class="form-control input-square"
												id="date" placeholder="Date" readonly required>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareSelect">Supplier</label> <select name= "supplierId"
												class="form-control input-square" id="supplier" onchange="chooseAddress(this.value)"  required>
												<option disabled selected>Select Supplier</option>
												<c:forEach var="suppliers" items= "${supplier}">
													<option value="${suppliers.id}">${suppliers.name}</option>
												</c:forEach>
												<span id="error-message" style="color: red; display: none;">Please select supplier.</span> <!-- Error message -->
											</select>
										</div>
									</div>
									<div class="col-md-3 col-sm-6">
										<div class="form-group">
											<label for="squareInput">Address</label> <input type="text"
												name="address" class="form-control input-square"
												id="address" placeholder="Address" readonly required>
										</div>
									</div>
								</div>
								
								<div class="card-header">
									<div class="card-title">Your Cart</div>
								</div>
								<div class="card-action">
									<table
										class="table table-head-bg-primary table-striped table-hover""
										id="table-id">
										<thead class="text-center">
											<tr>
												<th scope="col">Item Name</th>
												<th scope="col">Rate(&#x20B9;)</th>
												<th scope="col">Quantity</th>
												<th scope="col">Total</th>
												<th scope="col">Action</th>
											</tr>
										</thead>
										<tbody class="text-center" id="myTable">
										
										<c:set var="sum" value="0.0" />
										<tbody class="text-center">
										    <c:choose>
											    <c:when test="${not empty purchaseTempList}">
											        <c:forEach var="purchaseTemp" items="${purchaseTempList}">
											            <tr>
											                <td>${purchaseTemp.itemName }</td>
											                <td>${purchaseTemp.rate}</td>
											                <td>${purchaseTemp.qty}</td>
											                <td>${purchaseTemp.tota}</td>
											                <td style="font-size:25px;">
											                    <a href="delete?productId=${purchaseTemp.id}" style="text-decoration: none;">
											                        <i class="la la-minus-circle"></i>
											                    </a>
											                </td>
											            </tr>
											            <!-- Accumulate sum -->
											            <c:set var="sum" value="${sum + purchaseTemp.tota}" />
											        </c:forEach>
											    </c:when>
											    <c:otherwise>
											        <tr>
											            <td colspan="5" style="text-align:center; font-weight:bold; color:red;">
											                Your cart is empty.
											            </td>
											        </tr>
											    </c:otherwise>
											</c:choose>

										</tbody>
										
										<tfoot class="text-center bg-primary border text-white w-100" style="font-weight: bold;">
										    <tr>
										        <td colspan="3">Total</td>
										        <td>${sum}</td> <!-- Display total sum -->
										        <td></td>
										    </tr>
										</tfoot>
									</table>
								</div>
								<!-- ================= save data to purchase ================= -->
								<div class="card-action">
									<input type = "submit" class="btn btn-success float-right" name = "purchase" value = "Purchase">
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
	<script>
		let invoice = document.getElementById("squareInput");
		let rand = Math.floor(Math.random() * 900000) + 100000;
		invoice.value=rand;
		
		let date = document.getElementById("date");
		let today = new Date();
	    let formattedDate = today.toISOString().split('T')[0]; // YYYY-MM-DD format
	   	date.value = formattedDate;
	    
	</script>
	<script>
	

	// Getting Address Dynamically
		chooseAddress = (selectedValue) => {
		    $.ajax({
		        type: "POST",
		        url: "/fetchAddress",  // Spring Boot API endpoint
		        contentType: "application/json",
		        data: JSON.stringify({ supplierId: selectedValue }),  // Supplier ID भेजना
		        success: function(response) {
		            $("#address").val(response.address);  // Address इनपुट में सेट करें
		        },
		        error: function(xhr, status, error) {
		            alert("Error: "+ error);
		        }
		    });
		};
		// Fetching product price 
		getPrice = (selectedValue) => {
			document.getElementById("qty").value = 0; // Changing item then make qty 0
			document.getElementById("total").value = 0; // Changing item then make total also 0
			$.ajax({
		        type: "POST",
		        url: "/fetchRate",  // Spring Boot API endpoint
		        contentType: "application/json",
		        data: JSON.stringify({ productId: selectedValue }),  // Supplier ID भेजना
		        success: function(response) {
		            $("#rate").val(response.rate);  // Address इनपुट में सेट करें
		        },
		        error: function(xhr, status, error) {
		            alert("Error: "+ error);
		        }
		    });
		};
		// finding total
		findTotal = () => {
		    // Get values and convert to numbers
		    let rate = parseFloat(document.getElementById("rate").value) || 0;
		    let qty = parseFloat(document.getElementById("qty").value) || 0;
		    
		    // Calculate total
		    let total = rate * qty;
		
		    // Set total value in input field
		    document.getElementById("total").value = total.toFixed(2); // Format to 2 decimal places
		};
		
		// validation data from cart
		document.querySelector("form").addEventListener("submit", function(event) {
	    var selectElement = document.getElementById("squareSelect");
	    var supplier = document.getElementById("supplier");
	    var errorMessage = document.getElementById("error-message");
	
	    if (selectElement.value === "" || supplier.value === "") {
	        errorMessage.style.display = "block"; // Show error message
	        event.preventDefault(); // Stop form submission
	    } else {
	        errorMessage.style.display = "none"; // Hide error message if valid
	    }
	});

		
	</script>
	
</body>
<%@ include file="common/script-link.jsp"%>
</html>