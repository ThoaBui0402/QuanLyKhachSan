﻿using System;
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
    public partial class frmthongtinphong : Form
    {
        public frmthongtinphong()
        {
            InitializeComponent();
        }
 
        private void trangthai(bool t)
        {
            txtphong.Enabled = t;
            txtdongiaphong.Enabled = t;
            cbloaiphong.Enabled = t;
            cbtinhtrang.Enabled = t;
        }
        private void frm_load(object sender, EventArgs e)
        {
            trangthai(false);
        }

      
    }
}
