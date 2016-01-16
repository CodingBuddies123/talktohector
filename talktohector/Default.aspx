<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="talktohector.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Reference Bootstrap Begin--%>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content.Bootstrap.Examples/carousel/carousel.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />

    <%--Reference Bootstrap End--%>

    <!-- Carousel Start
    ================================================== -->
    <div id="myCarousel" class="carousel slide img-responsive" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner img-responsive" role="listbox">
            <div class="item active">
                <img class="first-slide img-responsive" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide" />
                <div class="container img-responsive">
                    <div class="carousel-caption img-responsive">


                        <div class="item img-responsive">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <a href="https://itunes.apple.com/us/podcast/talk-to-hector/id1071746951?mt=2 " target="_blank">
                                <img src="/images/slide1.png" alt="Alternate Text" height="300" width="1100" />
                                <style>
                                    img {
                                        border-radius: 25px;
                                        align-content: center;
                                    }
                                </style>


                            </a>

                        </div>


                    </div>
                    <%--<p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>--%>
                </div>
            </div>
            <div class="item img-responsive">
                <img class="second-slide img-responsive" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
                <div class="container img-responsive">
                    <div class="carousel-caption img-responsive">
                        <div class="item img-responsive">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

                            <img src="/images/bible_verse.png" alt="Alternate Text" height="300" width="1100" />
                            <style>
                                img {
                                    border-radius: 25px;
                                    align-content: center;
                                }
                            </style>




                        </div>
                    </div>
                </div>
            </div>
            <div class="item img-responsive">
                <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="item">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

                            <img src="/images/free_advice.png" alt="Alternate Text" height="300" width="500" />
                            <style>
                                img {
                                    border-radius: 25px;
                                    align-content: center;
                                }
                            </style>




                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- /.carousel Stop -->

    <div class="container-fluid text-center">
        <div class="container">
            <link href="Content/front-page.css" rel="stylesheet" />
            <h1>Welcome To Talk To Hector . Com</h1>
            <br />
            <p>
                Talk To Hector is a weekly podcast where you can call and leave a voice mail message with
            </p>
            <p>a quesiton, comment, or request for advice, and I will provide you with an advice fron a biblical perspective!</p>
             <p>We all struggle with various difficulties and trials in life, I am here to listen to you. As sometimes the most powerful voice</p>
            <p>we can hear, is that of a friend who is willing to listen, pray, and provide a good piece of advice.</p>
           

        </div>


    </div>

    <%-- Scripts at the end for page to load faster--%>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>

</asp:Content>




<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

