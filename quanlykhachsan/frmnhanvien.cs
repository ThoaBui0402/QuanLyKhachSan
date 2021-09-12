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
using DTO;

namespace quanlykhachsan
{
    public partial class frmnhanvien : Form
    {
        public frmnhanvien()
        {
            InitializeComponent();
        }
        int temp;
     
        private void trangthai(bool t)
        {
          //  txtmanv.Enabled = t;
            txttennv.Enabled = t;
            txtscm.Enabled = t;
            txtsdt.Enabled = t;
            txtdiachi.Enabled = t;
            dtngaysinh.Enabled = t;
            dtngayvaolam.Enabled = t;
            cbgioitinh.Enabled = t;

        }

        private void frm_load(object sender, EventArgs e)
        {
           
            trangthai(false);
            btnluu.Enabled = false;
            btnhuy.Enabled = false;
        }

            private void btnhuy_Click(object sender, EventArgs e)
        {
            btnluu.Enabled = false;
            btnsua.Enabled = true;
            btnthem.Enabled = true;
            btnxoa.Enabled = true;
            trangthai(false);

        }
    }
}
