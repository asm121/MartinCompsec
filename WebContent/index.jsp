<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Welcome to my Personal Site">
    <meta name="author" content="Austin Martin's Personal Site">
    <title>Austin Martin</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style media="screen" type="text/css">
	#center{
           text-align: center;
            margin: 0;
            padding: 0;

        }
        #intro{

            font-size: 450%;
        }
		
		#vertical{
			position: fixed;
			top: 20%;
			left:46%;
		}
	
		#top{
				margin:10px;
			    border-radius: 0;
		}
		
		#modalb{
				margin:10px;
				border-radius: 0;
		}	
		.footer {
		  position: absolute;
		  right: 0;
		  bottom: 0;
		  left: 0;
		  padding: 1rem;
		  background-color: #efefef;
		  text-align: center;
		}
		
			#modalSearch{
			width:100% !important;
			left:0 !important;
		}
		
		#modalsubmit{
		 	border-style: none;
		 	margin-bottom: 2%;
		} 
		 
		#searchresults{
			float:left;
		}
		
		#frame{
		    margin-top: 15px;
		    padding: 0;
		    border: none;
		    width: 97.5vw;
		    height: 67vh;
		    overflow-y: hidden;
		}
		
		#modalsubmit{
			background-color: #222222;
			color:GREY;
			transition-duration: .1s;
			transition-timing-function: ease-in;
		}
		
		#modalsubmit:hover{
			color:WHITE;
		}
		
		#modal{
			background-color: #222222;
			border-color: #222222;
			outline-color: #222222;
			color:WHITE;
			margin-bottom:-15px;
		}
	
	</style>
</head>
	<body>
		<div class="container-fluid">
	    	<div class="row">
	        	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="mainPanel"></div>
	    	</div>
		</div>
		<div class="content">
			<div id="center">
				<h1 id="intro">Password Implementer/Verifier/Cracker</h1>
				<div id = "vertical" class="btn-group-vertical">
					<button id= "top" type="button" class="btn btn-primary btn-lg gradient">Log In</button>
					<button type="button" class="btn btn-primary btn-lg gradient" data-toggle="modal" data-target="#myModal" id="modalb">Create A Profile</button>
					<!-- To Create A new Profile -->
		   				<form id="upload" method="post">
		    				<div id="myModal" class="modal fade" role="dialog">
		  						<div class="modal-dialog">
		    						<div class="modal-content" style="background: #fff">
		    							<div class="modal-header">
		        							<button type="button" class="close" data-dismiss="modal">&times;</button>
		        							<h4 class="modal-title">Create A Profile</h4>
		      							</div>
		      							<div class="modal-body">
		        							<div class="input-group input-group" id="modalSearch">
		  										<input type="text" class="form-control" id="modalInput" name="username" placeholder="Username">
											</div>
										<div class="input-group input-group" id="modalSearch">
		  									<input type="text" class="form-control" id="modalInput" name="password" placeholder="Password">
										</div>
										<button class="btn btn-default" id="modalsubmit">Submit</button>	
		      						</div> 
								</div>
		  					</div>
						</div>
					</form>
				</div>
			</div>	
		</div>
		<div class="footer">Created by <strong>Austin Martin</strong></div>
		<script type="text/javascript">	
	    //closing the modal on submit
	    $('#myModal').modal('toggle'); //or  $('#IDModal').modal('hide');
	    
	    $(document).ready(function() {
	        $("#myModal").modal();
	      });
	    
		//End of search function and JS
		</script>	
	</body>
</html>
