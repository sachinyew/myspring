<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><html>
<head>
<title>jQuery Drop Down Menu</title>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.js"></script>
	<script type="text/javascript">
// Executes the function when DOM will be loaded fully
$(document).ready(function () {	
	// hover property will help us set the events for mouse enter and mouse leave
	$('.navigation li').hover(
		// When mouse enters the .navigation element
		function () {
			//Fade in the navigation submenu
			$('ul', this).fadeIn(); 	// fadeIn will show the sub cat menu
		}, 
		// When mouse leaves the .navigation element
		function () {
			//Fade out the navigation submenu
			$('ul', this).fadeOut();	 // fadeOut will hide the sub cat menu		
		}
	);
});
	</script>
	
 <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/menu.css" type="text/css"></link>
</head>
<body>
<div style="width:650px; margin:0 auto">
 
<ul class="navigation">
	<li><a href="#">Home</a></li>
	<li><a href="#">Book Manage</a>
 		<ul>
			<li><a href="#">Add book</a></li>
			<li><a href="#">Remove Book</a></li>
			<li><a href="#">Update Book</a></li>
		</ul> <div class="clear"></div>
		
	</li>
	<li><a href="#">Reports</a>
	<ul>
		
	</ul>			
		<div class="clear"></div>
	</li>
	<li><a href="<c:url value="j_spring_security_logout" />">Log Out</a></li>
</ul>

<div class="clear"></div>

</div>
</body>
</html>