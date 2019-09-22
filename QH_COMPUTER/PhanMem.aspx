<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PhanMem.aspx.cs" Inherits="QH_COMPUTER.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tcchinh">
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
        </div>
  
</asp:Content>
