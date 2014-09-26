﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAcessar(object sender, EventArgs e)
        {
            string opcao = ddlMenu.SelectedValue;

            switch (opcao)
            { 
                case "1":
                    Response.Redirect("~/Pages/Cadastro.aspx");
                    break;
                case "2":
                    Response.Redirect("~/Pages/Consulta.aspx");
                    break;
                default:
                    lblMensagem.Text = "Opção Inválida!! Marque uma opção válida!";
                    break;
            }
        }
    }
}