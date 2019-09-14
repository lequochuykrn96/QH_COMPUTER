<%@ Page Title="CTLaptop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chitietlaptop.aspx.cs" Inherits="QH_COMPUTER.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="bookDetail" runat="server"
    ItemType="QH_COMPUTER.Models.Book" SelectMethod ="GetDetails"
     RenderOuterTable="false">
     <ItemTemplate>
     <div>
     <h1><%#:Item.BookName %></h1>
     </div>
     <br />
     <table>
     <tr>
     <td>
     <img src="/Images/<%#:Item.ImagePath %>"
     style="border:solid; height:225px" alt="<%#:Item.BookName %>"/>
     </td>
     <td>&nbsp;</td>
     <td style="vertical-align: top; text-align:left;">
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
     </ItemTemplate>
     </asp:FormView>
</asp:Content>
