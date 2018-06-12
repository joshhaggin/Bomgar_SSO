<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Proyecto_SO.inicio" %>


<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="no-js">
		<head runat="server">
		<%--<link href='https://fonts.googleapis.com/css?family=Pinyon+Script' rel='stylesheet' type='text/css'>--%>
		<style type="text/css">
		*{
		   margin:0px;
		   padding:0px;
		}
		body{
		   font-family ="font-family: Helvetica, Arial, sans-serif"
		}
		form{
		   width:610px;
		   border:1px solid #4e4d4d;
		   border-radius:3px;
		   -moz-border-radius:3px;
		   -webkit-border-radius:3px;
		   box-shadow:inset 0 0 10px #000;
		   margin:100px auto;
		}
		form input{
		   width: 280px;
		   height:35px;
		   padding:0px 10px;
		   color:#6d6d6d;
		   text-aling:center;

		}
		form button{
		   width:135px;
		   margin:20px 0px 30px 30px;
		   height:50px;
		}
        form img {
            position: relative;
            top: 5px;
        }

		</style>
		</head>

		<body leftmargin="0" topmargin="0" marginwidth="0" bgcolor="#E6E6E6" >

			<div id="contenedor" >
				<br />
				<div id="caja_login">
                    <center>
					
					<form id="Login" method="post" runat="server">
                        <img src="untitled.png" />	
					<div align="left" style="color:white; padding-left: 10px; background-color:gray; font-family: Helvetica, Arial, sans-serif; height: 26px; padding-top: 9px"><b>KSS Chat Authentication</b></div>
					<asp:HiddenField ID="txtDomain" Runat="server"></asp:HiddenField><br><br>
					<asp:TextBox ID="txtUsername" Runat="server" placeholder="firstname.lastname" width="50%"></asp:TextBox><br><br>
					<asp:TextBox ID="txtPassword" Runat="server" placeholder="Password" TextMode=Password width="50%"></asp:TextBox><br><br><br>
					<asp:Button ID="btnLogin" Runat="server" Text="Login" OnClick="Login_Click" cssClass="button"></asp:Button><br>
					<asp:Label ID="errorLabel" Runat="server" ForeColor="#ff3300"></asp:Label><br>
						

					</form>
					</center>
				</div>
			 
		    </div>

		</body>
</html>

<script runat="server">

    void Login_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text == "" || txtUsername.Text == "")
        {
            Response.Redirect("saml_kss.aspx");
        }
        else
        {
            Session["user"] = txtUsername.Text;
            Session["domain"] = "kiewitplaza";
            Session["pass"] = txtPassword.Text;
            Response.Redirect("KSS_Chat.aspx");
            //Response.Redirect("KSS_Chat.aspx?contrasena=" + txtPassword.Text + "&usuario=" + txtUsername.Text + "&dom=" + txtDomain.Text);
        }

    }

    // protected void Page_Load(object sender, EventArgs e)
    // {
    //     if (User.Identity.IsAuthenticated)
    //     {
    //var username1 = User.Identity.Name;
    //var username2 = username1.Remove(0,12);
    //txtUsername.Text = username2;
    //Response.Redirect("KSS_Chat.aspx");
    //     }
    //     else
    //     {
    //         Page.Title = "Home page for guest user.";
    //     }
    // }     

    protected void Page_Load(object sender, EventArgs e)
    {
        var LoggedOnUser = HttpContext.Current.User.Identity.Name;

        if (LoggedOnUser.StartsWith("kiewitplaza", StringComparison.OrdinalIgnoreCase) )
        {
            Page.Title = LoggedOnUser;
            //Response.Redirect("KSS_Chat.aspx");
        }

    }

</script>

