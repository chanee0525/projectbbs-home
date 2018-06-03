<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Ajax Test Page</h2>

	<ul id="replies">
	</ul>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>

	<script>
		var bno = 12273;
		
		$.getJSON("/replies/all/" + bno, function(data) {
			
			var str = "";
			
			console.log(data.length);
			
			$(data).each(
				function() {
					str += "<li data-rno='"+this.rno+"' class='replyLi'>"
					+this.rno + ":" + this.replytext + "</li>";
					
		});
		
		$("#replies").html(str);
		
			});
		
		</script>
</body>
</html>