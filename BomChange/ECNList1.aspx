﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Standard.Master" AutoEventWireup="true" CodeBehind="ECNList1.aspx.cs" Inherits="BomChange.ECNList1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
          <div style="text-align: center; width: 100%" class="auto-style1">
               <div class="row" style="text-align: left; margin-left:10px; color: #38C859">
        <h3>ECN已导入清单<br />
             ECN Upload List</h3>
    </div>
        <div  class="GridView" style="margin-left: 10px">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="20" CssClass="align-centent-center" AlternatingRowStyle-Wrap="false" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" HeaderStyle-Font-Size="Large" FooterStyle-Font-Size="Large"  Font-Size="Medium"   ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="选择">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="Server" />
                        </ItemTemplate>
                        <HeaderStyle Wrap="True" />
                        <ItemStyle Wrap="True" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#38C859" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#38C859" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#38C859" ForeColor="White" HorizontalAlign="Center" />
                <%-- </PagerSettings> --%>
                <RowStyle BackColor="#ccff99" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />

                <PagerTemplate>
                    当前第:
                                     <%--//((GridView)Container.NamingContainer)就是为了得到当前的控件--%>
                    <asp:Label ID="LabelCurrentPage" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"></asp:Label>
                    页/共:
                                    <%--//得到分页页面的总数--%>
                    <asp:Label ID="LabelPageCount" runat="server" Text="<%# ((GridView)Container.NamingContainer).PageCount %>"></asp:Label>
                    页
                                    <%--//如果该分页是首分页，那么该连接就不会显示了.同时对应了自带识别的命令参数CommandArgument--%>
                    <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                        Visible='<%#((GridView)Container.NamingContainer).PageIndex != 0 %>'>首页</asp:LinkButton>
                    <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                        CommandName="Page" Visible='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>'>上一页</asp:LinkButton>
                    <%--//如果该分页是尾页，那么该连接就不会显示了--%>
                    <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                        Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>下一页</asp:LinkButton>
                    <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                        Visible='<%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>'>尾页</asp:LinkButton>
                    转到第
                                    <asp:TextBox ID="txtNewPageIndex" runat="server"  ForeColor="Black" Width="40px" Text='<%# ((GridView)Container.Parent.Parent).PageIndex + 1 %>' />页
                                    <%--//这里将CommandArgument即使点击该按钮e.newIndex 值为3 --%>
                    <asp:LinkButton ID="btnGo" runat="server" CausesValidation="False" CommandArgument="-2"
                        CommandName="Page" Text="GO" />
                </PagerTemplate>


            </asp:GridView>
        </div>
        <br />
      <%--  <div style="text-align: left; margin-left: 10px">
            <asp:Button ID="Button5" runat="server" CssClass="btn btn-info" Text="返回" OnClick="Button5_Click" />
        </div>--%>
        <br />
    </div>


</asp:Content>
