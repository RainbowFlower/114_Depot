// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$j(document).ready(function(){
	$j(".carousel").carousel({interval: 4000});
	
	$j(".carts").hover(
		function() {
			$j(".cart-content").show("fast");
		},
		function() {
			$j(".cart-content").hide("fast");
		}
	);
});