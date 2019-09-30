<%@ Page Title="Linh Kiện" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LinhKien.aspx.cs" Inherits="QH_COMPUTER.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="tcchinh">
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
