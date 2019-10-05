<%@ page title="" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="Master_QualificationMaster, App_Web_nbyko0ky" %>

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
                            <h3 class="headerhelpclasss">Qualification Master</h3>
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
                                                    Qualification Code
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtQualificationCode" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                        onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <span class="required">*</span>
                                                    <asp:RequiredFieldValidator ID="rfvtxtQualificationCode" runat="server" ControlToValidate="txtQualificationCode"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Qualification Code can not be blank"
                                                        ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vcetxtQualificationCode" runat="server" Enabled="True"
                                                        TargetControlID="rfvtxtQualificationCode">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Qualification Name
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:TextBox ID="txtQualificationName" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                                        onfocus="this.select();" CssClass="form-control">
                                                    </asp:TextBox>
                                                    <span class="required">*</span>
                                                    <asp:RequiredFieldValidator ID="rfvtxtQualificationName" runat="server" ControlToValidate="txtQualificationName"
                                                        SetFocusOnError="true" Display="None" ErrorMessage="Qualification name can not be blank"
                                                        ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                    <AjaxTools:ValidatorCalloutExtender ID="vcetxtQualificationName" runat="server" Enabled="True"
                                                        TargetControlID="rfvtxtQualificationName">
                                                    </AjaxTools:ValidatorCalloutExtender>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-6 col-sm-12 col-xs-12"  id="trActive" runat="server" visible="false">
                                                <label class="control-label col-md-4 col-sm-4 col-xs-12">
                                                    Active
                                                </label>
                                                <div class="col-md-8 col-sm-8 col-xs-12">
                                                    <asp:CheckBox ID="chkIsActive" runat="server" />
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
                                                       OnClick="btnUpdate_Click" CausesValidation="true" ValidationGroup="save" />
                                                    <asp:Button ID="btnCancel" OnClick="btnCancel_Click" runat="server" CssClass="btn btn-success" Text="Cancel" />

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
                                    <p>Search by Qualification Code OR Name</p>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <asp:TextBox ID="txtSearch" runat="server" Style="text-transform: uppercase" AutoComplete="off"
                                        onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="GO" CssClass="btn btn-success" />
                                </div>
                                <div class="col-md-3 col-sm-6 col-xs-12" style="text-align: right;">
                                    <asp:ImageButton ID="lnkExport" OnClick="lnkExport_Click" runat="server" CssClass="Exporticon" ImageUrl="~/images/export.png" />
                                </div>
                                <div class="x_content">
                                    <div class="table-responsive">
                                        <asp:Panel ID="divDetail" runat="server" ScrollBars="Vertical" Style="max-height: 300px; height: auto;">
                                            <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true" AutoGenerateColumns="true"
                                                Width="100%" CssClass="table table-bordered" DataKeyNames="QualificationID"
                                                AllowSorting="false" EmptyDataText="Record Not Available..."
                                                CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                OnRowDeleting="grdMasterView_RowDeleting"
                                                OnRowCreated="grdMasterView_RowCreated">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lnkView" runat="server" Text="View" CommandName="View" CommandArgument='<%#Eval("QualificationID")%>' />
                                                            |
                                                                        <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="View" CommandArgument='<%#Eval("QualificationID")%>' />
                                                            |
                                                                        <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                                                            CommandArgument='<%#Eval("QualificationID")%>' /><AjaxTools:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender"
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

