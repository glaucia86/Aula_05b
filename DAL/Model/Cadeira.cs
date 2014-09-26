using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Model
{
    public class Cadeira
    {
        public int Codigo { get; set; }
        public string Cor { get; set; }
        public string Modelo { get; set; }
        public string Marca { get; set; }
        public decimal Preco { get; set; }
        public DateTime DataCompra { get; set; }
        public string Entrega { get; set; }
        public string Descricao { get; set; }
    }
}
