using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;


namespace Laboratoire4_JC
{
    class donne
    {
        public SqlConnection maCon = new SqlConnection(); //connect to the DB

        public SqlCommand maCMD = new SqlCommand();
        public SqlDataAdapter monDataAdapt = new SqlDataAdapter(); //prend le résults de command
        public DataSet maDs = new DataSet(); //save dans un bd dans l'application

        //déclaration des méthode
        public void connecter()
        {
            string urlDeConnexion = @"Data Source=.;" + "Initial Catalog=Cas_LA;" + "User ID=sa;Password=sql;" + "Integrated Security=false;"; //à changer SVP

            if (maCon.State == ConnectionState.Closed)
                maCon.ConnectionString = urlDeConnexion;
            maCon.Open();
        }

        public void deconnecter()
        {
            if (maCon.State == ConnectionState.Open)
                maCon.Close();
        }

        //pour remplir le gridview
        public void remplirGrid(string Table, DataGridView dg)
        {
            maCMD.Connection = maCon;
            maCMD.CommandText = "SELECT * FROM " + Table;

            monDataAdapt.SelectCommand = maCMD;
            //test su la datagridview existe si oui il le vide
            if (maDs.Tables["DTable" + Table] != null)
            {
                maDs.Tables["DTable" + Table].Clear();
            }
            
            monDataAdapt.Fill(maDs, "DTable" + Table);
            dg.DataSource = maDs.Tables["DTable" + Table];

        }

        public int nbBreLigneLocal(int num)
        {
            // connecter();
            maCMD.Connection = maCon;
            maCMD.CommandText = "SELECT COUNT(*) FROM BRABCHES_BRA WHERE NUMERO = " + num;
            int cpt = int.Parse(maCMD.ExecuteScalar().ToString());
           
            return cpt;
        }
        public void Supprimer(string pBranche)
        {
            maCMD.Connection = maCon;
            maCMD.CommandText = "SELECT COUNT(*) FROM BRABCHES_BRA WHERE BRA_NUM_BRANCHE= " +pBranche;
            int incpt = int.Parse(maCMD.ExecuteScalar().ToString());
            
            if (incpt==-1)
            {
                MessageBox.Show("Le numéro de la Branche n'existe pas dans la Base de données");
            }
            else
            {
                MessageBox.Show("Suppression d'une branche réussit");
                maCMD.CommandText = "DELETE FROM BRABCHES_BRA WHERE BRA_NUM_BRANCHE= " + pBranche;
                maCMD.ExecuteNonQuery();
                
            }

        }
        public void Ajouter(string pNumBranche,string pNomBranche, string pAdresse, string pNombreEMP)
        {
            maCMD.Connection = maCon;
            maCMD.CommandText = "SELECT COUNT(*) FROM BRABCHES_BRA WHERE BRA_NUM_BRANCHE= " + pNumBranche;
            int incompteur = int.Parse(maCMD.ExecuteScalar().ToString());

            if (incompteur >0)
                MessageBox.Show("Le numéro de la Branche existe déjà dans la base de données");
            else
            {
                maCMD.CommandText = "INSERT INTO BRABCHES_BRA(BRA_NUM_BRANCHE, BRA_NOM_BRANCHE, BRA_ADR_BRANCHE, BRA_NBRE_EMPL) VALUES (" + pNumBranche + ", '" + pNomBranche + "', '" + pAdresse + "', " + pNombreEMP + ");";
                maCMD.ExecuteNonQuery();
                MessageBox.Show("La nouvelle branche à été enregistée dans la base de données");
            }
        }
        public void Modifier(int pancNUm, string pNumBranche, string pNomBranche, string pAdresse, string pNombreEMP)
        {
            maCMD.Connection = maCon;
            maCMD.CommandText = "SELECT COUNT(*) FROM BRABCHES_BRA WHERE BRA_NUM_BRANCHE = " + pNumBranche;
            int incompteur = int.Parse(maCMD.ExecuteScalar().ToString());

            if(incompteur==-1)
                MessageBox.Show("Le numéro de la Branche n'existe pas dans la Base de données");
            else
            {
                MessageBox.Show("Modification d'une branche réussit");
                maCMD.CommandText = "UPDATE BRABCHES_BRA SET BRA_NUM_BRANCHE=" + pNumBranche + ", BRA_NOM_BRANCHE='" + pNomBranche + "',BRA_ADR_BRANCHE='" + pAdresse + "',BRA_NBRE_EMPL=" + pNombreEMP+ "WHERE BRA_NUM_BRANCHE = "+ pancNUm;
                maCMD.ExecuteNonQuery();
            }
        }

       
    }
}
