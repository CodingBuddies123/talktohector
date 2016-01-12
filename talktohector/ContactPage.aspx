<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="ContactPage.aspx.cs" Inherits="talktohector.ContactPage" %>

<%--***************HEADER BEGIN**************--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<%--***************HEADER END**************--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />

    <div class="bottom text-center">
        <article>

            <a target='new' href="http://click.linksynergy.com/fs-bin/click?id=gjkSSiRWHqk&offerid=323058.291&subid=0&type=4">
                <img border="0" alt="Udemy Generic 728x90" src="http://ad.linksynergy.com/fs-bin/show?id=gjkSSiRWHqk&bids=323058.291&subid=0&type=4&gridnum=16"><style>
                                                                                                                                                                    img {
                                                                                                                                                                        border-radius: 25PX;
                                                                                                                                                                    }
                                                                                                                                                                </style></a>
        </article>
    </div>



</asp:Content>

<%--***************CONTACT FORM BEGIN**************--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <div class="center-block">
        <form id="form1" runat="server" method="post">


            <div class="container">
                <h2 class="navbar-header h2">Leave a Message!</h2>
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

                        <asp:LinkButton Text="Send" runat="server" OnClick="SendEmail" CssClass="btn btn-primary" />

                    </div>

                    <div class="form-group">
                        <div class="g-recaptcha" data-sitekey="6LdGKRQTAAAAANtUcOHpvmwTSGv-tm2DxFQ9SWDQ"></div>
                    </div>
                </div>
            </div>

            <div class="form-group text-center text-danger">


                <asp:Label ID="mailStatusLabel" runat="server" CssClass="btn btn-warning" Visible="false" />
          
                


            </div>

               
                
           


            <p>

                <asp:Label ID="mailSuccessLabel" cssclass="label-success" runat="server" />

            </p>




        </form>

    </div>


</asp:Content>

<%--***************CONTACT FORM END**************--%>
