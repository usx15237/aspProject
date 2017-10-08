<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Single-product.aspx.cs" Inherits="Single_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Page - Ustora Demo</title>
   
    <!-- Google Fonts -->
    <link href='http://fonts.useso.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<body>
    <!--<form id="form1" runat="server" method="post">-->
        <div class="header-area">
            <div class="container">
            </div>
        </div>

     <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/logo.png"></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.aspx">Cart - <span class="cart-amunt">$100</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
        <div class="mainmenu-area">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Index.aspx">首页</a></li>
                            <li><a href="Single-product.aspx">产品详情</a></li>
                            <li><a href="Cart.aspx">购物车</a></li>
                            <li><a href="Checkout.aspx">订单</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    
     <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>商品详情</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">搜你想要</h2>
                        <form action="">
                            <input type="text" placeholder="Search products...">
                            <input type="submit" value="搜索">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">最热畅销(推荐)</h2>
                         <asp:Repeater ID="ProductsList" runat="server">
                <ItemTemplate>
                        <div class="thubmnail-recent">
                            <img src="<%#Eval("Imgpath") %>" class="recent-thumb" alt="">
                            <h2><a href='Single-product.aspx?id=<%#Eval("Id") %>'>     <%#Eval("Name") %>   </a></h2>
                            <div class="product-sidebar-price">
                                <ins><%#Eval("Price") %></ins> <del><%#Eval("OldPrice") %></del>
                            </div>                             
                        </div>
                
                </ItemTemplate>    
               </asp:Repeater>
                      
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">更新日志</h2>
                        <ul>
                            <li><a href="">Dark Soul1 2011</a></li>
                            <li><a href="">Dark Soul2 2013</a></li>
                            <li><a href="">Dark Soul3 2016</a></li>
                            <li><a href="">DLC(环之城) 2017</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a href="">首页</a>
                            <a href="">商品详情</a>
                           
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img id="Introd1" runat="server"  src ="" alt=""/>
                                     <br/>
                                        <br/>
                                           <img id="Introd2" runat="server" src="" alt=""/>                                         
                                    </div>                        
                                </div>
                            </div>                           
                            <div class="col-sm-6">







                               

                                <div class="product-inner">
                                    <h2 class="product-name" id="productName" runat="server"  ></h2>
                                    <h3 id="productId" runat="server"></h3>
                                    <div class="product-inner-price">
                                        <ins id="Nowprice"  runat="server"></ins> <del id="Oldprice" runat="server"></del>
                                    </div>    
                                    
                            
                                        <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" id="productnum" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div>
                                     <span class="add_to_cart_button" type="submit">Add to cart</span>
                                   
                                    <div class="product-inner-category">
                                        <p>分类: <a href="" id="Class" runat="server">RPG</a>. 标签: <a href="" id="Tag" runat="server">黑暗奇幻,角色扮演,受死传火</a>. </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">游戏简介</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">玩家评价</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <p  id="Detail"  runat="server" ></p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Reviews</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Name</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Your review</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>

                                   
                                
                                
                                
                                
                                
                                
                                
                                    


                            </div>
                        </div>                     
                    </div>                    
                </div>
            </div>
        </div>
    </div>


        <div class="footer-top-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-about-us">
                            <h2>Get<span>更多资讯</span></h2>
                            <p>您可以通过以下渠道了解更多本游戏平台讯息</p>
                            <div class="footer-social">
                                <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">分类</h2>
                            <ul>
                                <li><a href="#">大牌单机</a></li>
                                <li><a href="#">最新网游</a></li>
                                <li><a href="#">90复古</a></li>
                                <li><a href="#">解密探索</a></li>
                                <li><a href="#">VR体验</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-newsletter">
                            <h2 class="footer-wid-title">绿色邮箱</h2>
                            <p>注册"绿色通道"邮箱，获得独家优惠(我们有独家加密手段，保证你的邮箱信息不会被泄露)。</p>
                            <div class="newsletter-form">

                                    <input type="email" placeholder="Type your email">
                                    <input type="submit" value="订阅">
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="copyright">
                            <p>Copyright &copy; 2017.STEAM for players.</p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="footer-card-icon">
                            <i class="fa fa-cc-discover"></i>
                            <i class="fa fa-cc-mastercard"></i>
                            <i class="fa fa-cc-paypal"></i>
                            <i class="fa fa-cc-visa"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
   
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
    <!--</form>-->
    <script type='text/javascript'>
        jQuery(document).ready(function ($) {
          
            $('span.add_to_cart_button').click(function () {


                var pro_name = $('#productName').text();
                var pro_id = $('#productId').text();
                var pro_num = $('#productnum').val();
                var pro_price = $('#Nowprice').text();

                $.post(
                    "handles/CartHandler.ashx",
                    { type:"add",  id: pro_id, name: pro_name, price: pro_price, quantity: pro_num },
                    function (data) {
                        if (data != "error") {
                            alert("您已经下单! 产品编号" + data);
                        } else {
                            alert("下单失败!");
                        }
                    }
                );

                return false;
            })
        })
    </script>
</body>
</html>
