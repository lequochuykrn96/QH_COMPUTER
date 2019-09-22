<%@ Page Title="Trang Chủ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QH_COMPUTER._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="tcchinh">
            <div class="tc1">
                <div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Images/slide/slide1.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="Images/slide/slide2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="Images/slide/slide3.jpg" alt="New york" style="width:100%; ">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class=" carousel-control traiprev" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class=" carousel-control phaiprev" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
                </div>
            <div class="listtrangchu">
                <div class="menutrangchu">
                   <a href="PhanMem.aspx">Phần Mềm</a>
                </div>
                <div class="noidungtrangchu">
                    <div class="nd1">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/phanmem/pmantivirus.png" CssClass="imgtrangchu" />
                             <div class="textnd1"><a>Free Antivirus</a></div>
                        </div>
                        <div class="nd1">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/phanmem/pmkaspersky.png" CssClass="imgtrangchu" />
                                <div class="textnd1"><a>Kaspersky Internet Security</a></div>
                          </div >
                <div class="nd1">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/phanmem/pmlightroom.png" CssClass="imgtrangchu" />
                        <div class="textnd1"><a>LightRoom</a></div>
                    </div>
                </div>
                </div>
            <div class="listtrangchu">
                <div class="menutrangchu">
                    <a href="LinhKien.aspx">Linh Kiện</a>
                </div>
                <div class="noidungtrangchu">
                    <div class="nd1">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/linhkien/AEvrIHN.png" CssClass="imgtrangchu" />
                             <div class="textnd1"><a>Ổ Cứng</a></div>
                        </div>
                        <div class="nd1">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/linhkien/glaive-rgb-aluminum.png" CssClass="imgtrangchu" />
                                <div class="textnd1"><a>Chuột</a></div>
                          </div >
                <div class="nd1">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/linhkien/img.png" CssClass="imgtrangchu" />
                        <div class="textnd1"><a>Ram laptop</a></div>
                    </div>
                </div>
            </div>
        </div>
    

</asp:Content>
