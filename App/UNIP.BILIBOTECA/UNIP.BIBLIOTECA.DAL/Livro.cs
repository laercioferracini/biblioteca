using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UNIP.BIBLIOTECA.DAL
{
    class Livro
    {
        public String nome { get; set; }
        public String autor { get; set; }
        public int ano { get; set; }
        public String genero { get; set; }
        public String editora { get; set; }
        public int paginas { get; set; }
        public char status { get; set; }
        
    }
}
