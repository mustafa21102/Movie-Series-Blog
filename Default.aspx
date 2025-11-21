<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BlogDiziProjesi.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">					
                            <div class="content-grid-info">
                                <img src="<%# Eval("BLOGGORSEL")%>" alt="" style="height:250px; width: 500px"/>
                                <div class="post-info">
                                    <h4><a href="BlogDetay.Aspx?BLOGID=<%# Eval("BLOGID")%>"><%# Eval("BLOGBASLIK") %></a> <%# Eval("BLOGTARIH")%></h4>
                                    <p><%# Eval("BLOGICERIK")%></p>
                                    <a href="single.html"><span></span>READ MORE</a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>RECENT POSTS</h3>
                    <ul>
                        <asp:Repeater ID ="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("BLOGBASLIK")%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="comments">
                    <h3>RECENT COMMENTS</h3>
                    <ul>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("YORUMICERIK")%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="archives">
                    <h3>ARCHIVES</h3>
                    <ul>
                        <li><a href="#">October 2013</a></li>
                        <li><a href="#">September 2013</a></li>
                        <li><a href="#">August 2013</a></li>
                        <li><a href="#">July 2013</a></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>CATEGORIES</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("KATEGORYAD")%></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
