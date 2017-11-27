<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="Welcome to my Personal Site">
	    <meta name="author" content="Austin Martin's Personal Site">
	    <title>Austin Martin</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
					top: 13%;
					left:44.5%;
					margin-top:30px;
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

				.modal-backdrop {
				  z-index: -1;
				}
		
				#cracker{
					position: relative; 
					left: 40%;
					
				}
				#crackButton{
					left: -3%;
  					position: relative;
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
				<div id = "vertical" class="btn-group-vertical" id="intro">
					<button onclick="login()" id= "top" type="button" class="btn btn-primary btn-lg gradient" >Log In</button>
					<button type="button" class="btn btn-primary btn-lg gradient" data-toggle="modal" data-target="#myModal" id="modalb">Create A Profile</button>
					<button onclick="cracker()" id="modalb" type="button" class="btn btn-primary btn-lg gradient" >Crack The Password</button>
			      	<h1><c:out value="${data}"/></h1>
			      	<h1><c:out value="JSTL tags works."></c:out></h1>
			        <c:set var="someVar" value="JSTL tags work"/>
					<c:out value="${someVar}"/>
			    	  	
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
		        							<div class="input-group input-group" id="modalSearch" style="margin-bottom: 10px;">
		  										<input  type="text" class="form-control" id="modalInput" name="username" placeholder="Username">
											</div>
										<div class="input-group input-group" id="modalSearch">
		  									<input type="text" class="form-control" id="modalInput" name="password" placeholder="Password">
										</div>
										<button class="btn btn-primary" id="modalsubmit" style="margin:10px;">Submit</button>	
		      						</div> 
								</div>
		  					</div>
						</div>
					</form>
				</div>
			</div>	
		</div>
		<!--  Start of login -->
		<div id=login style="display:none">
			<input  type="text" class="form-control" name="username" placeholder="Username" style="width: 20%; align-content: center; position: relative; left: 40%; margin-bottom: 10px; margin-top: 30px;">
			<div style="position: relative; left: 40%;">
				<input type="text" class="form-control" name="password" placeholder="Password" style="width: 20%; margin-bottom: 10px;" type="text">
				<button type="button" class="btn btn-primary" style="position: relative; left: 314px;">Submit</button>
				<button onclick="back()" type="button" class="btn btn-primary" style="position: relative; left: 314px;">Back</button>
			</div>
		</div>
		<!--  End of Login JSP -->
		
		<!--  Start of Cracker JSP -->
		<div id="cracker" style ="display:none">
			<div>
				<h1>Password Cracker</h1>
				<div id="crackButton">
					<button type="button" class="btn btn-primary btn-lg">Crack Type 1 Passwords</button>
					<button type="button" class="btn btn-primary btn-lg">Type Type 2 Passwords</button>
					
					<div class="btn-group">
					    	<div class="dropdown-menu">
							    <a class="dropdown-item" href="#">PW File 1 (EDIT THIS)</a>			   
							</div>
					</div>
					<button onclick="back()" type="button" class="btn btn-primary" style="position: relative; left: 314px;">Back</button>
				</div>
			</div>
		</div>
		<!--  End of Cracker JSP -->
		<div class="footer">Created by <strong>Austin Martin</strong></div>
		<script type="text/javascript">	
	    //closing the modal on submit
	    function login() {
		    var x = document.getElementById("vertical");
		    var y = document.getElementById("login");
		    	y.style.display= "inline";
		        x.style.display = "none";
		    }
	    
	    function back() {
	    	  var x = document.getElementById("vertical");
			   var y = document.getElementById("login");
			   var z = document.getElementById("cracker"); 
			    	y.style.display= "none";
			        x.style.display = "inline";
			        z.style.display= "none";
	    	
	    }
	    
	    function cracker(){
	  	  var y = document.getElementById("vertical");
		    var x = document.getElementById("cracker");
		    	y.style.display= "none";
		        x.style.display = "inline";
	    	
	    	
	    }
		//End of search function and JS
		</script>	
	</body>
</html>
