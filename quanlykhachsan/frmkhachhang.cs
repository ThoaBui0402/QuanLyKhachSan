using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace quanlykhachsan
{
    public partial class frmkhachhang : Form
    {
        public frmkhachhang()
        {
            InitializeComponent();
        }
        int temp;
        private void trangthai(bool t)
        {
           // txtmakhachhang.Enabled = t;
            txttenkh.Enabled = t;
            txtcmt.Enabled = t;
            txtsdt.Enabled = t;
            txtdiachi.Enabled = t;
            dtngaysinh.Enabled = t;
            cbquoctich.Enabled = t;
            cbgiotinhkh.Enabled = t;
        }

        private void frm_load(object sender, EventArgs e)
        {
            
            trangthai(false);
        }

      
        private void btnthoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            temp = 1;
            trangthai(true);
        }
    }
}
