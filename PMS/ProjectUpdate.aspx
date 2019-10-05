<%@ page title="Project Update" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="PMS_ProjectUpdate, App_Web_jsic22tx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="assets/css/CATStyle.css" rel="stylesheet" />
    <style type="text/css">
        .bg-green {
            background-color: #63b967;
            opacity: 0.5;
        }
    </style>
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
                                    <div class="col-md-11">
                                        <Message:MessageBox ID="MessageBox" runat="server" ShowCloseButton="true" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-11 text-left">
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
                                <div class="row vw85">
                                    <div class="col-md-12">
                                        <div class="card" id="cardInput" runat="server">
                                            <div class="card-header card-header-success">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title"></asp:Label>
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
                                                            <div class="row">
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">Order Code</label>
                                                                        <asp:Label ID="lblOrderCode" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <div class="form-group">
                                                                        <label class="">Customer Name</label>
                                                                        <asp:Label ID="lblCustomerName" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Address</label>
                                                                        <asp:Label ID="lblAddress" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Project Name</label>
                                                                        <asp:Label ID="lblProjectName" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Project Owner</label>
                                                                        <asp:Label ID="lblProjectOwner" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">Start Date</label>
                                                                        <asp:Label ID="lblStartDate" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">End Date</label>
                                                                        <asp:Label ID="lblEndDate" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="">Total Days</label>
                                                                        <asp:Label ID="lblTotalDays" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks</label>
                                                                        <asp:Label ID="lblRemarks" runat="server" CssClass="form-control"></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="card">
                                                                <div class="card-body">
                                                                    <div class="container-fluid">
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <asp:Panel ID="pnlProjectStage" runat="server" ScrollBars="Auto" Style="height: auto; width: auto;">
                                                                                    <asp:GridView ID="grdProjectStage" runat="server" AllowPaging="true"
                                                                                        AutoGenerateColumns="false"
                                                                                        Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="ProjectStageSummaryID"
                                                                                        AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                        CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                                        OnRowDataBound="grdProjectStage_RowDataBound">
                                                                                        <Columns>
                                                                                            <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <asp:LinkButton ID="lnkProjectStageUpdate" runat="server" CssClass="btn btn-success" Text="<i class='material-icons'>edit</i>" OnClick="lnkProjectStageUpdate_Click"
                                                                                                        CommandArgument='<%#Eval("ProjectStageSummaryID")%>' />
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                                                <ItemStyle Wrap="false" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Container.DataItemIndex+1 %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Project Stage" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Project Stage") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Sequence" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Sequence") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Dependent On" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Dependent On") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Start Date" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Start Date") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="End Date" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("End Date") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Member Name" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblMemberNameID" Visible="false" runat="server" Text='<%#Eval("MemberName") %>'></asp:Label>
                                                                                                    <asp:Label ID="lblMemberName" runat="server" Text='<%#Eval("Member Name") %>'></asp:Label>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                        </Columns>
                                                                                        <EmptyDataRowStyle CssClass="emptyrowstyle" />
                                                                                        <PagerStyle CssClass="table" HorizontalAlign="Left" />
                                                                                        <HeaderStyle Wrap="false" />
                                                                                        <RowStyle Wrap="false" />
                                                                                        <AlternatingRowStyle />
                                                                                    </asp:GridView>
                                                                                    <asp:GridView ID="grdProjectStatusView" runat="server" AllowPaging="true"
                                                                                        AutoGenerateColumns="false"
                                                                                        Width="100%" CssClass="table table-bordered table-hover"
                                                                                        AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                                        CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                                        OnRowDataBound="grdProjectStatusView_RowDataBound">
                                                                                        <Columns>
                                                                                            <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Container.DataItemIndex+1 %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Project Stage" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Project Stage") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Sequence" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Sequence") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Dependent On" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Dependent On") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Start Date" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Start Date") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="End Date" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("End Date") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Total Days" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Total Days") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Member Name" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Member Name") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Last Status" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Last Status") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Last Status Date" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Last Status Date") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Document" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <asp:LinkButton ID="lbtnOpenfile" CommandArgument='<%#Eval("LastFilepath") %>' OnClick="lbtnOpenfile_Click" runat="server" CssClass="btn btn-info" Text="<i class='material-icons'>open_in_browser</i>"></asp:LinkButton>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="Last Remarks" ItemStyle-HorizontalAlign="Center">
                                                                                                <ItemTemplate>
                                                                                                    <%#Eval("Last Remarks") %>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle Wrap="false" HorizontalAlign="Center" />
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
                                                    <div class="row">
                                                        <div class="col-md-12 text-center">
                                                            <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-default" OnClick="btnBack_Click" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card" id="cardList" runat="server">
                                            <div class="card-header card-header-success  pr-0 pl-0">
                                                <div class="row">
                                                    <div class="col-md-3 pr-0 pl-0 mt-2 text-right">
                                                        <label class="text-white">Search</label>
                                                    </div>
                                                    <div class="col-md-5 pr-0">
                                                        <asp:TextBox ID="txtSearch" runat="server" AutoComplete="off"
                                                            onfocus="this.select();" CssClass="form-control text-uppercase white"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-4 pl-0 pr-0 d-flex">
                                                        <asp:Button ID="btnSearch" runat="server" Text="GO" CssClass="btn btn-danger mt-0 mb-0"
                                                            OnClick="btnSearch_Click" />
                                                        <button id="lnkExport" onserverclick="lnkExport_Click" runat="server" class="btn btn-primary mt-0 mb-0"><i class="material-icons">save_alt</i></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <asp:Panel ID="divDetail" runat="server" ScrollBars="Auto" CssClass="vw80">
                                                                <asp:GridView ID="grdMasterView" runat="server" AllowPaging="false"
                                                                    AutoGenerateColumns="false"
                                                                    Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="ProjectCreationSummaryID"
                                                                    AllowSorting="false" EmptyDataText="Record Not Available..."
                                                                    CellPadding="1" CellSpacing="1" GridLines="none" BorderWidth="0px"
                                                                    OnPageIndexChanging="grdMasterView_PageIndexChanging" OnRowCommand="grdMasterView_RowCommand"
                                                                    OnRowDeleting="grdMasterView_RowDeleting" OnRowCreated="grdMasterView_RowCreated"
                                                                    OnRowDataBound="grdMasterView_RowDataBound">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="ACTION" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <asp:LinkButton ID="lnkUpdate" runat="server" CssClass="btn btn-success" Text="<i class='material-icons'>edit</i>" OnClick="lnkUpdate_Click"
                                                                                    CommandArgument='<%#Eval("ProjectCreationSummaryID")%>' />
                                                                                <asp:LinkButton ID="lnkView" runat="server" CssClass="btn btn-success" Text="<i class='material-icons'>visibility</i>" OnClick="lnkView_Click"
                                                                                    CommandArgument='<%#Eval("ProjectCreationSummaryID")%>' />
                                                                                <asp:LinkButton ID="lnkClose" runat="server" CssClass="btn btn-danger" Text="Close" CommandName="Close"
                                                                                    CommandArgument='<%#Eval("ProjectCreationSummaryID")%>' />
                                                                                <AjaxTools:ConfirmButtonExtender ID="lnkClose_ConfirmButtonExtender"
                                                                                        runat="server" ConfirmText="ARE YOU SURE TO CLOSE THIS PROJECT?" Enabled="True"
                                                                                        TargetControlID="lnkClose">
                                                                                    </AjaxTools:ConfirmButtonExtender>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Center" Wrap="false" Width="60px" />
                                                                            <ItemStyle Wrap="false" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="SL#" HeaderStyle-Width="5%" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Container.DataItemIndex+1 %>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Order Code" ItemStyle-HorizontalAlign="Left">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Order Code")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Customer Name" ItemStyle-HorizontalAlign="Left">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Customer Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Project Name" ItemStyle-HorizontalAlign="Left">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Project Name")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Project Owner" ItemStyle-HorizontalAlign="Left">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Project Owner")%>
                                                                                <asp:Label ID="lblProjectOwnerID" runat="server" Text='<%#Eval("ProjectOwner")%>' CssClass="d-none"></asp:Label>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Start Date" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Start Date")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="End Date" ItemStyle-HorizontalAlign="Center">
                                                                            <ItemTemplate>
                                                                                <%#Eval("End Date")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Days" ItemStyle-HorizontalAlign="Right">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Total Days")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Total Stage" ItemStyle-HorizontalAlign="Right">
                                                                            <ItemTemplate>
                                                                                <%#Eval("Total Stage")%>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle Wrap="false" HorizontalAlign="Center" />
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
    <asp:Button ID="btnmpeUpdateStatus" runat="server" CssClass="d-none" Text=""></asp:Button>
    <AjaxTools:ModalPopupExtender ID="mpeUpdateStatus" runat="server" BackgroundCssClass="bg-green"
        CancelControlID="btnmpeUpdateStatus" DropShadow="false" PopupControlID="pnlmpeUpdateStatus" PopupDragHandleControlID="pnlmpeUpdateStatus"
        TargetControlID="btnmpeUpdateStatus">
    </AjaxTools:ModalPopupExtender>
    <asp:Panel ID="pnlmpeUpdateStatus" runat="server" BackColor="White" BorderStyle="None" Height="350px"
        ScrollBars="Auto">
        <asp:UpdatePanel ID="upnlmpeUpdateStatus" runat="server">
            <ContentTemplate>
                <div class="modal-content" style="width: 60vw;">
                    <div class="modal-header">
                        <h4 class="modal-title">Update Status</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label>Status Date</label>
                                    <asp:TextBox ID="txtStatusDate" runat="server" AutoComplete="off"
                                        onfocus="this.select();" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Status<span class="text-danger">*</span></label>
                                    <asp:DropDownList ID="ddlStatus" runat="server"
                                        CssClass="form-control">
                                        <asp:ListItem Text="SELECT" Value="SELECT"></asp:ListItem>
                                        <asp:ListItem Text="IN-PROCESS" Value="IN-PROCESS"></asp:ListItem>
                                        <asp:ListItem Text="CLOSED" Value="CLOSED"></asp:ListItem>
                                        <asp:ListItem Text="PENDING" Value="PENDING"></asp:ListItem>
                                        <asp:ListItem Text="HOLD" Value="HOLD"></asp:ListItem>
                                        <asp:ListItem Text="REJECTED (LIST ITEM)" Value="REJECTED (LIST ITEM)"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>File Upload</label>
                                <asp:FileUpload ID="fuDocumment" runat="server" CssClass="custom-file" />
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="">Remarks <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control text-uppercase" TextMode="MultiLine"
                                        MaxLength="500" AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnUpdateStatusSave" runat="server" CssClass="btn btn-success" Text="Save" OnClick="btnUpdateStatus_Click" />
                        <asp:Button ID="btnUpdateStatusCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnUpdateStatusCancel_Click"></asp:Button>
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnUpdateStatusSave" />
            </Triggers>
        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>
