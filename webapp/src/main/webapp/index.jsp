<!DOCTYPE html>
<html>
<head>
	
	<title>Form</title>
</head>
<body>
	<form action="formsave.php" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>Personal Information</legend>
			<label>Name</label>
			<input type="text" ><br><br>
			<label>Mobile No.</label>
			<input type="number"><br><br>
			<label>DOB</label>
			<input type="date" ><br><br>
			<label>Email</label>
			<input type="email" ><br><br>
			<label>Gender</label>
			<input type="radio" option=""><b>Male</b>
			<input type="radio" option=""><b>Female</b><br><br>

		</fieldset>
		<fieldset>
			<legend>Address</legend>
			<label>Address</label>
			<textarea></textarea><br><br>
			<label>State</label>
			<select>
				<option>Choose</option>
				<option>Maharashtra</option>
				<option>Gujrta</option>
				<option>Rajashtan</option>
			</select><br><br>
			<label>Dist</label>
			<input type="text"><br><br>
			<label>Tal</label>
			<input type="text"><br><br>
			<label>Pincode</label>
			<input type="number"><br><br>

		</fieldset>
		<fieldset>
			<legend>Course</legend>
			<label>Course Name</label>
			<select>
				<option>Front End</option>
				<option>Back End</option>
				<option>DB</option>
			</select><br><br>
			<label>Subject</label>
			html <input type="checkbox" >
			CSS <input type="checkbox" >
			Bootstrap <input type="checkbox" >	<br><br>
		</fieldset>
		<fieldset>
			<legend>Userdetails</legend>
			<label>Username</label>
			<input type="text"><br><br>
			<label>Password</label>
			<input type="Password">
		</fieldset>
		<fieldset>
			<input type="reset">
			<input type="submit">
		</fieldset>
	</form>

</body>
</html>
