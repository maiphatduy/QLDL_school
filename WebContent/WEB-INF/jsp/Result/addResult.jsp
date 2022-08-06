<%@ page pageEncoding="UTF-8" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<a onclick="window.history.go(-1); return false;" class="my-3"><i
	class="fa-solid fa-left-long"></i> Back</a>
<div
	class="app-card shadow-sm d-flex flex-column justify-content-center p-5">

	<form id="basic-form" method="post" action="/addResult" class="g-3">
		<div class="text-center">
			<h4>Add a new Result</h4>
			<p>Please complete all information</p>
		</div>
		<div class="mb-3">
			<label>Point:</label> <input type="text" class="form-control"
				name="Point" id="Point" placeholder="Point" value="">
				<p id="demo" class="text-danger"></p>
			<div class="valid-feedback">Looks good!</div>
		</div>
		<div class="mb-3">
			<label>StudentId:</label> <input type="number" class="form-control"
				name="StudentId" placeholder="StudentId" value="" required>
			<div class="valid-feedback">Looks good!</div>
		</div>
		<div class="mb-3">
			<label>NameSubject:</label> <select class="form-select"
				name="SubjectId" aria-label="select example" required>
				<option value="">Open this select Subject Menu</option>
				<c:forEach var="DataSubject" items="${requestScope.DataSubject}">
					<!--m? vòng l?p for -->
					<option value="${DataSubject.SubjectId}">${DataSubject.NameSubject}</option>
				</c:forEach>
			</select>
			<div class="invalid-feedback">Please choose one</div>
		</div>
		<button class="btn btn-primary text-white " id="myButton" onclick="myFunction()">Add</button>

	</form>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script>
function myFunction() {
  // Get the value of the input field with id="numb"
  let x = document.getElementById("Point").value;
  // If x is Not a Number or less than one or greater than 10
  let text;
  if (isNaN(x)||  x <= 0 || x >= 10) {	
    text = "Point is >=0 & <=10";
  }else{
	  text = "Input OK";
  }
  document.getElementById("demo").innerHTML = text;
}
</script>