<!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->
<meta name=”viewport” content=”width=device-width, initial-scale=1″ />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="{$baseUrl}/UNLP/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="{$baseUrl}/UNLP/js/menu.js"></script>
<script type="text/javascript">
// JavaScript Document
$(document).ready(main);
 
var contador = 1;
 
function main(){
	$('.menu_bar').click(function(){
		// $('nav').toggle(); 
 
		if(contador == 1){
			$('nav').animate({
				left: '0'
			});
			contador = 0;
		} else {
			contador = 1;
			$('nav').animate({
				left: '-100%'
			});
		}
 
	});
 
};
</script>

<link rel="stylesheet" type="text/css" href="{$baseUrl}/UNLP/styles/jquery.bxslider.css" />

<link rel="stylesheet" href="{$baseUrl}/UNLP/styles/bootstrap/css/bootstrap.css" >
<link rel="stylesheet" href="{$baseUrl}/UNLP/styles/bootstrap/css/bootstrap.icon-large.css" >

<link rel="stylesheet" href="{$baseUrl}/UNLP/styles/estilosUNLP.css" type="text/css"/>

<!--<link rel="stylesheet" media="(max-width: 500px)" href="{$baseUrl}/UNLP/styles/estilosUNLP.css" />
-->
<script>
/*  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-15165518-48', 'auto');
  ga('send', 'pageview');
*/
</script>


