<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolder" runat="Server">
    <form id="form1" runat="server">
        <div id="main">
            <div id="featured">
                <h4><span>Sản phẩm </span></h4>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource" GroupPlaceholderID="groupPlaceHolder1">
                    <LayoutTemplate>
                        <table>
                            <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
                            <tr>
                                <td>
                                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="9">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                ShowNextPageButton="false" />
                                            <asp:NumericPagerField ButtonType="Link" />
                                            <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <EmptyDataTemplate>
                        <table runat="server">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td runat="server" />
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <ul class="items">
                            <li>
                                <a href="product.html">
                                    <img src="images/leather-boots.jpg" alt="Img">
                                    <span><%#Eval("ProductPrice") %></span> <%#Eval("ProductName") %> </a>
                                &nbsp;</li>
                        </ul>
                    </ItemTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="QL_CatDaTableAdapters.M_ProductTableAdapter"></asp:ObjectDataSource>
            </div>
        </div>
    </form>
</asp:Content>

