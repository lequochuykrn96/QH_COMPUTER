<%@ Page Title="CTLaptop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chitietlaptop.aspx.cs" Inherits="QH_COMPUTER.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tcchinh">
     <div class="chitietlap">
    <asp:FormView ID="bookDetail" runat="server"
    ItemType="QH_COMPUTER.Models.LapTop" SelectMethod ="GetDetails" RenderOuterTable="false">
     <ItemTemplate>
     <div>
     <h1 style="color:white"><%#:Item.TenLaptop %></h1>
     </div>
     <br />
     <div class="table-responsive">
     <table>
     <tr>
     <td class="chitietgiohang">
     <img src="/Images/<%#:Item.HinhAnh %>"
     style="height:250px; width:300px" alt="<%#:Item.TenLaptop %>"/>
         <a href="AddToCart.aspx?LapTopID=<%#:Item.LaptopID%>">
         <span>
         <b class="bntthemvaogio"><span class="glyphicon glyphicon-plus"></span>Thêm Vào Giỏ<b>
         </span>
         </a>
     </td>
         <td>&nbsp;</td>
     <td style="vertical-align: top; text-align:left;" class="chitietthongso">
     <b>Thông số kỹ thuật:</b><br /><%#:Item.MoTa %>
     <br />
     <span><b>Giá tiền:</b>&nbsp;<%#: String.Format("{0:c}",Item.GiaBan)
    %></span>
     <br />
     <span><b>STT:</b>&nbsp;<%#:Item.LaptopID %></span>
     <br />  
     </td>
     </tr>
     </table>
         </div>
     </ItemTemplate>
     </asp:FormView>
         </div>
        </div>
</asp:Content>
