using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persistence
{
    public class Conexao
    {
        protected SqlConnection Con;
        protected SqlCommand Cmd;
        protected SqlDataReader Dr;


        //Método para abrir conexão:
        public void AbrirConexao()
        {
            try
            {
                Con = new SqlConnection("Data Source=PCGLAUCIA;Initial Catalog=master;Integrated Security=True");
                Con.Open();
            }
            catch
            { 
                throw;
            }
        }

        //Método para fechar conexão:
        public void FecharConexao()
        {
            try
            {
                if (Con != null)
                    Con.Close();
            }
            catch
            { 
                throw;
            }
        }
    }
}
