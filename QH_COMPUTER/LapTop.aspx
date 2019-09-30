<%@ Page Title="LapTop" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LapTop.aspx.cs" Inherits="QH_COMPUTER.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="example">
        <div class="table-responsive">
         <div class="row">
         <div>
         <asp:ListView ID="bookList" runat="server" DataKeyNames="LapTopID" GroupItemCount="2"
         ItemType="QH_COMPUTER.Models.LapTop" SelectMethod="GetLapTops">
         <EmptyDataTemplate>
         <table >
         <tr>
         <td>Laptop Chưa Cập Nhật</td>
         </tr>
         </table>
         </EmptyDataTemplate>
         <EmptyItemTemplate>
         <td/>
         </EmptyItemTemplate>
         <GroupTemplate>
         <tr id="itemPlaceholderContainer" runat="server">
         <td id="itemPlaceholder" runat="server"></td>
         </tr>
         </GroupTemplate>
         <ItemTemplate>
         <td runat="server" class="soansach">
         <table class="table">
         <tr>
         <td>
         <a href="chitietlaptop.aspx?LaptopID=<%#:Item.LaptopID%>"> 
         <img src ="/Images/<%#:Item.HinhAnh%>"/></a>
         </td>
         </tr>
         <tr>
         <td class="baolap" >
         <a href="chitietlaptop.aspx?LaptopID=<%#:Item.LaptopID%>">
         <span>
         <%#:Item.TenLaptop%>
         </span>
         <br />
         <span>
         <b>Giá tiền: </b><%#:String.Format("{0:c}",Item.GiaBan)%>
         </span>
         <br />
         <a href="AddToCart.aspx?LaptopID=<%#:Item.LaptopID%>">
         <span>
         <b class="bntthemvaogio"><span class="glyphicon glyphicon-plus"></span>Thêm Vào Giỏ<b>
         </span>
         </a>
             </a>
         </td>
         </tr>
         <tr>
         </tr>
         </table>
         </p>
         </td>
         </ItemTemplate>
         <LayoutTemplate>
         <table>
         <tbody>
         <tr>
         <td>
         <table id="groupPlaceholderContainer" runat="server">
         <tr id="groupPlaceholder"></tr>
         </table>
         </td>
         </tr>
         <tr>
         <td></td>
         </tr>
         <tr></tr>
         </tbody>
         </table>
         </LayoutTemplate>
         </asp:ListView>
         </div>
             </div>
             </div>
         </section>
</asp:Content>
