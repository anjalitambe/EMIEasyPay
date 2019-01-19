<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>EMI Shop | Home</title>
 <!-- Font awesome -->
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="${pageContext.request.contextPath}/resources/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    
</head>
 <body> 
      <!-- wpf loader Two -->
       <div id="wpf-loader-two">          
         <div class="wpf-loader-two-inner">
           <span>Loading</span>
         </div>
       </div> 
       <!-- / wpf loader Two -->       
     <!-- SCROLL TOP BUTTON -->
       <a class="scrollToTop" href=""><i class="fa fa-chevron-up"></i></a>
     <!-- END SCROLL TOP BUTTON -->
   
     <!-- Start header section -->
     <header id="aa-header">
       <!-- start header bottom  -->
       <div class="aa-header-bottom">
         <div class="container">
           <div class="row">
             <div class="col-md-12">
               <div class="aa-header-bottom-area">
                 <!-- logo  -->
                 <div class="aa-logo">
                   <!-- Text based logo -->
                   <a>
                     <span class="fa fa-shopping-cart"></span>
                     <p>EMI<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                   </a>
                 </div>                                  
               </div>
             </div>
           </div>
         </div>
       </div>
       <!-- / header bottom  -->
     </header>
<!-- / header section -->

 <!-- menu -->
 <section id="menu">
    <div class="container">
      <div class="menu-area">
        <!-- Navbar -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>          
          </div>
         <div class="navbar-collapse collapse">                           
            <!-- Left nav -->
           <div class="aa-header-top-center">
             <ul class="nav navbar-nav">
                   <li style="float:right"><a href="Logout">Logout</a></li>             
                <li style="float:right"><a href="Contact">Contact Us</a></li>               
                <li  style="float:right"><a href="Dashboard">My Profile</a></li>                                        
              </ul>
          </div>
        </div>
      </div>       
    </div>
  </section>
