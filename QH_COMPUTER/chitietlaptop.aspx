<%@ Page Title="CTLaptop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chitietlaptop.aspx.cs" Inherits="QH_COMPUTER.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="tcchinh">
     <div class="chitietlap">
    <asp:FormView ID="bookDetail" runat="server"
    ItemType="QH_COMPUTER.Models.Book" SelectMethod ="GetDetails"
     RenderOuterTable="false">
     <ItemTemplate>
     <div>
     <h1 style="color:white"><%#:Item.BookName %></h1>
     </div>
     <br />
     <div class="table-responsive">
     <table>
     <tr>
     <td class="chitietgiohang">
     <img src="/Images/<%#:Item.ImagePath %>"
     style="height:250px; width:300px" alt="<%#:Item.BookName %>"/>
         <a href="AddToCart.aspx?bookID=<%#:Item.BookID%>">
         <span>
         <b class="bntthemvaogio"><span class="glyphicon glyphicon-plus"></span>Thêm Vào Giỏ<b>
         </span>
         </a>
     </td>
         <td>&nbsp;</td>
     <td style="vertical-align: top; text-align:left;" class="chitietthongso">
     <b>Thông số kỹ thuật:</b><br /><%#:Item.Description %>
     <br />
     <span><b>Giá tiền:</b>&nbsp;<%#: String.Format("{0:c}",Item.UnitPrice)
    %></span>
     <br />
     <span><b>STT:</b>&nbsp;<%#:Item.BookID %></span>
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
