<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="talktohector.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <title>Coming Soon</title>
</head>
 <body>
     <form id="form1" runat="server">
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <header class="lavel-up-header lavel-up-header-bg-img" data-stellar-background-ratio="0.5">
      <div class="lavel-up-color-overlay">
        <div class="container text-center">

          <!-- Logo start -->
          <div class="lu-logo">
              <%--<img src="img/logo.png">--%>
          </div>
          <!-- Logo End -->

          <!-- Main Title start -->
          <h1 class="lu-title">Coming Soon | talktohector.com</h1>
          <!-- Main title end -->

          <!-- countdown start -->
          <div class="lu-countdown row"></div>
          <!-- countdown end -->

         

          <!-- Social networks -->
            <div class="lu-social-networks text-center">
              <a href="#"><i class="fa fa-facebook"></i></a>
              <a href="#"><i class="fa fa-twitter"></i></a>
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-pinterest"></i></a>
              <a href="#"><i class="fa fa-dribbble"></i></a>
              <a href="#"><i class="fa fa-google-plus"></i></a>
            </div>
          <!-- Social networks -->


        </div><!--.col-md-12-->
      </div><!--.row-->
    </header> 

    <!-- Contact form section -->
    <section class="lu-contact" data-stellar-background-ratio="0.5">
       
      <div class="lu-overlay">
        <div class="container">
          <h1 class="lu-section-title text-center">Leave a message</h1>
            <div class="col-md-6">
              <div class="form-group">
                 <div class="controls">
                    <input type="text" class="form-control" placeholder="Name" name="name"/>
                </div>
              </div>
              <div class="form-group">
                <div class="controls">
                  <input type="email" class="form-control email" placeholder="Email" name="email">
                </div>
              </div>
              <div class="form-group">
                <div class="controls">
                  <input type="text" class="form-control requiredField" placeholder="Subject" name="subject">
                </div>
              </div>
            </div>

            <div class="col-md-6">
              <div class="form-group">
                <div class="controls">
                  <textarea rows="7" class="form-control" placeholder="Message" name="message"></textarea>
                </div>
              </div>

                   </div>

                                  <asp:LinkButton ID="submit" cssclass="btn btn-success btn-lg" Text="Submit" runat="server" OnClick="SendEmail"  />

                <br />
        </div>
          <asp:Label ID="mailStatusLabel" runat="server"></asp:Label>
      </div>
    </section>
    <!-- Contact form section end -->

    <footer class="lu-footer">
      <div class="container text-center">
        &copy; 2015 All Rights Reserved by talktohector.com
      </div>
    </footer>



    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/retina.min.js"></script>
    <script src="js/main.js"></script>
     </form>
  </body>
</html>
