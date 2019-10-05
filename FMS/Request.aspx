<%@ page title="Request" language="C#" masterpagefile="~/Default.master" autoeventwireup="true" inherits="FMS_Request, App_Web_4xfo1so1" %>

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
                            <td style="width: 80vw">
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
                                                        <asp:Label ID="lblheader" runat="server" CssClass="h4 card-title" Text="Request"></asp:Label>
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
                                                                 <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Module <span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtModule" runat="server" CssClass="form-control text-uppercase" Enabled="false"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Subject <span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control text-uppercase"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div class="form-group">
                                                                        <label class="">Remarks <span class="text-danger">*</span></label>
                                                                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control text-uppercase" TextMode="MultiLine"
                                                                            AutoComplete="off" onfocus="this.select();"></asp:TextBox>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12 text-center">
                                                            <input type="button" id="htmlSend" runat="server" class="btn btn-info" value="Send" onclick="DisableSendClick();" />
                                                            <asp:Button ID="btnSend" runat="server" CssClass="d-none" OnClick="btnSend_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
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
    </asp:UpdatePanel>
    <script language="javascript" type="text/javascript">

        function DisableSendClick() {
            document.getElementById("<%=htmlSend.ClientID %>").disabled = true;
            msg = 'Wait..!';
            document.getElementById("<%=htmlSend.ClientID %>").value = msg;
            document.getElementById("<%=btnSend.ClientID %>").click();
        }
    </script>
</asp:Content>
