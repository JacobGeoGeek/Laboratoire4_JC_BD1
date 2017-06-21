using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient; //import la librairie sqlClient

namespace Laboratoire4_JC
{
    public partial class partieForm1 : Form
    {
        donne d = new donne();
        Interface inter = new Interface();
        public partieForm1()
        {
            InitializeComponent();
        }

        private void btnAutresBranches_Click(object sender, EventArgs e)
        {
            try
            {
                d.connecter();
               d.remplirGrid("BRABCHES_BRA", dgvBranches);
                tabControlGeneral.SelectedTab = tbAfficherlesBranches;
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                d.deconnecter();
            }
        }

        private void btnNouveau_Click(object sender, EventArgs e)
        {
            inter.ChangeTab(tabControlGeneral, tbMAJBranche);
            inter.Vider(panelparamsMAJ);
        }

        private void btnNouveauListeBranches_Click(object sender, EventArgs e)
        {
            inter.ChangeTab(tabControlGeneral, tbMAJBranche);
            inter.Vider(panelparamsMAJ);
        }

        private void btnMAJNouveau_Click(object sender, EventArgs e)
        {
            inter.ChangeTab(tabControlGeneral, tbMAJBranche);
            inter.Vider(panelparamsMAJ);
        }

   

        private void btnupprimerBranches_Click(object sender, EventArgs e)
        {
            d.connecter();
            d.Supprimer(txtNumBranche.Text);
            d.remplirGrid("BRABCHES_BRA", dgvBranches);
            d.deconnecter();
        }

        private void btnMAJQuitter_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnQuitterBranche_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnQuitterListeBranches_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnModifierListeBranche_Click(object sender, EventArgs e)
        {
            if(dgvBranches.SelectedRows.Count != 1)
            {
                MessageBox.Show("Vous devez absolument faire la sélection d'une sule ligne");
            }
            else
            {
                inter.ChangeTab(tabControlGeneral, tbMAJBranche);
                txtMAJNumbranche.Text = dgvBranches.SelectedRows[0].Cells[0].Value.ToString();
                txtMAJNomBranche.Text = dgvBranches.SelectedRows[0].Cells[1].Value.ToString();
                txtMAJAdresse.Text = dgvBranches.SelectedRows[0].Cells[2].Value.ToString();
                txtMAJNombreEmploye.Text = dgvBranches.SelectedRows[0].Cells[3].Value.ToString();
            }
        }

        private void btnSupprimerListeBranche_Click(object sender, EventArgs e)
        {
            if(dgvBranches.SelectedRows.Count != 1)
            {
                MessageBox.Show("Vous devez absolument faire la sélection d'une sule ligne");
               
            }
            else
            {
                d.connecter();
                d.Supprimer(dgvBranches.SelectedRows[0].Cells[0].Value.ToString());
                d.remplirGrid("BRABCHES_BRA", dgvBranches);
                d.deconnecter();
                            
            }
        }

        private void btnMAJAjouter_Click(object sender, EventArgs e)
        {
            if (boValidation(txtMAJNumbranche, txtMAJNomBranche, txtMAJAdresse, txtMAJNombreEmploye))
            {
                try
                {
                    d.connecter();
                    d.Ajouter(txtMAJNumbranche.Text, txtMAJNomBranche.Text, txtMAJAdresse.Text, txtMAJNombreEmploye.Text);
                    d.remplirGrid("BRABCHES_BRA", dgvBranches);
                    d.deconnecter();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    d.deconnecter();

                } 
            }
        }
        bool boValidation(TextBox pNumBranche, TextBox txtNomBranche, TextBox txtAdresse, TextBox txtNbEMP)
        {
            bool boValidation = true;
            int inNombre = 0;
            if (int.TryParse(pNumBranche.Text, out inNombre) == false)
            {
                MessageBox.Show("Vous devez entrer un numéro de branche");
                pNumBranche.Focus();
                return false;
            }
            else if (String.IsNullOrWhiteSpace(txtNomBranche.Text))
            {
                MessageBox.Show("Vous devez entrer le nom de branche");
                txtNomBranche.Focus();
                return false;
            }
            else if(int.TryParse(txtNbEMP.Text, out inNombre) == false)
            {
                MessageBox.Show("Le nombre d'employés doit être un entier");
                txtNbEMP.Focus();
                return false;
            }
            return boValidation;
           


        }

        private void btnMAJModifier_Click(object sender, EventArgs e)
        {
            if(boValidation(txtMAJNumbranche, txtMAJNomBranche, txtMAJAdresse, txtMAJNombreEmploye))
            {
                try
                {
                    int ancNum = int.Parse(dgvBranches.SelectedRows[0].Cells[0].Value.ToString());
                    d.connecter();
                    d.Modifier(ancNum,txtMAJNumbranche.Text, txtMAJNomBranche.Text, txtMAJAdresse.Text, txtMAJNombreEmploye.Text);
                    d.remplirGrid("BRABCHES_BRA", dgvBranches);
                    d.deconnecter();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                    d.deconnecter();

                }
            }
        }

        private void btnMAJSupprimer_Click(object sender, EventArgs e)
        {
            if (boValidation(txtMAJNumbranche, txtMAJNomBranche, txtMAJAdresse, txtMAJNombreEmploye))
            {
                try
                {
                    d.connecter();
                    d.Supprimer(txtMAJNumbranche.Text);
                    d.remplirGrid("BRABCHES_BRA", dgvBranches);
                    
                    d.deconnecter();
                    inter.Vider(panelparamsMAJ);
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.Message);
                    d.deconnecter();
                } 
            }
        }

        private void btnRechercherBranche_Click(object sender, EventArgs e)
        {

        }
    }
}
