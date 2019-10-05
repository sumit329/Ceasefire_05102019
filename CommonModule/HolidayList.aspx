<%@ page language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="CommonModule_HolidayList, App_Web_e2av5fen" title="Holiday List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="col-md-4 col-sm-12 col-xs-12" style="padding-top: 16px;">
                            Fields with <span style="color: Red">*</span> mark are mandatory.
                        </div>
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <h3 class="headerhelpclasss">Holiday List</h3>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="x_content">
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1%; text-align: left;">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-bottom: 1%; text-align: left;">
                                        <asp:UpdateProgress ID="UpdateProgress3" DisplayAfter="0" runat="server" AssociatedUpdatePanelID="UPpnlForAll">
                                            <ProgressTemplate>
                                                <div id="progressDiv" runat="server" style="width: 180px; top: 294px; right: 397px; position: fixed; background-position: center; text-align: center;">
                                                    Please Wait....
                                                    <img src="../images/progressbarsmall.gif" alt="Loading" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12" id="tblGrdAndButton" runat="server">
                            <div class="x_panel">
                                <div class="col-md-3 col-sm-8 col-xs-12" style="padding-left: 0px;">
                                    <a href="#" runat="server" id="lnkPreviousYear" onserverclick="lnkPreviousYear_ServerClick"
                                        title="Previous Year"><i class="fa fa-2x fa-arrow-left" aria-hidden="true"></i>
                                    </a>
                                    <asp:Label ID="lblYear" ForeColor="Blue" Font-Size="Large" Text="" runat="server"></asp:Label>
                                    <a href="#" runat="server" id="lnkNextYear" onserverclick="lnkNextYear_ServerClick"
                                        title="Next Year"><i class="fa fa-2x fa-arrow-right" aria-hidden="true"></i>
                                    </a>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12" style="text-align: right;">
                                </div>
                                <div class="x_content">
                                    <div class="table-responsive">
                                        <asp:GridView ID="grdHoliday" runat="server" AllowPaging="false" AutoGenerateColumns="false"
                                            Width="100%" AllowSorting="false" EmptyDataText="Record Not Available..." CellPadding="1"
                                            CellSpacing="1" GridLines="none" CssClass="grid-view" HeaderStyle-CssClass="header" RowStyle-CssClass="normal"
                                                            AlternatingRowStyle-CssClass="alternate" BorderWidth="0px">
                                            <Columns>
                                                <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <%#Container.DataItemIndex+1 %>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="false" Width="30" />
                                                    <ItemStyle Width="30" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Day">
                                                    <ItemTemplate>
                                                        <%#Eval("Day")%>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="false" Width="80" HorizontalAlign="Left" />
                                                    <ItemStyle Wrap="false" Width="80" HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Date">
                                                    <ItemTemplate>
                                                        <%#Eval("Date")%>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="false" Width="75" HorizontalAlign="Left" />
                                                    <ItemStyle Wrap="false" Width="75" HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="City">
                                                    <ItemTemplate>
                                                        <%#Eval("City")%>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="false" Width="170" HorizontalAlign="Left" />
                                                    <ItemStyle Wrap="false" Width="170" HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="State">
                                                    <ItemTemplate>
                                                        <%#Eval("State")%>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="false" Width="170" HorizontalAlign="Left" />
                                                    <ItemStyle Wrap="false" Width="170" HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Occasions">
                                                    <ItemTemplate>
                                                        <%#Eval("Occasions")%>
                                                    </ItemTemplate>
                                                    <HeaderStyle Wrap="true" HorizontalAlign="Left" />
                                                    <ItemStyle Wrap="true" HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                            </Columns>
                                         <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                            <PagerStyle CssClass="pagerstyle" HorizontalAlign="Left" />
                                            <HeaderStyle Wrap="false" CssClass="header" />
                                            <RowStyle Wrap="false" CssClass="normal"/>
                                            <AlternatingRowStyle CssClass="alternate" />
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
