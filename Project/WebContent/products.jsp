<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/home.css"/>
<link rel="stylesheet" type="text/css" href="css/searchBar.css"/>
<script src="js/menu.js"></script>
<title>Insert title here</title>
</head>
<body>

  <form class="search-container">
    <input type="text" id="search-bar" placeholder="What can I help you with today?">
    <a href="#"><img class="search-icon" src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"></a>
  </form>
  
  <a href="#menu" id="toggle"><span></span></a>

<div id="menu">
  <ul>
    <li><a href="#home">Comedy</a></li>
    <li><a href="#about">Drama</a></li>
    <li><a href="#contact">Love</a></li>
    <li><a href="basket.jsp"> Go to Basket </a> </li>
  </ul>
</div>

<div class="productlist-page">
    <div class="container">   
        <div class="row">        
            <div class="col-md-3 col-sm-6">
                <div class="product-grid">
                    <div class="product-image">
                        <a href="#">
                            <img class="photo"
                                src="https://i.ebayimg.com/thumbs/images/g/fWIAAOSwFChd-O4c/s-l225.webp">
                        </a>
                    </div>
                    <div class="product-content">
                        <h3 class="title"><a href="#">Grey's Anatomy</a></h3>
                        <div class="price">9,99 TL
                        </div>
                        <a href="#" class="product-more"> + Add Basket </a>
                    </div>
                </div>
            </div>  
                       
        </div>
    </div>
    <hr>
</div>
</body>
</html>