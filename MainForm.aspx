<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="DiscountProvider.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Store"></asp:Label>
            <br />
            <p> Fields with * mark are Required.</p>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Product Name *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtprod" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_Productname" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Quantity *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtquantity" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_Quantiy" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Cost *"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcost" runat="server" ></asp:TextBox>
            <asp:Label ID="lbl_cost" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Category"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="cmbcategory" runat="server" Height="16px" Width="164px">
            </asp:DropDownList>
            
            &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Individual 10% discount , NonProfit 20% discount and Corporate 30% dicsount "></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtamount" runat="server" ReadOnly="True" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Discount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDiscount" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Net Amount"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNamount" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnBill" runat="server" OnClick="btnBill_Click" Text="Calculate Bill" Width="177px" />
        </div>
    </form>
</body>
</html>
