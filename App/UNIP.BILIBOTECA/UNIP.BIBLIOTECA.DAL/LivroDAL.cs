using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace UNIP.BIBLIOTECA.DAL
{
    public class LivroDAL
    {

        //Define a conexão com o banco de dados
        //public string sConexao = "Data Source=localhost;Initial Catalog=DB_BIBLIOTECA;Persist Security Info=True;User ID=Aluno;Password=;Max Pool Size=10000; Min Pool Size=100";
        public string sConexao = "Data Source=HEISENBERG-PC\\LOCAL;Initial Catalog=DB_BIBLIOTECA;Integrated Security=True";
        public string cmdText = String.Empty;


        public void insereLivro(string tituloLivro, string autor, int ano, string genero, string editora, int paginas, char status) 
       
        {
            //Define a conexão
            SqlConnection connection = new SqlConnection(sConexao);
            connection.Open();

            //Define qual procedure será executada
            cmdText = "BLI_INSERT_LIVRO";

            //Define o padrão de comando pra execução (procedure)
            SqlCommand selectCommand = new SqlCommand(cmdText, connection)
            {
                CommandType = CommandType.StoredProcedure,
                CommandTimeout = 0x1869f
            };

            //Passa os parâmetros pra serem tratados no Banco de Dados
            SqlParameter parameter = selectCommand.Parameters.AddWithValue("@NOME", SqlDbType.VarChar);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = tituloLivro;

            parameter = selectCommand.Parameters.AddWithValue("@AUTOR", SqlDbType.VarChar);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = autor;

            parameter = selectCommand.Parameters.AddWithValue("@ANO", SqlDbType.SmallInt);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = ano;

            parameter = selectCommand.Parameters.AddWithValue("@GENERO", SqlDbType.VarChar);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = genero;

            parameter = selectCommand.Parameters.AddWithValue("@EDITORA", SqlDbType.VarChar);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = editora;

            parameter = selectCommand.Parameters.AddWithValue("@PAGINAS", SqlDbType.SmallInt);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = paginas;

            parameter = selectCommand.Parameters.AddWithValue("@STATUS", SqlDbType.Char);
            parameter.Direction = ParameterDirection.Input;
            parameter.Value = status;

            //Confirmo a transação no Banco de Dados
            selectCommand.ExecuteNonQuery(); 
            
            //Fecho a conexão com o Banco de Dados
            connection.Dispose();

        }


    }
}
