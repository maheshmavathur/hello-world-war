<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>Hello World!</h1>
	<p>
		<h2> Welcome to DevOps </h2>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
