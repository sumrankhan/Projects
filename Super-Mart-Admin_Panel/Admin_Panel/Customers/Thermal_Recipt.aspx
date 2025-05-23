<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thermal_Recipt.aspx.cs" Inherits="Admin_Panel.Customers.Thermal_Recipt" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
</head>
<body>
    <table style="width:100%;">
        <tr>
            <td style="width:100%;text-align:center;">
                <img src="../images/logo.png" style="width:auto; height:auto;"/>
            </td>
        </tr>
        <tr>
            <td style="width:100%;text-align:center;">
                <p style="font-weight:bold;margin:0;padding:0;">Shop Easy</p>
                <p style="font-weight: bold; margin: 0; padding: 0;">Your Trusted Store</p>
                <p style="font-weight: bold; margin: 0; padding: 0;">Ph : 051-1234567</p>
                <p style="font-weight: bold; margin: 0; padding: 0;">NTN # : 9876543-1</p>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr style="width:100%;">
            <td style="width:10%;"></td>
            <td style="width:30%;">
                <P style="margin:5px;font-weight:bold;">Order ID:</P>
                <P style="margin: 5px; font-weight: bold;">Invoice#:</P>
                <P style="margin: 5px; font-weight: bold;">27-11-2024</P>
            </td>
            <td style="width:40%;text-align:right;">
                <P style="margin:5px;">ORD123456</P>
                <P style="margin: 5px;">INVOICE00789</P>
                <P style="margin: 5px;">10:30:10 AM</P>
            </td>
            <td style="width: 20%; border: 1px dashed black;text-align:center;font-size:12px;">
                ONLINE PURCHASE
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td style="width:80%;">
                <div style="display: flex;width:100%;">
                    <div style="text-align:left;width:50%;">
                        <b>Customer:</b>
                    </div>
                    <div style="text-align: right; width: 50%;">
                        John Doe
                    </div>
                </div>
                <div style="display: flex;width:100%;">
                    <div style="text-align:left;width:50%;">
                        <b>Payment Method:</b>
                    </div>
                    <div style="text-align: right; width: 50%;">
                        CREDIT CARD
                    </div>
                </div>
            </td>
            <td style="width:20%;border:1px dashed black;text-align:right;">
                Shipped
            </td>
        </tr>
    </table>
    <table style="border-collapse: collapse; width: 100%; border: 1px solid black;">
        <tr>
            <td style="border:1px solid black;">
                <b># Description</b>
            </td>
            <th style="border:1px solid black;">
                Rate
            </th>
            <th style="border:1px solid black;">
                Qty
            </th>
            <th style="border:1px solid black;">
                Total
            </th>
        </tr>
        <tr>
            <td>1 Laptop</td>
            <td style="text-align:center;">45,000</td>
            <td style="text-align:center;">1</td>
            <td style="text-align:center;">45,000</td>
        </tr>
        <tr>
            <td>2 Wireless Mouse</td>
            <td style="text-align:center;">1,200</td>
            <td style="text-align:center;">2</td>
            <td style="text-align:center;">2,400</td>
        </tr>
        <tr>
            <td>1 Keyboard</td>
            <td style="text-align:center;">2,500</td>
            <td style="text-align:center;">1</td>
            <td style="text-align:center;">2,500</td>
        </tr>
        <tr>
            <td>3 USB Cables</td>
            <td style="text-align:center;">300</td>
            <td style="text-align:center;">3</td>
            <td style="text-align:center;">900</td>
        </tr>
    </table>
    <style>
        p{
            margin:2px;
        }
    </style>
    <table style="width:100%;">
        <tr>
            <td style="width:20%;">
            </td>
            <td style="width:40%;">
                <p>Total Amount</p>
                <p>Sales Tax(5%)</p>
                <p>Discount</p>
                <p>Shipping Fee</p>
                <p style="font-weight:bold;">Service Charges</p>
                <p style="font-weight:bold;">Gross Total:</p>
                <p style="font-weight:bold;">Received:</p>
                <p style="font-weight:bold;">Change:</p>
            </td>
            <td style="width:40%;text-align:right;">
                <p>50,800</p>
                <p>2,540</p>
                <p>0</p>
                <p>500</p>
                <p style="font-weight:bold;">0</p>
                <div style="display: flex;width:100%;">
                    <div style="text-align:left;width:50%;">
                        <b>PKR</b>
                    </div>
                    <div style="text-align: right; width: 50%;">
                        53,840
                    </div>
                </div>
                <p style="font-weight:bold;">53,840</p>
                <p style="font-weight:bold;">0</p>
            </td>
        </tr>
    </table>
</body>

</html>
