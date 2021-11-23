using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using DAL;
namespace quanlykhachsan
{
    public partial class frmdangnhap : Form
    {
        public static int ma;
        public static frmnhanvien frm2 = null;
        public frmdangnhap()
        {
            InitializeComponent();
        }

        private void btndangnhap_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J2GH96M\SQL15;Initial Catalog=quanlykhachsan;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select * From [dbo].[nguoidung] where taiKhoan = '" + txttaikhoan.Text + "' and matKhau = '" + txtmatkhau.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if ((dt.Rows).Count == 1)
            {
                ma = int.Parse(dt.Rows[0][0].ToString());
                this.Hide(); // Form Đăng Nhập sẽ ẩn đi => MainForm sẽ load lên
                frmmainquanlykhachsan frm = new frmmainquanlykhachsan();
                frm.Show();
               
                if (dt.Rows[0][2].ToString() != "user")
                {
                    frm2 = new frmnhanvien();
                }
                else
                {
                    frm2 = null;
                }

            }
            else
            {
                lbtb.Text = "Tài khoản hoặc mật khẩu sai.vui lòng thử lại!!";

            }
            if (cbkhach.Checked == true)
            {
                trangthai(false);
                this.Hide(); // Form Đăng Nhập sẽ ẩn đi => MainForm sẽ load lên
                frmthongtinpphongkh frm = new frmthongtinpphongkh(); //chi xem duoc thong tin phong
                frm.Show();

            }
            
        }
        private void trangthai( bool t)
        {
            txttaikhoan.Enabled = t;
            txtmatkhau.Enabled = t;
        }

        private void cbkhach_CheckedChanged(object sender, EventArgs e)
        {
            if (cbkhach.Checked == true)
            {
                trangthai(false);
                txtmatkhau.Clear();
                txttaikhoan.Clear();
            }
            else
            {
                trangthai(true);
            }
        }

        private void btnthoat_Click(object sender, EventArgs e)
        {
            Application.Exit(); ;
        }

    }
}
