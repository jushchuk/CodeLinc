<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<title>Junior Achievement</title>

<style>

.header {
    height:100px;
}

.footer {
   position:fixed;
   left:-5px;
   bottom:-1px;
   height:39px;
   width:100%;
   background:#444;
}

body {margin:0;}
ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

ul.topnav li {float: left;}

ul.topnav li a {
  display: inline-block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  transition: 0.3s;
  border-right: 1px solid #fff;
  font: 400 13px/1.4 'Cutive', Helvetica, Verdana, Arial, sans-serif;
  text-transform: uppercase;
  

}

ul.topnav li a:hover {background-color: #555;}

ul.topnav li.icon {display: none;}

@media screen and (max-width:680px) {
  ul.topnav li:not(:first-child) {display: none;}
  ul.topnav li.icon {
    float: right;
    display: inline-block;
  }
}

@media screen and (max-width:680px) {
  ul.topnav.responsive {position: relative;}
  ul.topnav.responsive li.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  ul.topnav.responsive li {
    float: none;
    display: inline;
  }
  ul.topnav.responsive li a {
    display: block;
    text-align: left;
  }
}

</style>
    
</head>
<body>
     <form id="form1" runat="server">
    <header class="header"><img style="margin-top:20px;" src="Images/layout_set_logo.png" /></header>  
   <!--CSS responsive menu bar-->
     <nav>
        <ul class="topnav" id="myTopnav">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Program.aspx">Program</a></li>
            <li><a href="Volunteer.aspx">Volunteer</a></li>
            <li><a href="Invest.aspx">Invest</a></li>
            <li><a href="Leaderboard.aspx">Leaderboard</a></li>
            <li><a href="Contact.aspx">Contact Us</a></li>
            <li class="icon"><a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">☰</a></li>
        </ul>
    </nav>
    
<div class="row">
    <div class="col-xs-12">
             <img width="100%" height= "400" src="Images/hall-fame-dinner.jpg" />
             <br />
             <p style="font-size: 24px;text-align:center;">"Helping to inspire and prepare young people to succeed in a global economy" - Junior Achievement's Mission</p>
             <br />
             <iframe style="margin:0px auto; display:block;" width="550" height="315" src="https://www.youtube.com/embed/s8fZt7MWvpo" frameborder="0" allowfullscreen></iframe> 
             <br />
             <br />
             <p style="font-size:24px;text-align:center;">"Education is not preparation for life. Education is life itself." - John Dewey</p>
             <br />
             <br />
             <iframe style="margin:0px auto; display:block;" width="560" height="315" src="https://www.youtube.com/embed/e6uPqIBD6WM" frameborder="0" allowfullscreen></iframe>
             <br />
    </div>    
</div>


    <!--CSS "always stay down" Footer--> 
      <div class="footer"></div>

    <!--Scripts-->
    <script runat="server">
    </script>

         <script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
    <script>(function (w, i, d, g, e, t, s) {
    w[d] = w[d] || []; t = i.createElement(g);
    t.async = 1; t.src = e; s = i.getElementsByTagName(g)[0]; s.parentNode.insertBefore(t, s);
})(window, document, '_gscq', 'script', '//widgets.getsitecontrol.com/56417/script.js');
</script>
</form>
</body>
</html>