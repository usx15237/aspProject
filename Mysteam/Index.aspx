<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to steam</title>

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
    <form id="form1" runat="server">
        <div class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="user-menu">
                            <ul>
                                <li><a href="#" id="center"><i class="fa fa-user"></i>我的账号资料</a></li>
                                <li><a href="#"><i class="fa fa-heart"></i>愿望清单</a></li>
                                <li><a href="Cart.aspx"><i class="fa fa-user"></i>我的购物车</a></li>
                                <li><a href="Login.aspx" id="login" runat="server"><i class="fa fa-user"></i>登录</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="header-right">
                            <ul class="list-unstyled list-inline">
                                <li class="dropdown dropdown-small">
                                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">USD(美元)</a></li>
                                        <li><a href="#">INR(卢比)</a></li>
                                        <li><a href="#">GBP(英镑)</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown dropdown-small">
                                    <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">简体中文</a></li>
                                        <li><a href="#">French</a></li>
                                        <li><a href="#">German</a></li>
                                        <li><a href="#">English</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End header area -->

        <div class="site-branding-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="logo">
                            <h1><a href="./">
                                <img src="img/logo.png"></a></h1>
                        </div>
                    </div>

                    <div class="col-sm-6">
                    </div>
                </div>
            </div>
        </div>
        <!-- End site branding area -->

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
                            <li><a href="Cart.aspx">购物车</a></li>
                            <li><a href="Checkout.aspx">订单</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End mainmenu area -->

        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">









                    <asp:Repeater ID="ProductsList1" runat="server">
                        <ItemTemplate>
                            <li>
                                <img src="<%#Eval("Imgpath") %>" alt="Slide">
                                <div class="caption-group">
                                    <h2 class="Game-name">
                                        <%#Eval("Name") %> 
                                    </h2>
                                    <p><%#Eval("Desc") %></p>
                                    <a class="caption button-radius" href='Single-product.aspx?id=<%#Eval("Id") %>'><span class="icon"></span>Shop now</a>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>









                </ul>
            </div>
            <!-- ./Slider -->
        </div>
        <!-- End slider area -->

        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo1">
                            <i class="fa fa-refresh"></i>
                            <p>30天包退</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo2">
                            <i class="fa fa-truck"></i>
                            <p>免费折扣</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo3">
                            <i class="fa fa-lock"></i>
                            <p>安全保障</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo4">
                            <i class="fa fa-gift"></i>
                            <p>最新排行</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End promo area -->

        <div class="related-products-wrapper">
            <h2 class="related-products-title">最热畅销</h2>
            <div class="related-products-carousel">

                <asp:Repeater ID="ProductsList2" runat="server">
                    <ItemTemplate>
                        <div class="single-product">
                            <div class="product-f-image">
                                <img src="<%#Eval("Imgpath") %>" alt="">
                                <div class="product-hover">
                                    <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>加入购物车</a>
                                    <a href='Single-product.aspx?id=<%#Eval("Id") %>' class="view-details-link"><i class="fa fa-link"></i>查看详情</a>
                                </div>
                            </div>

                            <h2><a href=""><%#Eval("Name") %></a></h2>

                            <div class="product-carousel-price">
                                <ins><%#Eval("Price") %></ins> <del><%#Eval("OldPrice") %></del>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>



            </div>
        </div>
        <br />
        <br />
        <br />
        <!-- End main content area -->

        <div class="brands-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="brand-wrapper">
                            <h2 class="related-products-title">入驻大牌</h2>
                            <div class="brand-list">




                                <asp:Repeater ID="BrandsList" runat="server">
                                    <ItemTemplate>

                                        <a>
                                            <img src="<%#Eval("Imgpath") %>" title="<%#Eval("Name") %> "></a>

                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End brands area -->

        <!-- End product widget area -->

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
        <!-- End footer top area -->

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
        <!-- End footer bottom area -->

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

        <!-- Slider -->
        <script type="text/javascript" src="js/bxslider.min.js"></script>
        <script type="text/javascript" src="js/script.slider.js"></script>
        <script type='text/javascript'>
            jQuery(document).ready(function ($) {
                $.post(

                              "handles/CheckLoginHandler.ashx",
                              { type: "login_state" },//如果已有用户登录，则显示用户名，并提供用户中心界面。
                              function (data) {

                                  if (data == "")
                                  {
                                      $('#login').text('登录' );
                                  }
                                  else
                                  {
                                  $('#login').text('当前用户：' + data);

                                  $('#center').attr('href', 'CustomerCenter.aspx').attr('title', '进入用户中心');
                                  }
                                  

                              }
                          );
            });

        </script>
    </form>
</body>
</html>
