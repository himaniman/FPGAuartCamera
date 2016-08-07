using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;
using System.Drawing.Imaging;
using System.Threading;

namespace DataTransmitter
{
    public partial class Form1 : Form
    {
        SerialPort SP1;
        int[] Buffer;
        int counter;

        public Form1()
        {
            InitializeComponent();
            SP1 = new SerialPort("COM9", 2048000, Parity.None, 8, StopBits.One);
            SP1.DataReceived += new SerialDataReceivedEventHandler(sp_DataReceived);
            //Bitmap bitmap = new Bitmap("test1.bmp");
            counter = 0;
            Buffer = new int [19200];
            //Buffer[200] = 255;
            //Buffer[201] = 255;
            //Buffer[199] = 255;
            //Buffer[360] = 255;
            //Buffer[40] = 255;

        }

        void sp_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            ////string data = SP1.ReadLine();
            ////listBox1.Items.Add("RECV: "+data);
            ////this.BeginInvoke(new SetTextDeleg(si_DataReceived), new object[] { data });
            SerialPort sp = (SerialPort)sender;
            int indata = sp.ReadByte();
            Buffer[counter] = indata;
            //log += indata.ToString()+" ";
            counter++;

            ///textBox1.Text = "2";
            ///
            ////listBox1.Items.Add("RECV: " + indata);
            //if (aTimer.Enabled == true)
            //{
            //    stack += indata;
            //}
            //else
            //{
            //    stack += indata;
            //    aTimer.Start();
            //    //listBox1.Items.Add("START " + stack);
            //}


            ////if (indata[0] == 'C') State = 0;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            byte[] z = { 0xff };
            SP1.Write(z, 0, 1);
        }

        private void ScanPort(object sender, EventArgs e)
        {
            SP1.Close();
            string[] myPort;
            myPort = System.IO.Ports.SerialPort.GetPortNames();
            comboBox1.Items.Clear();
            comboBox1.Items.AddRange(myPort);
        }

        private void Connect(object sender, EventArgs e)
        {
            SP1.PortName = comboBox1.Text.ToString();
            SP1.Handshake = Handshake.None;
            if (SP1.IsOpen == false)
            {
                SP1.Open();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            for (int i = 0; i < counter; i++)
            {
                textBox1.Text += Buffer[i].ToString()+"\t";
            }
                //MessageBox.Show(counter.ToString());
            textBox1.Text += (char)27+ counter.ToString();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Bitmap imgNoise = new Bitmap(160, 120, PixelFormat.Format16bppRgb565);
            //for (int i = 0; i < log.Length; i++)
            //{
            //    imgNoise.SetPixel(i % 160, i / 160, Color.FromArgb((int)log[i], (int)log[i], (int)log[i]));
            //}
            for (int i = 0; i < counter; i++)
            {
                imgNoise.SetPixel(i % 160, i / 160, Color.FromArgb(Buffer[i],Buffer[i],Buffer[i]));
            }
            pictureBox1.Image = imgNoise;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            byte[] z = { 0x55 };
            SP1.Write(z, 0, 1);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < numericUpDown1.Value; i++)
            {
                byte[] z = { 0x33 };
                SP1.Write(z, 0, 1);
                Thread.Sleep((int)numericUpDown2.Value);
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            byte[] z = { 0x77 };
            SP1.Write(z, 0, 1);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            counter = 0;
            textBox1.Text = "";
        }

        private void button8_Click(object sender, EventArgs e)
        {
            byte[] z = { 0x88 };
            SP1.Write(z, 0, 1);
        }
    }
}
