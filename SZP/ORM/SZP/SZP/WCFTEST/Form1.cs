using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.ServiceModel;
using System.Collections;
using wcfMessage=System.ServiceModel.Channels;
using SZP.Common;
using SZP.Entity;


namespace WCFTEST
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Service1Client client = new Service1Client();
           

             //Call the Add service operation.
            SysUser sysusser = new SysUser();
            sysusser.Name = "RequestName";
            sysusser.Password = "123456";
            sysusser.Status = true;

            string result = client.Add(SZP.Common.JsonHelper.GetJSON<SysUser>(sysusser));
            SysUser response = JsonHelper.ParseFormByJson<SysUser>(result);
            MessageBox.Show(response.Name);
            client.Close();

        }
     
        
    }

   
}
