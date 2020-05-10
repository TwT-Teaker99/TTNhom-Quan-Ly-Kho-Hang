﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyKhoHang
{
    public partial class PhieuNhap : Form
    {
        string query = "SELECT * FROM phieu_nhap";
        functionShare funcShare;
        public PhieuNhap()
        {
            int sever = 1;
            InitializeComponent();
            funcShare = new functionShare(sever);
        }

       
        private void textbox_Leave(object sender, EventArgs e)
        {
            TextBox textBox = (TextBox)sender;
            switch (textBox.Name)
            {
                case "textbox_nv":
                    funcShare.textboxLeave(textbox_nv, "Nhập mã nhân viên");
                    break;
                case "textbox_ncc":
                    funcShare.textboxLeave(textbox_ncc, "Nhập mã nhà cung cấp");
                    break;
                case "textbox_ngay":
                    funcShare.textboxLeave(textbox_ngay, "Ngày");
                    break;
                case "textbox_thang":
                    funcShare.textboxLeave(textbox_thang, "Tháng");
                    break;
                case "textbox_nam":
                    funcShare.textboxLeave(textbox_nam, "Năm");
                    break;
                case "textbox_item":
                    funcShare.textboxLeave(textbox_item, "mã mặt hàng");
                    break;
                case "textbox_donvi":
                    funcShare.textboxLeave(textbox_donvi, "đơn vị");
                    break;
                case "textbox_cost":
                    funcShare.textboxLeave(textbox_cost, "đơn giá");
                    break;
                case "textbox_soluong":
                    funcShare.textboxLeave(textbox_soluong, "số lượng");
                    break;

            }
        }

        private void textbox_Enter(object sender, EventArgs e)
        {
            TextBox textBox = (TextBox)sender;
            switch (textBox.Name)
            {
                case "textbox_nv":
                    funcShare.textboxEnter(textbox_nv, "Nhập mã nhân viên");
                    break;           
                case "textbox_ncc":  
                    funcShare.textboxEnter(textbox_ncc, "Nhập mã nhà cung cấp");
                    break;           
                case "textbox_ngay": 
                    funcShare.textboxEnter(textbox_ngay, "Ngày");
                    break;           
                case "textbox_thang":
                    funcShare.textboxEnter(textbox_thang, "Tháng");
                    break;           
                case "textbox_nam":  
                    funcShare.textboxEnter(textbox_nam, "Năm");
                    break;           
                case "textbox_item": 
                    funcShare.textboxEnter(textbox_item, "mã mặt hàng");
                    break;           
                case "textbox_donvi":
                    funcShare.textboxEnter(textbox_donvi, "đơn vị");
                    break;           
                case "textbox_cost": 
                    funcShare.textboxEnter(textbox_cost, "đơn giá");
                    break;           
             case "textbox_soluong": 
                    funcShare.textboxEnter(textbox_soluong, "số lượng");
                    break;

            }
        }

        private void PhieuNhap_Load(object sender, EventArgs e)
        {
            funcShare.loadGridView("phieu_nhap", gridView);
            funcShare.autoID(label_id, "phieu_nhap");
        }
    }
}
