using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UNIP.BIBLIOTECA.DAL;

namespace UNIP.BIBLIOTECA.BLL
{
    public class LivroBLL
    {
     
        public void regraInsercaoLivro(string Nome, string Autor, int Ano, string Genero, string Editora, int Paginas, char Status)
        {
            LivroDAL livro = new LivroDAL();
            livro.insereLivro(Nome, Autor, Ano, Genero, Editora, Paginas, Status);
        }

    }
}
