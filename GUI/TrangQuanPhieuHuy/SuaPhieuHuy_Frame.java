package TrangQuanPhieuHuy;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.util.ArrayList;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import BUS.dsChiTietPhieuBUS;
import BUS.dsPhieuHuyBUS;
import DTO.ChiTietPhieuDTO;
import DTO.PhieuHuyDTO;
import DTO.PhieuNhapDTO;
import DTO.SupplierDTO;
import DTO.Sys;
import TrangChinh.Button;





public class SuaPhieuHuy_Frame extends JFrame {
       private DefaultTableModel model;
       private JPanel contentPane;
       private JLabel QLPhieuHuy_label;
       private Color mau_chu = new Color(97, 113, 67);
       private JLabel MaNV_label;
       private JLabel GanMaNV_label;
       private JLabel MaHD_label;
       private JLabel GanMaHD_label;
       private JLabel MaNCC_label;
       private JComboBox MaNCC_comboBox;
       private JLabel Ngay_label;
       private JLabel GanNgay_label;
       private JPanel KhungNhapCT_panel;
       private JLabel IPSanPham_label;
       private JTextField IDSanPham_textField;
       private JLabel TenSanPham_label;
       private JTextField TenSP_textField;
       private JLabel GiaSanPham_label;
       private JTextField GiaBan_textField;
       private JLabel SLSanPham_label;
       private JTextField SoLuong_textField;
       private JLabel SuaCTIcon_label;
       private JScrollPane scrollPane;
       private JTable table;
       private JLabel TongTien_label;
       private JLabel GanTongTien_label;
       private Button btn_SuaPN;
       private Button btn_ThoatPN;
       private JLabel TimKiemCTIcon_label;
       private JLabel RefreshCTIcon_label;

       private ArrayList<PhieuHuyDTO> list;
       private dsChiTietPhieuBUS dsChiTietPhieuBUS;
       private TrangQuanLyPhieuHuy trangQuanLyPhieuHuy;

