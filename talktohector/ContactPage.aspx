<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="ContactPage.aspx.cs" Inherits="talktohector.ContactPage" %>

<%--***************HEADER**************--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content.Bootstrap.Examples/carousel/carousel.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    </asp:Content>
      
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--    Form start--%>
    <form id="form1" runat="server" method="post">
        <header class="container">
            <div class="container">
                <div class="container text-center">

                    <!-- Logo start -->
                    <div class="container">
                        <%--<img src="img/logo.png">--%>
                    </div>
                    <!-- Logo End -->

                    <!-- Main Title start -->
                    <h1 class="container">Coming Soon | talktohector.com</h1>
                    <!-- Main title end -->

                    <!-- Social networks -->

<%--                    <div class="lu-social-networks text-center">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                    </div>--%>

                </div>
                <!--.col-md-12-->
            </div>
            <!--.row-->
        </header>

        <!-- Contact form section -->

        <div class="container">
            <h2 class="navbar-header h2">Leave a message</h2>
            <div class="col-sm-12 center-block">
                <div class="form-group">
                    <div class="controls">
                        <input type="text" class="form-control" placeholder="Name" name="name" />
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
                <div class="form-group">
                    <div class="form-group">
                        <div class="controls">
                            <textarea rows="5" cols="2" class="form-control" placeholder="Message" name="message"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">

                    <%--<asp:Button Text="button1" CssClass="btn btn-primary" OnClick="SendEmail" runat="server" UseSubmitBehavior="true"/> --%>

                    <asp:LinkButton Text="Send" runat="server" OnClick="SendEmail" CssClass="btn btn-primary" />
                    <%-- type="submit" class="btn btn-primary" value="Submit" onclick="SendEmail()">--%>
                </div>
                <div class="form-group">
                    <div class="form-group">
                        <div class="alert alert-info">

                            <div class="g-recaptcha" data-sitekey="6LdGKRQTAAAAANtUcOHpvmwTSGv-tm2DxFQ9SWDQ"></div>


                        </div>
                    </div>
                </div>
            </div>






        </div>

        <asp:Label ID="mailStatusLabel" runat="server"></asp:Label>
 </form>
        </>
        <!-- Contact form section end -->

       <%-- <footer class="modal-footer">
            <div class="container text-center">
                &copy; 2015 All Rights Reserved by talktohector.com
            </div>
        </footer>--%>



        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/retina.min.js"></script>
        <script src="js/main.js"></script>
   

   
</asp:Content>
