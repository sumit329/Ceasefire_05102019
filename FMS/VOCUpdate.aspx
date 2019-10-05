<%@ page title="VOC Update" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_VOCUpdate, App_Web_4xfo1so1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="uppnlForAll" runat="server">
        <ContentTemplate>
            <div class="content">
                <div class="container-fluid">
                    <table style="width: 100%;">
                        <tr>
                            <td></td>
                            <td style="width: 80vw;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 text-left">
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
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-info">
                                                <div class="row">
                                                    <div class="col-md-6">                                                        
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
                                                        <%--<h4 class="card-title">VOC Update</h4>--%>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <small class="">Fields with <span class="text-danger font-weight-bold">*</span> mark are mandatory.</small>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="row form-group">
                                                                <div class="col-md-6 form-control">
                                                                    <label>Case No. :</label>
                                                                    <asp:Label id="lblCaseNo" runat="server" ></asp:Label>
                                                                </div>
                                                                <div class="col-md-6 form-control">
                                                                     <label>Department :</label>
                                                                    <asp:Label id="lblDepartment" runat="server"></asp:Label>
                                                                </div>
                                                                <div class="col-md-6 form-control">
                                                                     <label>Open By :</label>
                                                                    <asp:Label id="lblOpenBy" runat="server"></asp:Label>
                                                                </div>
                                                                <div class="col-md-3 form-control">
                                                                     <label>Type :</label>
                                                                    <asp:Label id="lblType" runat="server"></asp:Label>
                                                                </div>
                                                                <div class="col-md-3 form-control">
                                                                     <label>Priority :</label>
                                                                    <asp:Label id="lblPriority" runat="server"></asp:Label>
                                                                </div>
                                                                <div class="col-md-12 form-control">
                                                                     <label>Remarks :</label>
                                                                    <asp:Label id="lblRemarks" runat="server"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>Assign To<span class="text-danger">*</span></label>
                                                                        <asp:DropDownList ID="ddlAssignTo" runat="server" CssClass="form-control text-uppercase">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label>Status<span class="text-danger">*</span></label>
                                                                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control text-uppercase">
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks<span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" AutoComplete="off"
                                                                            MaxLength="500" onfocus="this.select();" CssClass="form-control">
                                                                        </asp:TextBox>
                                                                        <asp:RequiredFieldValidator ID="rfv_txtRemarks" runat="server" ControlToValidate="txtRemarks"
                                                                            SetFocusOnError="true" Display="None" ErrorMessage="Remarks can not be blank !"
                                                                            ValidationGroup="save" Font-Size="8pt"></asp:RequiredFieldValidator>
                                                                        <AjaxTools:ValidatorCalloutExtender ID="vce_txtRemarks" runat="server" Enabled="True"
                                                                            TargetControlID="rfv_txtRemarks">
                                                                        </AjaxTools:ValidatorCalloutExtender>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12 text-center">
                                                                    <input type="button" id="htmlSave" runat="server" class="btn btn-info" value="Save" onclick="DisableSaveClick();" />
                                                                    <asp:Button ID="btnSave" runat="server" CssClass="d-none" OnClick="btnSave_Click" />
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-info  pr-0 pl-0">
                                                <div class="row d-none">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search by Department</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-danger mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="Button1" onserverclick="lnkExport_Click" runat="server" 
                                                            class="btn btn-danger mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <h4 class="card-title pl-2">VOC Update</h4>
                                                    </div>
                                                    <div class="col-md-6 text-right">
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" Style="height: auto;width:80vw;">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="true"
                                                                    AutoGenerateColumns="true"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="VOCID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging"
                                                                    OnRowCreated="grdMasterView_RowCreated">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>update</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("VOCID")%>' />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="20px" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                    <PagerStyle CssClass="table" HorizontalAlign="Left" />
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
                            </td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="lnkExport" />
        </Triggers>
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">
        function DisableSaveClick() {
            document.getElementById("<%=htmlSave.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSave.ClientID %>").value = msg;
            document.getElementById("<%=btnSave.ClientID %>").click();
        }
    </script>
</asp:Content>
