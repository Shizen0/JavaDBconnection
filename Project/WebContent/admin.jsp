<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/admin.css"/>
</head>
<body>
<div class="admin-panel clearfix">
  <div class="slidebar">
    <div class="logo">
      <a href=""></a>
    </div>
    <ul>
      <li><a href="#dashboard" id="targeted">Get User Info</a></li>
      <li><a href="#removeuser">Remove User</a></li>
      <li><a href="#addDVD">Add DVD</a></li>
      <li><a href="#removeDVD">Remove DVD</a></li>
      <li><a href="home.jsp">Go to Shop</a></li>
      <li><a href="login.jsp">Log Out</a></li> 
    </ul>
  </div>
  <div class="main"> 
    <div class="mainContent clearfix">
      <div id="dashboard">
        <h2 class="header"><span class="icon"></span>Get User Info</h2>
         <div class="quick-press">
           <h4>Search User</h4>
           <form action="" method="post">
             <input type="text" name="title" placeholder="Search user by email"/>
             <button type="submit" class="submit" name="submit">Search</button>
           </form>
         </div>
          <div class="monitor">
            <h4>Right Now</h4>
            <div class="clearfix">
              <ul class="content">
              <ul class="discussions">
                <li>Info</li>
                <li class="uNameSurname"><span class="count">User Name/Surname  :</span><a href="">Beytullah Peker</a></li>
                <li class="email"><span class="count">Email              :</span><a href="">beytullah.peker@hotmail.com</a></li>
                <li class="adres"><span class="count">Adress              :</span><a href="">x mah. y sokak 2342 cad. 82 no 3 apt.</a></li>
                <li class="phone"><span class="count">Phone                  :</span><a href="">123456789</a></li>
              </ul> 
             </ul> 
           </div> 
         </div>  
       </div>
       
       
       
       
       <div id="removeuser"> 
          <h2 class="header"><span class="icon"></span>Remove User</h2>
         <div class="quick-press"> 
           <form action="" method="post">
             <input type="text" name="title" placeholder="Remove user by email"/>
             <button type="submit" class="submit" name="submit">Submit</button>
           </form>
         </div> 
       </div>
        
       
       <div id="addDVD"> 
         <h2 class="header"><span class="icon"></span>Add DVD</h2>
         <div class="quick-press"> 
           <form action="" method="post">
             <input type="text" name="Title" placeholder="Name"/>
             <input type="text" name="Description" placeholder="Description"/>
             <input type="text" name="Quantity" placeholder="Quantity"/>
             <input type="text" name="Price" placeholder="Price"/>
             <input type="text" name="Category" placeholder="Category"/>
             <button type="submit" class="submit" name="submit">Submit</button>
           </form>
         </div> 
       </div>
        
       
       <div id="removeDVD"> 
         <h2 class="header"><span class="icon"></span>Remove DVD</h2>
         <div class="quick-press"> 
           <form action="" method="post">
             <input type="text" name="title" placeholder="Remove dvd by id"/>
             <button type="submit" class="submit" name="submit">Submit</button>
           </form>
         </div> 
       </div>
       
       
       
       
       
       
       <div id="shop">
         <h2 class="header">Go to Shop</h2>
       </div>
       <div id="logaout">
         <h2 class="header">Log Out</h2>
       </div> 
     </div> 
   </div>
</div>
</body>
</html>