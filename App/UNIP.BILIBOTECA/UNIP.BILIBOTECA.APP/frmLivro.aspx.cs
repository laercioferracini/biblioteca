using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UNIP.BIBLIOTECA.BLL;

namespace UNIP.BILIBOTECA.APP
{
    public partial class frmLivro : System.Web.UI.Page
    {

        public string tituloLivro { get { return txTituloLivro.Text; } }

        public string autor { get { return txAutor.Text; } }

        public int ano { get { return Int32.Parse(txAno.Text); } }

        public string genero { get { return txGenero.Text; } }

        public string editora { get { return txEditora.Text; } }

        public int paginas { get { return Convert.ToInt32(txPaginas.Text); } }

        public char status { get { return Char.Parse(txStatus.Text); } }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSalvar_Click(object sender, EventArgs e)
        {

            LivroBLL bll = new LivroBLL();
            bll.regraInsercaoLivro(tituloLivro, autor, ano, genero, editora, paginas, status);

        }

    }
}