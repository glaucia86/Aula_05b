using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar(object sender, EventArgs e)
        {
            try
            {
                Cadeira c = new Cadeira();

                c.Cor       = ddlCor.SelectedValue;
                c.Modelo    = txtModelo.Text;
                c.Marca     = txtMarca.Text;
                c.Descricao = txtDescricao.Text;
                c.Entrega   = rblEntrega.SelectedValue;
                c.Preco     = Convert.ToDecimal(txtPreco.Text);
                c.DataCompra = DateTime.Now;

                CadeiraDAL d = new CadeiraDAL();

                d.Insert(c);
                lblMensagem.Text = "Venda Cadastrada com Sucesso!";

                LimparCampos();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = ex.Message;
            }
        }

        private void LimparCampos()
        {
            txtPreco.Text = string.Empty;
            txtDescricao.Text = string.Empty;
            txtMarca.Text = string.Empty;
            txtModelo.Text = string.Empty;
            rblEntrega.SelectedIndex = -1;
            ddlCor.SelectedIndex = -1;
        }
    }
}