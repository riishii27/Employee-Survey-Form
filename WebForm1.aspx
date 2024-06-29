<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Employee_Survey_Form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"  >
        
        <div class="col-md-8 col-md-offset-2">

            <asp:Label ID="Label1" runat="server" Text="1.Employee Name"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Employee name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

        
        <asp:Label ID="Label2" runat="server" Text="2.Address"></asp:Label>
        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<p>
            <asp:Label ID="Label3" runat="server" Text="3.Mobile No."></asp:Label>
            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
        </p>
            <p>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone Number is invalid" ForeColor="Red" ValidationExpression="^(\+?91|0)?[789]\d{9}$"></asp:RegularExpressionValidator>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Phone No is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="4.Email ID"></asp:Label>
            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email ID is invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
            <br />
        <asp:Label ID="Label5" runat="server" Text="5.Company Name"></asp:Label>
        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Company Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
            <p>
            <asp:Label ID="Label6" runat="server" Text="6.Experience in Years"></asp:Label>
            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
        </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Experience is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        <asp:Label ID="Label7" runat="server" Text="Please indicate the source you use to locate job applicates"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Newspaper</asp:ListItem>
            <asp:ListItem>Recruiters</asp:ListItem>
            <asp:ListItem>Web Resource</asp:ListItem>
            <asp:ListItem>Magazines</asp:ListItem>
        </asp:RadioButtonList>
        <p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please select proper option " ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
            <p>
            <asp:Label ID="Label8" runat="server" Text="7.Enter your state"></asp:Label>
            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter your state" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label11" runat="server" Text="10.Age(optional)"></asp:Label>
            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
        <p>
            &nbsp;</p>
            </div>
        <p>
            <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" OnClick="btnsubmit_Click" Text="Submit" Width="78px" />
            <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" style="margin-left: 26px" Text="Clear" OnClick="Button2_Click" />
        </p>
    </form>
</body>
</html>
