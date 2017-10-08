﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart Page - Ustora Demo</title>

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
                        <div class="shopping-item">
                            <a href="Cart.aspx">Cart - <span class="cart-amunt">$800</span> <i class="fa fa-shopping-cart"></i><span class="product-count">5</span></a>
                        </div>
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
                            <h2>购物车</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page title area -->


        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row ">


                    <div class="col-md-8 rowcenter">
                        <div class="product-content-right">
                            <div class="woocommerce">










                                <form method="post" action="#">
                                    <table cellspacing="0" class="shop_table cart">
                                        <thead>
                                            <tr>
                                                <th class="product-remove">&nbsp;</th>
                                                <th class="product-thumbnail">&nbsp;</th>
                                                <th class="product-name">产品</th>
                                                <th class="product-price">价格</th>
                                                <th class="product-quantity">数量</th>
                                                <th class="product-subtotal">总计</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <asp:Repeater ID="rptCartItems" runat="server">
                                                <ItemTemplate>


                                                    <tr class="cart_item">
                                                        <td class="product-remove">
                                                            <a title="Remove this item" class="remove" href="#">×</a>
                                                        </td>

                                                        <td class="product-thumbnail">
                                                            <a href="Single-product.aspx">
                                                                <img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="img/product-thumb-2.jpg"></a>
                                                        </td>

                                                        <td class="product-name">
                                                            <a href="Single-product.aspx" id="ItemName"><%#Eval("Name") %></a>
                                                            <span id="ItemId"><%#Eval("Id") %></span>
                                                        </td>

                                                        <td class="product-price">
                                                            <span class="amount" id="ItemPrice"><%#Eval("Price") %></span>
                                                        </td>

                                                        <td class="product-quantity">
                                                            <div class="quantity buttons_added">
                                                                <input type="button" class="minus" value="-">
                                                                <input type="number" size="4" id="ItemQuantity" class="input-text qty text" title="Qty" value="<%#Eval("Quantity") %>" min="0" step="1">
                                                                <input type="button" class="plus" value="+">
                                                            </div>
                                                        </td>

                                                        <td class="product-subtotal">
                                                            <span class="amount Single-Total" id="single"><%#Eval("SingleTotal")%></span>
                                                        </td>
                                                    </tr>

                                                </ItemTemplate>
                                            </asp:Repeater>


                                            <tr>
                                                <td class="actions" colspan="6">
                                                    <div class="coupon">
                                                        <label for="coupon_code">优惠:</label>
                                                        <input type="text" placeholder="优惠券验证码" value="" id="coupon_code" class="input-text" name="coupon_code">
                                                        <input type="submit" value="验证" name="apply_coupon" class="button">
                                                    </div>
                                                    <input type="button" value="清空购物车" name="update_cart" class="button" id="removeAll">
                                                    <input type="button" value="结账" name="proceed" class="checkout-button button alt wc-forward" id="total">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </form>










                                <div class="cart-collaterals">


                                    <div class="cross-sells">
                                        <h2>类似产品推荐</h2>
                                        <ul class="products">
                                            <li class="product">
                                                <a href="Single-product.aspx">
                                                    <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="img/product-2.jpg">
                                                    <h3>Dark Soul3</h3>
                                                    <span class="price"><span class="amount">£20.00</span></span>
                                                </a>

                                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="Single-product.aspx">查看详情</a>
                                            </li>

                                            <li class="product">
                                                <a href="Single-product.aspx">
                                                    <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="img/product-4.jpg">
                                                    <h3>Outlast2</h3>
                                                    <span class="price"><span class="amount">£20.00</span></span>
                                                </a>

                                                <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="Single-product.aspx">查看详情</a>
                                            </li>
                                        </ul>
                                    </div>


                                    <div class="cart_totals ">
                                        <h2>购物车总计</h2>

                                        <table cellspacing="0">
                                            <tbody>
                                                <tr class="cart-subtotal">
                                                    <th>购物车价格总计</th>
                                                    <td><span class="amount" id="carttotal" runat="server">0</span></td>
                                                </tr>
                                                <tr class="cart-subtotal">
                                                    <th>购物车数量总计</th>
                                                    <td><span class="amount" id="amounttotal" runat="server">0</span></td>
                                                </tr>

                                                <tr class="shipping">
                                                    <th>运费</th>
                                                    <td>免费送货</td>
                                                </tr>


                                            </tbody>
                                        </table>
                                    </div>


                                    <form method="post" action="#" class="shipping_calculator">
                                        <h2><a class="shipping-calculator-button" data-toggle="collapse" href="#calcalute-shipping-wrap" aria-expanded="false" aria-controls="calcalute-shipping-wrap">送货方式选择</a></h2>

                                        <section id="calcalute-shipping-wrap" class="shipping-calculator-form collapse">

                                            <p class="form-row form-row-wide">
                                                <select rel="calc_shipping_state" class="country_to_state" id="calc_shipping_country" name="calc_shipping_country">
                                                    <option value="">Select a country…</option>
                                                    <option value="AX">Åland Islands</option>
                                                    <option value="AF">Afghanistan</option>
                                                    <option value="AL">Albania</option>
                                                    <option value="DZ">Algeria</option>
                                                    <option value="AD">Andorra</option>
                                                    <option value="AO">Angola</option>
                                                    <option value="AI">Anguilla</option>
                                                    <option value="AQ">Antarctica</option>
                                                    <option value="AG">Antigua and Barbuda</option>
                                                    <option value="AR">Argentina</option>
                                                    <option value="AM">Armenia</option>
                                                    <option value="AW">Aruba</option>
                                                    <option value="AU">Australia</option>
                                                    <option value="AT">Austria</option>
                                                    <option value="AZ">Azerbaijan</option>
                                                    <option value="BS">Bahamas</option>
                                                    <option value="BH">Bahrain</option>
                                                    <option value="BD">Bangladesh</option>
                                                    <option value="BB">Barbados</option>
                                                    <option value="BY">Belarus</option>
                                                    <option value="PW">Belau</option>
                                                    <option value="BE">Belgium</option>
                                                    <option value="BZ">Belize</option>
                                                    <option value="BJ">Benin</option>
                                                    <option value="BM">Bermuda</option>
                                                    <option value="BT">Bhutan</option>
                                                    <option value="BO">Bolivia</option>
                                                    <option value="BQ">Bonaire, Saint Eustatius and Saba</option>
                                                    <option value="BA">Bosnia and Herzegovina</option>
                                                    <option value="BW">Botswana</option>
                                                    <option value="BV">Bouvet Island</option>
                                                    <option value="BR">Brazil</option>
                                                    <option value="IO">British Indian Ocean Territory</option>
                                                    <option value="VG">British Virgin Islands</option>
                                                    <option value="BN">Brunei</option>
                                                    <option value="BG">Bulgaria</option>
                                                    <option value="BF">Burkina Faso</option>
                                                    <option value="BI">Burundi</option>
                                                    <option value="KH">Cambodia</option>
                                                    <option value="CM">Cameroon</option>
                                                    <option value="CA">Canada</option>
                                                    <option value="CV">Cape Verde</option>
                                                    <option value="KY">Cayman Islands</option>
                                                    <option value="CF">Central African Republic</option>
                                                    <option value="TD">Chad</option>
                                                    <option value="CL">Chile</option>
                                                    <option value="CN">China</option>
                                                    <option value="CX">Christmas Island</option>
                                                    <option value="CC">Cocos (Keeling) Islands</option>
                                                    <option value="CO">Colombia</option>
                                                    <option value="KM">Comoros</option>
                                                    <option value="CG">Congo (Brazzaville)</option>
                                                    <option value="CD">Congo (Kinshasa)</option>
                                                    <option value="CK">Cook Islands</option>
                                                    <option value="CR">Costa Rica</option>
                                                    <option value="HR">Croatia</option>
                                                    <option value="CU">Cuba</option>
                                                    <option value="CW">CuraÇao</option>
                                                    <option value="CY">Cyprus</option>
                                                    <option value="CZ">Czech Republic</option>
                                                    <option value="DK">Denmark</option>
                                                    <option value="DJ">Djibouti</option>
                                                    <option value="DM">Dominica</option>
                                                    <option value="DO">Dominican Republic</option>
                                                    <option value="EC">Ecuador</option>
                                                    <option value="EG">Egypt</option>
                                                    <option value="SV">El Salvador</option>
                                                    <option value="GQ">Equatorial Guinea</option>
                                                    <option value="ER">Eritrea</option>
                                                    <option value="EE">Estonia</option>
                                                    <option value="ET">Ethiopia</option>
                                                    <option value="FK">Falkland Islands</option>
                                                    <option value="FO">Faroe Islands</option>
                                                    <option value="FJ">Fiji</option>
                                                    <option value="FI">Finland</option>
                                                    <option value="FR">France</option>
                                                    <option value="GF">French Guiana</option>
                                                    <option value="PF">French Polynesia</option>
                                                    <option value="TF">French Southern Territories</option>
                                                    <option value="GA">Gabon</option>
                                                    <option value="GM">Gambia</option>
                                                    <option value="GE">Georgia</option>
                                                    <option value="DE">Germany</option>
                                                    <option value="GH">Ghana</option>
                                                    <option value="GI">Gibraltar</option>
                                                    <option value="GR">Greece</option>
                                                    <option value="GL">Greenland</option>
                                                    <option value="GD">Grenada</option>
                                                    <option value="GP">Guadeloupe</option>
                                                    <option value="GT">Guatemala</option>
                                                    <option value="GG">Guernsey</option>
                                                    <option value="GN">Guinea</option>
                                                    <option value="GW">Guinea-Bissau</option>
                                                    <option value="GY">Guyana</option>
                                                    <option value="HT">Haiti</option>
                                                    <option value="HM">Heard Island and McDonald Islands</option>
                                                    <option value="HN">Honduras</option>
                                                    <option value="HK">Hong Kong</option>
                                                    <option value="HU">Hungary</option>
                                                    <option value="IS">Iceland</option>
                                                    <option value="IN">India</option>
                                                    <option value="ID">Indonesia</option>
                                                    <option value="IR">Iran</option>
                                                    <option value="IQ">Iraq</option>
                                                    <option value="IM">Isle of Man</option>
                                                    <option value="IL">Israel</option>
                                                    <option value="IT">Italy</option>
                                                    <option value="CI">Ivory Coast</option>
                                                    <option value="JM">Jamaica</option>
                                                    <option value="JP">Japan</option>
                                                    <option value="JE">Jersey</option>
                                                    <option value="JO">Jordan</option>
                                                    <option value="KZ">Kazakhstan</option>
                                                    <option value="KE">Kenya</option>
                                                    <option value="KI">Kiribati</option>
                                                    <option value="KW">Kuwait</option>
                                                    <option value="KG">Kyrgyzstan</option>
                                                    <option value="LA">Laos</option>
                                                    <option value="LV">Latvia</option>
                                                    <option value="LB">Lebanon</option>
                                                    <option value="LS">Lesotho</option>
                                                    <option value="LR">Liberia</option>
                                                    <option value="LY">Libya</option>
                                                    <option value="LI">Liechtenstein</option>
                                                    <option value="LT">Lithuania</option>
                                                    <option value="LU">Luxembourg</option>
                                                    <option value="MO">Macao S.A.R., China</option>
                                                    <option value="MK">Macedonia</option>
                                                    <option value="MG">Madagascar</option>
                                                    <option value="MW">Malawi</option>
                                                    <option value="MY">Malaysia</option>
                                                    <option value="MV">Maldives</option>
                                                    <option value="ML">Mali</option>
                                                    <option value="MT">Malta</option>
                                                    <option value="MH">Marshall Islands</option>
                                                    <option value="MQ">Martinique</option>
                                                    <option value="MR">Mauritania</option>
                                                    <option value="MU">Mauritius</option>
                                                    <option value="YT">Mayotte</option>
                                                    <option value="MX">Mexico</option>
                                                    <option value="FM">Micronesia</option>
                                                    <option value="MD">Moldova</option>
                                                    <option value="MC">Monaco</option>
                                                    <option value="MN">Mongolia</option>
                                                    <option value="ME">Montenegro</option>
                                                    <option value="MS">Montserrat</option>
                                                    <option value="MA">Morocco</option>
                                                    <option value="MZ">Mozambique</option>
                                                    <option value="MM">Myanmar</option>
                                                    <option value="NA">Namibia</option>
                                                    <option value="NR">Nauru</option>
                                                    <option value="NP">Nepal</option>
                                                    <option value="NL">Netherlands</option>
                                                    <option value="AN">Netherlands Antilles</option>
                                                    <option value="NC">New Caledonia</option>
                                                    <option value="NZ">New Zealand</option>
                                                    <option value="NI">Nicaragua</option>
                                                    <option value="NE">Niger</option>
                                                    <option value="NG">Nigeria</option>
                                                    <option value="NU">Niue</option>
                                                    <option value="NF">Norfolk Island</option>
                                                    <option value="KP">North Korea</option>
                                                    <option value="NO">Norway</option>
                                                    <option value="OM">Oman</option>
                                                    <option value="PK">Pakistan</option>
                                                    <option value="PS">Palestinian Territory</option>
                                                    <option value="PA">Panama</option>
                                                    <option value="PG">Papua New Guinea</option>
                                                    <option value="PY">Paraguay</option>
                                                    <option value="PE">Peru</option>
                                                    <option value="PH">Philippines</option>
                                                    <option value="PN">Pitcairn</option>
                                                    <option value="PL">Poland</option>
                                                    <option value="PT">Portugal</option>
                                                    <option value="QA">Qatar</option>
                                                    <option value="IE">Republic of Ireland</option>
                                                    <option value="RE">Reunion</option>
                                                    <option value="RO">Romania</option>
                                                    <option value="RU">Russia</option>
                                                    <option value="RW">Rwanda</option>
                                                    <option value="ST">São Tomé and Príncipe</option>
                                                    <option value="BL">Saint Barthélemy</option>
                                                    <option value="SH">Saint Helena</option>
                                                    <option value="KN">Saint Kitts and Nevis</option>
                                                    <option value="LC">Saint Lucia</option>
                                                    <option value="SX">Saint Martin (Dutch part)</option>
                                                    <option value="MF">Saint Martin (French part)</option>
                                                    <option value="PM">Saint Pierre and Miquelon</option>
                                                    <option value="VC">Saint Vincent and the Grenadines</option>
                                                    <option value="SM">San Marino</option>
                                                    <option value="SA">Saudi Arabia</option>
                                                    <option value="SN">Senegal</option>
                                                    <option value="RS">Serbia</option>
                                                    <option value="SC">Seychelles</option>
                                                    <option value="SL">Sierra Leone</option>
                                                    <option value="SG">Singapore</option>
                                                    <option value="SK">Slovakia</option>
                                                    <option value="SI">Slovenia</option>
                                                    <option value="SB">Solomon Islands</option>
                                                    <option value="SO">Somalia</option>
                                                    <option value="ZA">South Africa</option>
                                                    <option value="GS">South Georgia/Sandwich Islands</option>
                                                    <option value="KR">South Korea</option>
                                                    <option value="SS">South Sudan</option>
                                                    <option value="ES">Spain</option>
                                                    <option value="LK">Sri Lanka</option>
                                                    <option value="SD">Sudan</option>
                                                    <option value="SR">Suriname</option>
                                                    <option value="SJ">Svalbard and Jan Mayen</option>
                                                    <option value="SZ">Swaziland</option>
                                                    <option value="SE">Sweden</option>
                                                    <option value="CH">Switzerland</option>
                                                    <option value="SY">Syria</option>
                                                    <option value="TW">Taiwan</option>
                                                    <option value="TJ">Tajikistan</option>
                                                    <option value="TZ">Tanzania</option>
                                                    <option value="TH">Thailand</option>
                                                    <option value="TL">Timor-Leste</option>
                                                    <option value="TG">Togo</option>
                                                    <option value="TK">Tokelau</option>
                                                    <option value="TO">Tonga</option>
                                                    <option value="TT">Trinidad and Tobago</option>
                                                    <option value="TN">Tunisia</option>
                                                    <option value="TR">Turkey</option>
                                                    <option value="TM">Turkmenistan</option>
                                                    <option value="TC">Turks and Caicos Islands</option>
                                                    <option value="TV">Tuvalu</option>
                                                    <option value="UG">Uganda</option>
                                                    <option value="UA">Ukraine</option>
                                                    <option value="AE">United Arab Emirates</option>
                                                    <option selected="selected" value="GB">United Kingdom (UK)</option>
                                                    <option value="US">United States (US)</option>
                                                    <option value="UY">Uruguay</option>
                                                    <option value="UZ">Uzbekistan</option>
                                                    <option value="VU">Vanuatu</option>
                                                    <option value="VA">Vatican</option>
                                                    <option value="VE">Venezuela</option>
                                                    <option value="VN">Vietnam</option>
                                                    <option value="WF">Wallis and Futuna</option>
                                                    <option value="EH">Western Sahara</option>
                                                    <option value="WS">Western Samoa</option>
                                                    <option value="YE">Yemen</option>
                                                    <option value="ZM">Zambia</option>
                                                    <option value="ZW">Zimbabwe</option>
                                                </select>
                                            </p>

                                            <p class="form-row form-row-wide">
                                                <input type="text" id="calc_shipping_state" name="calc_shipping_state" placeholder="State / county" value="" class="input-text">
                                            </p>

                                            <p class="form-row form-row-wide">
                                                <input type="text" id="calc_shipping_postcode" name="calc_shipping_postcode" placeholder="Postcode / Zip" value="" class="input-text">
                                            </p>


                                            <p>
                                                <button class="button" value="1" name="calc_shipping" type="submit">Update Totals</button>
                                            </p>

                                        </section>
                                    </form>


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
        <script type='text/javascript'>
            jQuery(document).ready(function ($) {
                //增加某类商品数量
                $(".plus").click(function () {
                    var msg;
                    var num = $(this).parent().find("#ItemQuantity").val();
                    num++;
                    var $id = $(this).parent().parent().parent().children('.product-name').children('#ItemId').text();
                    $(this).parent().find("#ItemQuantity").val(num);
                    var $quantity = num;

                    $.get(
                       "handles/CartHandler.ashx",
                       { type: "update", id: $id, quantity: $quantity },//曾经考虑把update指令单独封装为一个函数，但是不知道如何解决“判断当前作用的是哪一行”的问题
                       function (data) {
                           var jsonObj = JSON.parse(data);
                           $('#amounttotal').text(jsonObj.TotalCount);
                           $('#carttotal').text(jsonObj.TotalMoney);
                       })               
                    var $price = $(this).parent().parent().parent().children(".product-price").children("#ItemPrice").text();
                    $(this).parent().parent().parent().children(".product-subtotal").children("#single").text(num*$price);
           
                })
                //减少某类商品数量
                $(".minus").click(function () {
                    var num = $(this).parent().find("#ItemQuantity").val();
                    num--;
                    var $id = $(this).parent().parent().parent().children('.product-name').children('#ItemId').text();
                    $(this).parent().find("#ItemQuantity").val(num);
                    var $quantity = num;
                    $.get(
                       "handles/CartHandler.ashx",
                       { type: "update", id: $id, quantity: $quantity },
                       function (data) {
                           var jsonObj = JSON.parse(data);
                           $('#amounttotal').text(jsonObj.TotalCount);
                           $('#carttotal').text(jsonObj.TotalMoney);

                       })
                    var $price = $(this).parent().parent().parent().children(".product-price").children("#ItemPrice").text();
                    $(this).parent().parent().parent().children(".product-subtotal").children("#single").text(num * $price);
                })
                //从购物车中移除某类商品
                $('.remove').click(function () {
                    var $id = $(this).parent().parent().children('.product-name').children('#ItemId').text();
                    var $quantity = 0;
                    $.get(
                       "handles/CartHandler.ashx",
                       { type: "update", id: $id, quantity: $quantity },
                       function (data) {

                           var jsonObj = JSON.parse(data);//string转化为对象
                           $('#amounttotal').text(jsonObj.TotalCount);
                           $('#carttotal').text(jsonObj.TotalMoney);
                       })
                    $(this).parent().parent().empty();
                })
                //清空购物车
                $('#removeAll').click(function () {
                    $.get(
                        "handles/CartHandler.ashx",
                        { type: "clear" },
                        function (data) {
                            $('#amounttotal').text("0");
                            $('#carttotal').text("0");

                        })
                    $(this).parent().parent().parent().children('.cart_item').empty();
                })

                $("#total").click(function () {
                    window.location.href = "Checkout.aspx";
                })

            })
        </script>
    </form>
</body>
</html>
