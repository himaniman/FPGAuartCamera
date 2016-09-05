namespace MemoryFillerAndReader
{
    partial class Form1
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.LogBox = new System.Windows.Forms.ListBox();
            this.ConnecterBox = new System.Windows.Forms.ComboBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.indicator = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.MessegesBox = new System.Windows.Forms.ComboBox();
            this.CountBox = new System.Windows.Forms.NumericUpDown();
            this.TimeBox = new System.Windows.Forms.NumericUpDown();
            this.button4 = new System.Windows.Forms.Button();
            this.LogOn = new System.Windows.Forms.CheckBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.button5 = new System.Windows.Forms.Button();
            this.HalfDuplexOn = new System.Windows.Forms.CheckBox();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.button9 = new System.Windows.Forms.Button();
            this.button10 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.CountBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TimeBox)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // LogBox
            // 
            this.LogBox.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.LogBox.FormattingEnabled = true;
            this.LogBox.Location = new System.Drawing.Point(0, 293);
            this.LogBox.Name = "LogBox";
            this.LogBox.Size = new System.Drawing.Size(504, 134);
            this.LogBox.TabIndex = 0;
            // 
            // ConnecterBox
            // 
            this.ConnecterBox.FormattingEnabled = true;
            this.ConnecterBox.Location = new System.Drawing.Point(371, 12);
            this.ConnecterBox.Name = "ConnecterBox";
            this.ConnecterBox.Size = new System.Drawing.Size(121, 21);
            this.ConnecterBox.TabIndex = 1;
            this.ConnecterBox.DropDown += new System.EventHandler(this.SearchPort);
            this.ConnecterBox.SelectedIndexChanged += new System.EventHandler(this.Connect);
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1;
            this.timer1.Tick += new System.EventHandler(this.TimerTick);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(404, 39);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(28, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "ff";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(372, 39);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(26, 23);
            this.button2.TabIndex = 3;
            this.button2.Text = "xx";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // indicator
            // 
            this.indicator.AutoSize = true;
            this.indicator.Location = new System.Drawing.Point(391, 355);
            this.indicator.Name = "indicator";
            this.indicator.Size = new System.Drawing.Size(61, 13);
            this.indicator.TabIndex = 4;
            this.indicator.Text = "InputByte - ";
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(394, 327);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(89, 23);
            this.button3.TabIndex = 5;
            this.button3.Text = "Clr Buff&Counter";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // MessegesBox
            // 
            this.MessegesBox.FormattingEnabled = true;
            this.MessegesBox.Items.AddRange(new object[] {
            "ff",
            "00",
            "xx",
            "55",
            "aa"});
            this.MessegesBox.Location = new System.Drawing.Point(372, 240);
            this.MessegesBox.Name = "MessegesBox";
            this.MessegesBox.Size = new System.Drawing.Size(46, 21);
            this.MessegesBox.TabIndex = 6;
            // 
            // CountBox
            // 
            this.CountBox.Location = new System.Drawing.Point(372, 267);
            this.CountBox.Maximum = new decimal(new int[] {
            20000,
            0,
            0,
            0});
            this.CountBox.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.CountBox.Name = "CountBox";
            this.CountBox.Size = new System.Drawing.Size(46, 20);
            this.CountBox.TabIndex = 7;
            this.CountBox.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // TimeBox
            // 
            this.TimeBox.Location = new System.Drawing.Point(424, 267);
            this.TimeBox.Maximum = new decimal(new int[] {
            1000,
            0,
            0,
            0});
            this.TimeBox.Name = "TimeBox";
            this.TimeBox.Size = new System.Drawing.Size(46, 20);
            this.TimeBox.TabIndex = 8;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(424, 240);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(46, 23);
            this.button4.TabIndex = 9;
            this.button4.Text = "Send";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // LogOn
            // 
            this.LogOn.AutoSize = true;
            this.LogOn.Location = new System.Drawing.Point(372, 217);
            this.LogOn.Name = "LogOn";
            this.LogOn.Size = new System.Drawing.Size(58, 17);
            this.LogOn.TabIndex = 10;
            this.LogOn.Text = "LogOn";
            this.LogOn.UseVisualStyleBackColor = true;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(320, 240);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 11;
            this.pictureBox1.TabStop = false;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(394, 298);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(89, 23);
            this.button5.TabIndex = 12;
            this.button5.Text = "BuffToImage";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // HalfDuplexOn
            // 
            this.HalfDuplexOn.AutoSize = true;
            this.HalfDuplexOn.Checked = true;
            this.HalfDuplexOn.CheckState = System.Windows.Forms.CheckState.Checked;
            this.HalfDuplexOn.Location = new System.Drawing.Point(424, 217);
            this.HalfDuplexOn.Name = "HalfDuplexOn";
            this.HalfDuplexOn.Size = new System.Drawing.Size(78, 17);
            this.HalfDuplexOn.TabIndex = 13;
            this.HalfDuplexOn.Text = "HalfDuplex";
            this.HalfDuplexOn.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(404, 68);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(28, 23);
            this.button6.TabIndex = 14;
            this.button6.Text = "bb";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(404, 97);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(28, 23);
            this.button7.TabIndex = 15;
            this.button7.Text = "dd";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(404, 126);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(28, 23);
            this.button8.TabIndex = 16;
            this.button8.Text = "aa";
            this.button8.UseVisualStyleBackColor = true;
            this.button8.Click += new System.EventHandler(this.button8_Click);
            // 
            // button9
            // 
            this.button9.Location = new System.Drawing.Point(404, 155);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(28, 23);
            this.button9.TabIndex = 17;
            this.button9.Text = "cc";
            this.button9.UseVisualStyleBackColor = true;
            this.button9.Click += new System.EventHandler(this.button9_Click);
            // 
            // button10
            // 
            this.button10.Location = new System.Drawing.Point(404, 184);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(28, 23);
            this.button10.TabIndex = 18;
            this.button10.Text = "55";
            this.button10.UseVisualStyleBackColor = true;
            this.button10.Click += new System.EventHandler(this.button10_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(504, 427);
            this.Controls.Add(this.button10);
            this.Controls.Add(this.button9);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.HalfDuplexOn);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.LogOn);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.TimeBox);
            this.Controls.Add(this.CountBox);
            this.Controls.Add(this.MessegesBox);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.indicator);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.ConnecterBox);
            this.Controls.Add(this.LogBox);
            this.Name = "Form1";
            this.Text = "Filler";
            ((System.ComponentModel.ISupportInitialize)(this.CountBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TimeBox)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox LogBox;
        private System.Windows.Forms.ComboBox ConnecterBox;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label indicator;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.ComboBox MessegesBox;
        private System.Windows.Forms.NumericUpDown CountBox;
        private System.Windows.Forms.NumericUpDown TimeBox;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.CheckBox LogOn;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.CheckBox HalfDuplexOn;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button10;
    }
}

