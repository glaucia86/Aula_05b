using DAL.Model;
using DAL.Persistence;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Persistence
{
    public class CadeiraDAL : Conexao
    {
        //Método Insert: Gravar:
        public void Insert(Cadeira c)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("insert into Cadeira (Cor, Modelo, Marca, Preco, Descricao, Entrega, DataCompra) values(@cor, @modelo, @marca, @preco, @descricao, @entrega, @data_compra)", Con);

                Cmd.Parameters.AddWithValue("@cor", c.Cor);
                Cmd.Parameters.AddWithValue("@modelo", c.Modelo);
                Cmd.Parameters.AddWithValue("@marca", c.Marca);
                Cmd.Parameters.AddWithValue("@preco", c.Preco);
                Cmd.Parameters.AddWithValue("@descricao", c.Descricao);
                Cmd.Parameters.AddWithValue("@entrega", c.Entrega);
                Cmd.Parameters.AddWithValue("@data_compra", c.DataCompra);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao inserir dados no BD " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //Método SelectAll: Selecionar:
        public List<Cadeira> SelectAll()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Cadeira", Con);
                Dr = Cmd.ExecuteReader();

                List<Cadeira> lista = new List<Cadeira>();

                while (Dr.Read())
                {
                    Cadeira c = new Cadeira();

                    c.Codigo        = Convert.ToInt32(Dr["Codigo"]);
                    c.Cor           = Convert.ToString(Dr["Cor"]);
                    c.Modelo        = Convert.ToString(Dr["Modelo"]);
                    c.Marca         = Convert.ToString(Dr["Marca"]);
                    c.Preco         = Convert.ToDecimal(Dr["Preco"]);
                    c.DataCompra    = Convert.ToDateTime(Dr["DataCompra"]);
                    c.Descricao     = Convert.ToString(Dr["Descricao"]);
                    c.Entrega       = Convert.ToString(Dr["Entrega"]);

                    lista.Add(c);
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw new Exception("\tErro ao selecionar os itens do BD " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
