<%@ page title="Financial Year" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_FinancialYearMaster, App_Web_nbyko0ky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="col-md-4 col-sm-12 col-xs-12 requiredclasss">
                            Fields with <span style="color: Red">*</span> mark are mandatory.
                        </div>
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <h3 class="headerhelpclasss">Financial Year Master</h3>
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
                                    <div class="form-horizontal form-label-left">
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Start Year
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:DropDownList ID="ddlStartYear" runat="server" CssClass="txtboxMedium width150" Font-Bold="true">
                                                    </asp:DropDownList>
                                                    <span class="required">*</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save"
                                                        OnClick="btnSave_Click" ValidationGroup="save" />
                                                    <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-success" Visible="False" Text="Update"
                                                        OnClick="btnUpdate_Click" ValidationGroup="save" />
                                                    <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" CssClass="btn btn-success" Text="Cancel" />
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                                <div class="col-md-3 col-sm-8 col-xs-12" style="padding-left: 0px;">
                                    <p>Search by Start Year</p>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <asp:TextBox ID="txtSearch" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                        onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="GO" CssClass="btn btn-success" />
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12" style="text-align: right;">
                                    <asp:ImageButton ID="lnkExport" runat="server" CssClass="Exporticon"
                                        OnClick="lnkExport_Click" ImageUrl="~/images/export.png" />
                                </div>
                                <div class="x_content">
                                    <div class="table-responsive">
                                        <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                            <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                Width="100%" CssClass="table table-bordered" DataKeyNames="FinancialYearID"
                                                AllowSorting="false" EmptyDataText="Record Not Available..."
                                                CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                OnRowDeleting="grdMasterView_RowDeleting"
                                                OnRowCreated="grdMasterView_RowCreated">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkView" runat="server" Text="View" CommandName="View" CommandArgument='<%#Eval("FinancialYearID")%>' />
                                                            |
                                                                        <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="View" CommandArgument='<%#Eval("FinancialYearID")%>' />
                                                            |
                                                                        <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                                                            CommandArgument='<%#Eval("FinancialYearID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
                                                                                runat="server" ConfirmText="Are you sure to delete this record?" Enabled="True"
                                                                                TargetControlID="btnDelete">
                                                                            </AjaxTools:ConfirmButtonExtender>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" Wrap="false" CssClass="width90" />
                                                        <ItemStyle Wrap="false" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <%#Container.DataItemIndex+1 %>
                                                        </ItemTemplate>
                                                        <HeaderStyle Wrap="false" />
                                                    </asp:TemplateField>
                                                </Columns>
                                                <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                <PagerStyle CssClass="pagerstyle" HorizontalAlign="Left" />
                                                <HeaderStyle Wrap="false" />
                                                <RowStyle Wrap="false" />
                                                <AlternatingRowStyle />
                                            </asp:GridView>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

