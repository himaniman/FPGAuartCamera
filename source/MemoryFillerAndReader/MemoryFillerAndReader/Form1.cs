using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;
using System.Drawing.Imaging;

namespace MemoryFillerAndReader
{
    public partial class Form1 : Form
    {
        SerialPort SP1;
        int CounterByte;
        byte []Buffer;

        public Form1()
        {
            InitializeComponent();
            SP1 = new SerialPort("COM9", 2048000, Parity.None, 8, StopBits.One);
            SP1.DataReceived += new SerialDataReceivedEventHandler(sp_DataReceived);
            SP1.ReadBufferSize = 32768;
            SP1.WriteBufferSize = 2048;
            //MessageBox.Show(SP1.ReadBufferSize.ToString() + " " + SP1.ReadTimeout + " " + SP1.WriteBufferSize + " " + SP1.WriteTimeout);
            CounterByte = 0;
            Buffer = new byte [20000];
        }

        private void Connect(object sender, EventArgs e)
        {
            SP1.PortName = ConnecterBox.Text.ToString();
            SP1.Handshake = Handshake.None;
            if (SP1.IsOpen == false)
            {
                SP1.Open();
            }
        }

        private void SearchPort(object sender, EventArgs e)
        {
            SP1.Close();
            string[] myPort;
            myPort = System.IO.Ports.SerialPort.GetPortNames();
            ConnecterBox.Items.Clear();
            ConnecterBox.Items.AddRange(myPort);
        }

        void sp_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            //SerialPort sp = (SerialPort)sender;
            //if (sp.IsOpen == true && sp.BytesToRead > 0)
            //{
            //    int temp = sp.ReadByte();
            //    if (LogOn.Checked) LogBox.Items.Add(temp);
            //    Buffer[CounterByte] = (byte)temp;
            //    if (LogOn.Checked) LogBox.SelectedIndex = LogBox.Items.Count - 1;
            //    CounterByte++;
            //    indicator.Text = "InputByte - " + CounterByte.ToString();
            //}
        }

        private void TimerTick(object sender, EventArgs e)
        {
            if (SP1.IsOpen == true && SP1.BytesToRead > 0)
            {
                while (SP1.BytesToRead > 0)
                {
                    int temp = SP1.ReadByte();
                    if (LogOn.Checked) LogBox.Items.Add(temp);
                    Buffer[CounterByte] = (byte)temp;
                    if (LogOn.Checked) LogBox.SelectedIndex = LogBox.Items.Count - 1;
                    CounterByte++;
                    indicator.Text = "InputByte - " + CounterByte.ToString();
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (SP1.IsOpen == true)
            {
                byte[] z = { 0xff };
                SP1.Write(z, 0, 1);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            if (SP1.IsOpen == true)
            {
                byte[] z = { 0xff };
                z[0] = (byte)rnd.Next(0, 255);
                SP1.Write(z, 0, 1);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            CounterByte = 0;
            LogBox.Items.Clear();
            indicator.Text = "InputByte - 0";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            if (SP1.IsOpen == true)
            {
                if (MessegesBox.Text == "ff") 
                {
                    for (int i = 0; i < CountBox.Value; i++)
                    {
                        while (SP1.BytesToWrite > SP1.WriteBufferSize - 20)
                        {
                        }
                        byte[] z = { 0xff };
                        SP1.Write(z, 0, 1);
                        Thread.Sleep((int)TimeBox.Value);
                        if (i % 1000 == 0 && i != 0)
                        {
                            TimerTick(sender, e);
                            //Thread.Sleep(100);
                            this.Refresh();
                            this.Update();
                        }
                    }
                }
                if (MessegesBox.Text == "xx")
                {
                    for (int i = 0; i < CountBox.Value; i++)
                    {
                        while (SP1.BytesToWrite>SP1.WriteBufferSize-20){}
                        byte[] z = { 0xff };
                        z[0] = (byte)rnd.Next(0, 255);
                        SP1.Write(z, 0, 1);
                        Thread.Sleep((int)TimeBox.Value);
                        if (i % 1000 == 0 && i!=0 && HalfDuplexOn.Checked)
                        {
                            TimerTick(sender,e);
                            //Thread.Sleep(100);
                            //this.Refresh();
                            this.Update();
                        }
                    }
                }
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Bitmap imgNoise = new Bitmap(160, 120, PixelFormat.Format16bppRgb565);
            for (int i = 0; i < CounterByte; i++)
            {
                if (i<19200) imgNoise.SetPixel(i % 160, i / 160, Color.FromArgb(Buffer[i], Buffer[i], Buffer[i]));
            }
            pictureBox1.Image = imgNoise;
        }
    }
}
