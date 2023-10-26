<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="TinyTotsWebApp.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            background: #dedede;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-element {
            margin-bottom: 14px;
        }
        .formPage {
            background: #ffffff;
            border:2px;
            box-shadow:2px;
            padding: 20px;
            width: 400px; /* Adjust the width as needed */

        }
        .title {
            text-align: center;
            font-size: 24px;
            margin-top:10px;


        }
        .calendarStyle {
            margin-top: 10px;
            width: 50%;
            border: 1px solid #ccc;
            background-color: #ffffff;
            box-shadow: 0px 0px 5px #ccc;
        }

        .buttonSubmit{
            margin-top:28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="formPage">
        <div class="title" style="margin-bottom: 30px;">
            <%Response.Write("Kindergarten Registration Form");%>
        </div>
        <div class="form-element">
            <asp:Label ID="labelFName" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </div>
        <div class="form-element">
            <asp:Label ID="labelLName" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </div>
        
        <div class="form-element" style="display: flex; align-items: center;">
            <asp:Label ID="labelRace" runat="server" Text="Race" style="margin-right: 43px;"></asp:Label>
             <asp:DropDownList ID="dropRace" runat="server">
                <asp:ListItem Text="Race 1" Value="Race 1"></asp:ListItem>
                <asp:ListItem Text="Race 2" Value="Race 2"></asp:ListItem>
                <asp:ListItem Text="Race 3" Value="Race 3"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-element" style="display: flex; align-items:center;">
            <asp:Label ID="labelGender" runat="server" Text="Gender" style="margin-right: 24px;"></asp:Label>
            <asp:RadioButton ID="RadioButtonMale" runat="server" Text="Male" GroupName="Gender" />
            <asp:RadioButton ID="RadioButtonFemale" runat="server" Text="Female" GroupName="Gender" />
        </div>
       <div class="form-element" >
        <asp:Label ID="labelFoodAllergies" runat="server" Text="Food Allergies" style="margin-right: 10px;"></asp:Label>
           <div>
               <asp:CheckBox ID="checkBoxNone" runat="server" Text="None" />
           </div> 
           <div>
                <asp:CheckBox ID="CheckBoxPeanuts" runat="server" Text="Peanuts" />
            </div>
            <div>
                <asp:CheckBox ID="CheckBoxDairy" runat="server" Text="Dairy" />
            </div>
            <div>
                <asp:CheckBox ID="CheckBoxGluten" runat="server" Text="Gluten" />
            </div>
      </div>
      <div class="form-element" style="display: flex; align-items:center;">
           <asp:Label ID="labelDOB" runat="server" Text="Date of Birth" style="margin-right: 10px;"></asp:Label>
      </div>
      <asp:Calendar ID="Calendar1" runat="server" CssClass="calendarStyle"></asp:Calendar>


      <div class="buttonSubmit">
         <asp:Button ID="Button1" runat="server" Text="Submit"  />
      </div>
      
      <div class="form-element" style="margin-top:24px; color:#00ff21;font-weight:600;">
         <asp:Label ID="labelHello" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