       public SuaPhieuHuy_Frame(TrangQuanLyPhieuHuy trangQuanLyPhieuHuy) {
              this.trangQuanLyPhieuHuy = trangQuanLyPhieuHuy;
              this.list = trangQuanLyPhieuHuy.getDsPhieuHuyBUS().getDsPhieuhuy();

              setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
              setBounds(100, 100, 700, 520);
              // setBackground(new Color(246,225,195));
              contentPane = new JPanel();
              contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
              contentPane.setBackground(new Color(246, 225, 195));
              setContentPane(contentPane);
              contentPane.setLayout(null);

              QLPhieuHuy_label = new JLabel("SỬA PHIẾU HỦY", SwingConstants.CENTER);
              QLPhieuHuy_label.setForeground(new Color(97, 113, 67));
              QLPhieuHuy_label.setFont(new Font("Tahoma", Font.BOLD, 35));
              QLPhieuHuy_label.setBounds(35, 10, 630, 40);
              contentPane.add(QLPhieuHuy_label);

              MaNV_label = new JLabel("MÃ NHÂN VIÊN :");
              MaNV_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              MaNV_label.setBounds(100, 66, 100, 30);
              contentPane.add(MaNV_label);

              GanMaNV_label = new JLabel("New label");
              GanMaNV_label.setFont(new Font("Tahoma", Font.BOLD, 13));
              GanMaNV_label.setBounds(210, 66, 100, 30);
              contentPane.add(GanMaNV_label);

              MaHD_label = new JLabel("MÃ HÓA ĐƠN :");
              MaHD_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              MaHD_label.setBounds(377, 66, 113, 30);
              contentPane.add(MaHD_label);

              GanMaHD_label = new JLabel("New label");
              GanMaHD_label.setFont(new Font("Tahoma", Font.BOLD, 13));
              GanMaHD_label.setBounds(497, 66, 100, 30);
              contentPane.add(GanMaHD_label);

              Ngay_label = new JLabel("NGÀY :");
              Ngay_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              Ngay_label.setBounds(377, 96, 63, 30);
              contentPane.add(Ngay_label);

              GanNgay_label = new JLabel("New label");
              GanNgay_label.setFont(new Font("Tahoma", Font.BOLD, 13));
              GanNgay_label.setBounds(425, 96, 130, 30);
              contentPane.add(GanNgay_label);

              KhungNhapCT_panel = new JPanel();
              KhungNhapCT_panel.setBounds(64, 138, 533, 127);
              KhungNhapCT_panel.setBackground(new Color(246, 225, 195));
              KhungNhapCT_panel.setBorder(BorderFactory.createTitledBorder("SỬA CHI TIẾT"));
              contentPane.add(KhungNhapCT_panel);
              KhungNhapCT_panel.setLayout(null);

              IPSanPham_label = new JLabel("ID SẢN PHẨM :");
              IPSanPham_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              IPSanPham_label.setBounds(10, 25, 100, 30);
              KhungNhapCT_panel.add(IPSanPham_label);

              IDSanPham_textField = new JTextField();
              IDSanPham_textField.setBounds(120, 25, 353, 30);
              KhungNhapCT_panel.add(IDSanPham_textField);
              IDSanPham_textField.setFont(new Font("Tahoma", Font.PLAIN, 15));
              IDSanPham_textField.setColumns(10);
              IDSanPham_textField.setBorder(BorderFactory.createLineBorder(mau_chu, 2));

              TenSanPham_label = new JLabel("TÊN SẢN PHẨM :");
              TenSanPham_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              TenSanPham_label.setBounds(10, 69, 100, 30);
              KhungNhapCT_panel.add(TenSanPham_label);

              TenSP_textField = new JTextField();
              TenSP_textField.setFont(new Font("Tahoma", Font.PLAIN, 15));
              TenSP_textField.setColumns(10);
              TenSP_textField.setBorder(BorderFactory.createLineBorder(mau_chu, 2));
              TenSP_textField.setBounds(120, 69, 77, 30);
              KhungNhapCT_panel.add(TenSP_textField);

              GiaSanPham_label = new JLabel("GIÁ BÁN  :");
              GiaSanPham_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              GiaSanPham_label.setBounds(370, 69, 77, 30);
              KhungNhapCT_panel.add(GiaSanPham_label);

              GiaBan_textField = new JTextField();
              GiaBan_textField.setFont(new Font("Tahoma", Font.PLAIN, 15));
              GiaBan_textField.setColumns(10);
              GiaBan_textField.setBorder(BorderFactory.createLineBorder(mau_chu, 2));
              GiaBan_textField.setBounds(438, 69, 77, 30);
              KhungNhapCT_panel.add(GiaBan_textField);

              SLSanPham_label = new JLabel("SỐ LƯỢNG :");
              SLSanPham_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              SLSanPham_label.setBounds(207, 69, 77, 30);
              KhungNhapCT_panel.add(SLSanPham_label);

              SoLuong_textField = new JTextField();
              SoLuong_textField.setFont(new Font("Tahoma", Font.PLAIN, 15));
              SoLuong_textField.setColumns(10);
              SoLuong_textField.setBorder(BorderFactory.createLineBorder(mau_chu, 2));
              SoLuong_textField.setBounds(283, 69, 77, 30);
              KhungNhapCT_panel.add(SoLuong_textField);

              TimKiemCTIcon_label = new JLabel("");
              TimKiemCTIcon_label
                            .setIcon(new ImageIcon("image_icon\\search.png"));
              TimKiemCTIcon_label.setBounds(483, 25, 32, 32);
              KhungNhapCT_panel.add(TimKiemCTIcon_label);

              SuaCTIcon_label = new JLabel("");
              SuaCTIcon_label.setIcon(
                            new ImageIcon("image_icon\\maintenance.png"));
              SuaCTIcon_label.setBounds(607, 226, 32, 32);
              contentPane.add(SuaCTIcon_label);

              scrollPane = new JScrollPane();
              scrollPane.setBounds(35, 275, 600, 110);
              getContentPane().add(scrollPane);

              table = new JTable();
              table.setShowVerticalLines(false);
              table.setModel(new DefaultTableModel(
                            new Object[][] {

                            },
                            new String[] {
                                          "ID MÓN ĂN", "TÊN MÓN ĂN", "SỐ LƯỢNG", "GIÁ BÁN"
                            }) {
                     boolean[] columnEditables = new boolean[] {
                                   false, false, false, false, false, false
                     };

                     public boolean isCellEditable(int row, int column) {
                            return columnEditables[column];
                     }
              });
              table.getColumnModel().getColumn(0).setResizable(false);
              table.getColumnModel().getColumn(1).setResizable(false);
              table.getColumnModel().getColumn(2).setResizable(false);
              table.getColumnModel().getColumn(3).setResizable(false);

              // chinh sua table
              table.setBackground(Color.white);
              table.getTableHeader().setBackground(new Color(32, 136, 203));
              table.getTableHeader().setForeground(Color.white);
              table.setSelectionBackground(new Color(232, 57, 95));

              table.setRowHeight(22);
              scrollPane.setViewportView(table);

              TongTien_label = new JLabel("Tổng tiền : ");
              TongTien_label.setFont(new Font("Tahoma", Font.BOLD, 12));
              TongTien_label.setBounds(246, 395, 83, 30);
              contentPane.add(TongTien_label);

              GanTongTien_label = new JLabel("New label");
              GanTongTien_label.setFont(new Font("Tahoma", Font.BOLD, 13));
              GanTongTien_label.setBounds(323, 395, 109, 30);
              contentPane.add(GanTongTien_label);

              btn_SuaPN = new Button("THÊM");
              btn_SuaPN.setText("SỬA");
              btn_SuaPN.setIcon(new ImageIcon("image_icon\\searching.png"));
              btn_SuaPN.setRadius(10);
              btn_SuaPN.setForeground(Color.WHITE);
              btn_SuaPN.setFont(new Font("Tahoma", Font.BOLD, 15));
              btn_SuaPN.setBorderPainted(false);
              btn_SuaPN.setBounds(155, 435, 121, 35);
              contentPane.add(btn_SuaPN);

              btn_ThoatPN = new Button("THOÁT");
              btn_ThoatPN.setText("THOÁT");
              btn_ThoatPN.setRadius(10);
              btn_ThoatPN.setForeground(Color.WHITE);
              btn_ThoatPN.setFont(new Font("Tahoma", Font.BOLD, 15));
              btn_ThoatPN.setBorderPainted(false);
              btn_ThoatPN.setBounds(358, 435, 121, 35);
              contentPane.add(btn_ThoatPN);

              RefreshCTIcon_label = new JLabel("");
              RefreshCTIcon_label
                            .setIcon(new ImageIcon("image_icon\\refresh.png"));
              RefreshCTIcon_label.setBounds(633, 393, 32, 32);
              contentPane.add(RefreshCTIcon_label);
              setVisible(true);
              ShowPhieu();

              controller_btnThoat_SuaPhieuFrame controller_btnThoat_SuaPhieuFrame = new controller_btnThoat_SuaPhieuFrame(
                            this, trangQuanLyPhieuHuy);
              btn_ThoatPN.addMouseListener(controller_btnThoat_SuaPhieuFrame);

              controller_TimKiemCT_SuaPhieuFrame controller_TimKiemCT_SuaPhieuFrame = new controller_TimKiemCT_SuaPhieuFrame(
				this);
		TimKiemCTIcon_label.addMouseListener(controller_TimKiemCT_SuaPhieuFrame);

              
		controller_SuaCT_SuaPhieuFrame controller_SuaCT_SuaPhieuFrame = new controller_SuaCT_SuaPhieuFrame(this);
		SuaCTIcon_label.addMouseListener(controller_SuaCT_SuaPhieuFrame);

              controller_btnSua_SuaPhieuFrame controller_btnSua_SuaPhieuFrame = new controller_btnSua_SuaPhieuFrame(
				this, trangQuanLyPhieuHuy);
		btn_SuaPN.addMouseListener(controller_btnSua_SuaPhieuFrame);

              controller_refreshIcon_SuaPhieuFrame controller_refreshIcon_SuaPhieuFrame = new controller_refreshIcon_SuaPhieuFrame(
				this);
		RefreshCTIcon_label.addMouseListener(controller_refreshIcon_SuaPhieuFrame);
       }

