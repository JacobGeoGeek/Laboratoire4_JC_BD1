using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Laboratoire4_JC
{
    class Interface
    {
        public void ChangeTab(TabControl tb, TabPage tp)
        {
            tb.SelectedTab = tp;
        }
        public void Vider(Panel p)
        {
            foreach (Control ctr in p.Controls)
            {
                if (ctr.GetType() == typeof(TextBox))
                {
                    ctr.Text = "";


                }
            }
        }
     
    }
}