<!-- / menu -->  
 
  <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
          <div class="aa-product-catg-content">          
            <div class="aa-product-catg-body">
              <div class="aa-product-catg">
 <!-- Tab panes -->
 <div class="tab-content">

    <!-- Start Furniture product category -->
    <div class="tab-pane fade in active" id="Furniture">
      <ul class="aa-product-catg">

        <!-- start single product item -->
        <li>
          <figure>
          <form:form action="Product-Detail" modelAttribute="product" >
            <form:hidden path="productName"  value="Antique Commode"/>
             <form:hidden path="productPrice"  value="10000"/>
               <form:hidden path="productCategory"  value="Furniture"/>
                 <form:hidden path="unitStock"  value="5"/>
                 <form:hidden path="productDescription"  value="gwdgwghweyedg"/>
            <a class="aa-product-img"><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn1.jpg" alt="frenchrococo img"></a>
          <!--   <a class="aa-add-card-btn" href="Product-Detail">Check Details</a> -->
          <input  class="aa-add-card-btn" type="submit" value="view details">
              <figcaption>
              
              <h4 class="aa-product-title"><!-- <a href="Product-Detail"> --> Antique Commode</a></h4>
              <span class="aa-product-price" path=>Rs.10000/-</span>
           
          
              
            </figcaption>
             </form:form>
          </figure>                                           
        </li> 

        <!-- start single product item -->
        <li>
          <figure>
            <form:form action="Product-Detail" modelAttribute="product" >
            <form:hidden path="productName"  value="BunkBed"/>
             <form:hidden path="productPrice"  value="9000"/>
               <form:hidden path="productCategory"  value="Furniture"/>
                 <form:hidden path="unitStock"  value="3"/>
                 <form:hidden path="productDescription"  value="blaaaaqaaaaaaa"/>
           <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn2.jpg" alt="bunkbeds img"></a> 
            <input  class="aa-add-card-btn" type="submit" value="View details">              
            <figcaption>
             <h4 class="aa-product-title"><a href="Product-Detail">BunkBed</a></h4>
             <span class="aa-product-price">Rs.9000/-</span>
            </figcaption>
             </form:form>
          </figure>                                                      
        </li>

        <!-- start single product item -->
        <li>
          <figure>
          <form:form action="Product-Detail" modelAttribute="product" >
            <form:hidden path="productName"  value="Baby's Crib"/>
             <form:hidden path="productPrice"  value="27000"/>
               <form:hidden path="productCategory"  value="Furniture"/>
                 <form:hidden path="unitStock"  value="12"/>
                 <form:hidden path="productDescription"  value="blaaaaaaqaaaaaaa"/>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn3.jpg" alt="babycrib img"></a> 
            <input  class="aa-add-card-btn" type="submit" value="View details">                            
             <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Baby's Crib</a></h4>
              <span class="aa-product-price">Rs.27000/-</span>
            </figcaption>
             </form:form>
          </figure>                                 
        </li>

        <!-- start single product item -->
        <li>
          <figure>
          <form:form action="Product-Detail" modelAttribute="product" >
            <form:hidden path="productName"  value="French Bed"/>
             <form:hidden path="productPrice"  value="25000"/>
               <form:hidden path="productCategory"  value="Furniture"/>
                 <form:hidden path="unitStock"  value="10"/>
                 <form:hidden path="productDescription"  value="blaaaahgvbvqaaaaaaa"/>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn4.jpg" alt="FrenchBed img"></a>
            <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>                            
            <input  class="aa-add-card-btn" type="submit" value="View details"> 
            <figcaption>
               
              <h4 class="aa-product-title"><a href="Product-Detail">French Bed</a></h4>
              <span class="aa-product-price">Rs.25000</span>
              </form:form>
            </figcaption>
          </figure>                                                         
        </li>

        <!-- start single product item -->
        <li>
          <figure>
            <form:form action="Product-Detail" modelAttribute="product" >
            <form:hidden path="productName"  value="Dog PuffyBed"/>
             <form:hidden path="productPrice"  value="52550"/>
               <form:hidden path="productCategory"  value="Furniture"/>
                 <form:hidden path="unitStock"  value="10"/>
                 <form:hidden path="productDescription"  value="blaaaahgvbvqaaaaaaa"/>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn5.jpg" alt="dogbed img"></a> 
            <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>  
            <input  class="aa-add-card-btn" type="submit" value="View details">                         
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Dog PuffyBed</a></h4>
              <span class="aa-product-price">Rs.52550/-</span>
            </figcaption>
            </form:form>
          </figure>                                 
        </li>

        <!-- start single product item -->
        <li>
          <figure>
           <form:form action="Product-Detail" modelAttribute="product" >
            <form:hidden path="productName"  value="Retro Chair"/>
             <form:hidden path="productPrice"  value="5000"/>
               <form:hidden path="productCategory"  value="Furniture"/>
                 <form:hidden path="unitStock"  value="10"/>
                 <form:hidden path="productDescription"  value="blaaaahgvbvqaaaaaaa"/>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn6.jpg" alt="Retrochair img"></a>
            <input  class="aa-add-card-btn" type="submit" value="View details">                         
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">RetroChair</a></h4>
              <span class="aa-product-price">Rs.5000/-</span>
            </figcaption>
            </form:form>
          </figure>                                 
        </li>

        <!-- start single product item -->
        <li>
          <figure>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn7.jpg" alt="Coffeetable img"></a>
            <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>                           
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Low CoffeeTable</a></h4>
              <span class="aa-product-price">Rs.7000/-</span>
            </figcaption>
          </figure>                                                           
        </li>

        <!-- start single product item -->
        <li>
          <figure>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/Furniture/furn8.jpg" alt="bubblechair img"></a>
            <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>                            
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">BubbleChair</a></h4>
              <span class="aa-product-price">Rs.8500/-</span>
            </figcaption>
          </figure>                                                   
        </li>                        
      </ul>   
    </div>
    <!-- / furniture product category -->

     <!-- start wristwatch product category -->
     <div class="tab-pane fade" id="wristwatch">
        <ul class="aa-product-catg">

          <!-- start single product item -->
          <li>
            <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc1.jpg" alt="watch"></a> 
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>         
              <figcaption>
                <h4 class="aa-product-title"><a href="Product-Detail">Slim Full Black Magnet Strap</a></h4>
                <span class="aa-product-price">Rs.7000/-</span>
              </figcaption>
            </figure>                         
         </li>

          <!-- start single product item -->
          <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc2.jpg" alt="watch"></a>
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>          
                <figcaption>
                    <h4 class="aa-product-title"><a href="Product-Detail">Slim Full Black Magnet Strap</a></h4>
                    <span class="aa-product-price">Rs.7000/-</span>
                </figcaption>
              </figure>                         
           </li>

          <!-- start single product item -->
          <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc3.jpg" alt="watch"></a> 
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>         
                <figcaption>
                  <h4 class="aa-product-title"><a href="Product-Detail">Women's watch by casio</a></h4>
                  <span class="aa-product-price">Rs.7000/-</span>
                </figcaption>
              </figure>                         
           </li>

          <!-- start single product item -->
          <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc4.jpg" alt="watch"></a> 
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>         
                <figcaption>
                  <h4 class="aa-product-title"><a href="Product-Detail">Brown Leather Strap Wrist Watch</a></h4>
                  <span class="aa-product-price">Rs.10000/-</span>
                </figcaption>
              </figure>                         
           </li>

          <!-- start single product item -->
          <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc5.jpg" alt="watch"></a>  
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>        
                <figcaption>
                  <h4 class="aa-product-title"><a href="Product-Detail">Diouz Women's watch</a></h4>
                  <span class="aa-product-price">Rs.8000/-</span>
                </figcaption>
              </figure>                         
           </li>

           <!-- start single product item -->
           <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc6.jpg" alt="watch"></a>    
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>      
                <figcaption>
                  <h4 class="aa-product-title"><a href="Product-Detail">Crystal Quartz Women's watch</a></h4>
                  <span class="aa-product-price">Rs.12000/-</span>
                </figcaption>
              </figure>                         
           </li>

          <!-- start single product item -->
          <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc7.jpg" alt="watch"></a>  
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>        
                <figcaption>
                  <h4 class="aa-product-title"><a href="Product-Detail">Bracelate watch</a></h4>
                  <span class="aa-product-price">Rs.9000/-</span>
                </figcaption>
              </figure>                         
           </li>

          <!-- start single product item -->
          <li>
              <figure>
                <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/watches/wtc8.jpg" alt="watch"></a> 
                <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>         
                <figcaption>
                  <h4 class="aa-product-title"><a href="Product-Detail">Rolex</a></h4>
                  <span class="aa-product-price">Rs.25000/-</span>
                </figcaption>
              </figure>                         
           </li> 
           </ul>   
     </div>                          
      <!-- / watches product category -->      
   
    <!-- start electronic product category -->
    <div class="tab-pane fade" id="electronics">
       <ul class="aa-product-catg">
        <!-- start single product item -->
        <li>
          <figure>
            <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect1.jpg" alt="Electronics"></a>
            <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Iphone X</a></h4>
              <span class="aa-product-price">Rs.60000/-</span>
            </figcaption>
          </figure>   
          </li>     

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect2.jpg" alt="Electronics"></a>
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Godrej Front Load Automatic Washing Machine</a></h4>
              <span class="aa-product-price">Rs.15000/-</span>
            </figcaption>
          </figure>                                    
        </li>

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect3.jpg" alt="Electronics"></a>
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Prestige Juicer Mixer Grinder</a></h4>
              <span class="aa-product-price">Ra.13000/-</span>
            </figcaption>
          </figure>                                                   
        </li>

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect4.jpg" alt="Electronics"></a>
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Whirlpool French Door Refrigerator</a></h4>
              <span class="aa-product-price">Rs.20000/-</span>
            </figcaption>
          </figure>                          
        </li>

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect5.jpg" alt="Electronics"></a>
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">espresso machine</a></h4>
              <span class="aa-product-price">Rs.12000/-</span>
            </figcaption>
          </figure>                           
        </li>

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect6.jpg" alt="Electronics"></a> 
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a> 
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Microwave Oven</a></h4>
              <span class="aa-product-price">Rs.15000/-</span>
            </figcaption>
          </figure>                                  
        </li>

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect7.jpg" alt="electronics"></a>  
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>  
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Xiaomi Redmi Note 4x</a></h4>
              <span class="aa-product-price">Rs.12000/-</span>
            </figcaption>
          </figure>                            
        </li>

        <!-- start single product item -->
        <li>
          <figure>
              <a class="aa-product-img" ><img src="${pageContext.request.contextPath}/resources/img/electronics/ect8.jpg" alt="polo shirt img"></a> 
              <a class="aa-add-card-btn"href="Product-Detail">Check Details</a>     
            <figcaption>
              <h4 class="aa-product-title"><a href="Product-Detail">Whirlpool 305 IMFresh</a></h4>
              <span class="aa-product-price">Rs.12000/-</span>
            </figcaption>
          </figure>                           
        </li>                        
      </ul>      
    </div>
    </div>                                              
              </div>            
            </div>           
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Category</h3>
              <ul class="nav nav-tabs aa-products-tab">
                  <li class="active"><a href="#Furniture" data-toggle="tab">Furniture</a></li>
                  <li><a href="#wristwatch" data-toggle="tab">Wrist-watches</a></li>                   
                  <li><a href="#electronics" data-toggle="tab">Electronics</a></li>
              </ul>
            </div>
          </aside>
        </div>      
      </div>
    </div>
  </section>
  <!-- / product category -->
  
<!-- footer -->  
  <footer id="aa-footer">
      <!-- footer bottom -->
      <div class="aa-footer-top">
       <div class="container">
          <div class="row">
          <div class="col-md-12">
            <div class="aa-footer-top-area">
              <div class="row">
                  <div class="col-md-3 col-sm-6">
                      <div class="aa-footer-widget">
                        <div class="aa-footer-widget">  
                          <ul class="aa-footer-nav">
                            <li><a href="Info">Eligibility</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">       
                    <ul class="aa-footer-nav">
                      <li><a href="Info">Charges</a></li> 
                    </ul>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">
                    <div class="aa-footer-widget">  
                      <ul class="aa-footer-nav">
                        <li><a href="CardDetails">EMI Card Details</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6">
                  <div class="aa-footer-widget">
                    <div class="aa-footer-widget">     
                      <ul class="aa-footer-nav">
                        <li><a href="Info">Terms and conditions apply</a></li>    
                      </ul>
                    </div>
                  </div>
                </div>  
              </div>
            </div>
          </div>
        </div>
       </div>
      </div>
   </footer>   
 
   <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="${pageContext.request.contextPath}/resources/js/sequence.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>   
</body>
</html>