       public void ShowPhieu() {
              PhieuHuyDTO phieuNhap = this.trangQuanLyPhieuHuy.Click_table();
              if (phieuNhap != null) {
                     if (phieuNhap.getTinhTrang().equals("Chưa xác nhận")) {
                            this.GanMaHD_label.setText(phieuNhap.getIDPhieu());

                            this.GanMaNV_label.setText(phieuNhap.getIDNhanVien());
                            this.GanNgay_label.setText(phieuNhap.getDate());

                            this.GanTongTien_label.setText(String.valueOf(phieuNhap.getSumMoney()));
                            this.dsChiTietPhieuBUS = phieuNhap.getDsChitietphieu2();

                            show_CTphieu(dsChiTietPhieuBUS);
                     } else {
                            // JOptionPane.showConfirmDialog(null, "KHÔNG THỂ SỬA PHIẾU ĐÃ NHẬP", "Thông
                            // báo",
                            // JOptionPane.ERROR_MESSAGE);
                            Sys.Sound_Error();
                            Sys.Warning_dialog("KHÔNG THỂ SỬA PHIẾU ĐÃ XÁC NHẬN");

                     }

              }
       }

       private void show_CTphieu(dsChiTietPhieuBUS dsChiTietPhieu) {
              model = (DefaultTableModel) table.getModel();
              ChiTietPhieuDTO[] chiTietPhieus = dsChiTietPhieu.getChiTietPhieu2s();
              int index = dsChiTietPhieu.getIndex();
              for (int i = 0; i < index; i++) {
                     model.addRow(new Object[] { chiTietPhieus[i].getMaSP(), chiTietPhieus[i].getNameProduct(),
                                   chiTietPhieus[i].getSoLuong(), chiTietPhieus[i].getDonGia() });
              }

       }

