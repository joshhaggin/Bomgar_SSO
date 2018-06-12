﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Proyecto_SO.info" %>
<%@ Import Namespace="Proyecto_SO" %>


<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server"> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%--<title>Kiewit Corporation - Remote Support</title>--%>


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

        form input {
            width: 280px;
            height: 35px;
            padding: 0px 10px;
            color: #6d6d6d;
            text-aling: center;
        }

        textarea {
            resize: both;
        }

		</style>

        <script type="text/javascript" src="https://help.kiewit.com/api/start_session.js"></script>
	    <script type="text/javascript">BG.setSite("kss.kiewit.com");</script>

        <script type="text/javascript">
			
			function click2chat() {
				var issue = document.getElementById("GSR_Text")
				var user = document.title

				BG.start(BG.START_TYPE.CHAT, {
					issue: {
						id: 10
					},
					customer: {
						name: user,
						details: issue.value
					}
				})
			}
			
			function reload() {
				document.getElementById('Chat_Q').value = " ";
				document.getElementById('GSR_Text').value = " ";
				document.getElementById('Submit').style.display = 'none';
			}
			
		</script>

        

</head>

<body leftmargin="0" topmargin="0" marginwidth="0" bgcolor="#E6E6E6" >
		
 		<form id="info" method="post" runat="server">

        <div id="caja_centro">
				<div id="caja_info" style="padding-left: 5px; padding-top: 4px" >
                    <img src="untitled.png" />
                <div align="left" style="color:white; padding-left: 10px; background-color:gray; font-family: Helvetica, Arial, sans-serif; height: 26px; padding-top: 9px">
                    <b>Issue Submission</b>
                </div>

					<table width="100%" id="user" style="font-family: Helvetica, Arial, sans-serif;">
                        <tbody>
                            <tr style="height:20px">
                                <td></td>
                            </tr>
							<tr>
								<td style="width: 30%"; align="right">Your Issue:</td>
								<td align="left">
									<select id = "Chat_Q">
										<option value=" "></option>
										<option value = "SAP_Access">Need help with access in SAP</option>
										<option value = "MFA">Need help with MFA</option>
										<option value = "Tech_Support">Need Technical Support</option>
									</select>
								</td>
							</tr>
							<tr height="50px">
								<td align="right"><p>Describe your issue:</p></td>
								<td align="left">
                                    <div>
									    <textarea id="GSR_Text" name="text" rows="3" cols="30" wrap="soft"> </textarea>
                                    </div>
								</td>
							</tr> 
							<tr height="25px">
							</tr>
							<tr style="font-size:15px">
								<td style="width: 32%";>&nbsp;</td>
								<td align="left"><input type="button" onclick="click2chat();" value="Chat with KSS" style="width: 122px"> &nbsp; <input type="button" id="Reset_Form" name="Reset_Form" value="Reset Form" onclick="reload();" style="width: 122px"></td>
							</tr>
                            <tr>
                                <td style="height:15px"></td>
                            </tr>
						</tbody>
					</table>
                   
				</div>

 </form>
		
</div>
			
</body>
</html>

<script runat="server">

//void login(string nom, string pass)
//{
//    string adPath = "LDAP://" + Session["domain"];
//    LDAPAutenticador aut = new LDAPAutenticador(adPath);

//    try
//    {
//        if (aut.autenticado((string)Session["domain"], (string)Session["user"], (string)Session["pass"]) == true)
//        {

//        }


//    }
//    catch (Exception ex)
//    {
//        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "error", "alert('" + ex.ToString() + "');", true);
//        Response.Redirect("saml_kss.aspx");
//    }

//}

//protected void Page_Load(object sender, EventArgs e)
//{

//    string adPath = "LDAP://" + Session["domain"];
//    LDAPAutenticador aut = new LDAPAutenticador(adPath);

//    try
//    {
//        if (aut.autenticado((string)Session["domain"], (string)Session["user"], (string)Session["pass"]) == true)
//        {

//        }

//        //var LoggedOnUser = System.Environment.UserName;

//        //Page.Title = LoggedOnUser;
//        Page.Title = (string)Session["user"];

//    }
//    catch (Exception ex)
//    {
//        ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "error", "alert('" + ex.ToString() + "');", true);
//        Response.Redirect("saml_kss.aspx");
//    }


//}

</script>