       public void Sua_chitietPhieu() {
              try {
                     String maSP = this.IDSanPham_textField.getText();
                     ChiTietPhieuDTO[] temp = this.dsChiTietPhieuBUS.getChiTietPhieu2s();
                     int index = this.dsChiTietPhieuBUS.getIndex();
                     int flag = 0;
                     for (int i = 0; i < index; i++) {
                            if (temp[i].getMaSP().equals(maSP)) {
                                   temp[i].setMaSP(maSP);
                                   temp[i].setNameProduct(this.TenSP_textField.getText());
                                   temp[i].setSoLuong(Integer.parseInt(this.SoLuong_textField.getText()));
                                   temp[i].setDonGia(Integer.parseInt(this.GiaBan_textField.getText()));
                                   flag = 1;
                                   break;
                            }
                     }
                     if (flag == 1) {
                            // JOptionPane.showConfirmDialog(null, "CẬP NHẬT THÀNH CÔNG", "Thông báo",
                            // JOptionPane.INFORMATION_MESSAGE);
                            Sys.Sound_Success();
                            Sys.Success_dialog("CẬP NHẬT THÀNH CÔNG");

                     } else {
                            // JOptionPane.showConfirmDialog(null, "CẬP NHẬT THẤT BẠI", "Thông báo",
                            // JOptionPane.ERROR_MESSAGE);
                            Sys.Sound_Error();
                            Sys.Error_dialog("CẬP NHẬT THẤT BẠI");

                     }
              } catch (Exception e) {
                     // JOptionPane.showConfirmDialog(null, "CẬP NHẬT THẤT BẠI, LỖI DỮ LIỆU ĐẦU VÀO",
                     // "Thông báo",
                     // JOptionPane.ERROR_MESSAGE);
                     Sys.Sound_Error();
                     Sys.Error_dialog("CẬP NHẬT THẤT BẠI, LỖI DỮ LIỆU ĐẦU VÀO");

              }

       }
       public void SuaThongTinPhieu_Check() {

		if (dsChiTietPhieuBUS != null) {
			String ID_phieu = this.GanMaHD_label.getText();
			String ID_NV = this.GanMaNV_label.getText();
			String date = this.GanNgay_label.getText();
                     String LyDo = "";
			for (PhieuHuyDTO iterable_element : this.trangQuanLyPhieuHuy.getDsPhieuHuyBUS().getDsPhieuhuy()) {
                            if(iterable_element.getIDPhieu().equals(ID_phieu)){
                                   LyDo = iterable_element.getLyDoHuy();
                                   break;
                            }
                     }
			PhieuHuyDTO phieuHuyDTO = new PhieuHuyDTO(ID_phieu, date, dsChiTietPhieuBUS, dsChiTietPhieuBUS.Sum_money(), ID_NV, LyDo);

			this.trangQuanLyPhieuHuy.SuaPhieuHuy_vaoDATA(phieuHuyDTO);
			this.setVisible(false);
			this.dispose();
		}

	}

       public void Refresh_icon() {
              model = (DefaultTableModel) table.getModel();
              ChiTietPhieuDTO[] chiTietPhieus = dsChiTietPhieuBUS.getChiTietPhieu2s();
              int index = dsChiTietPhieuBUS.getIndex();
              int number_row = model.getRowCount();
              for (int i = number_row - 1; i >= 0; i--) {
                     model.removeRow(i);
              }
              for (int i = 0; i < index; i++) {
                     model.addRow(new Object[] { chiTietPhieus[i].getMaSP(), chiTietPhieus[i].getNameProduct(),
                                   chiTietPhieus[i].getSoLuong(), chiTietPhieus[i].getDonGia() });
              }
              this.GanTongTien_label.setText(String.valueOf(dsChiTietPhieuBUS.Sum_money()));
       }

       public void TimKiem_CTPhieu() {
              String maSP = this.IDSanPham_textField.getText();
              ChiTietPhieuDTO[] temp = this.dsChiTietPhieuBUS.getChiTietPhieu2s();
              int index = this.dsChiTietPhieuBUS.getIndex();
              for (int i = 0; i < index; i++) {
                     if (temp[i].getMaSP().equals(maSP)) {
                            this.TenSP_textField.setText(temp[i].getNameProduct());
                            this.SoLuong_textField.setText(String.valueOf(temp[i].getSoLuong()));
                            this.GiaBan_textField.setText(String.valueOf(temp[i].getDonGia()));
                            break;
                     }
              }
       }

}
