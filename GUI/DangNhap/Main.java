package DangNhap;

import BUS.*;
import DTO.*;

public class Main {
       public static void main(String[] args) {
              StoreBUS store = new StoreBUS();
              ListProductsBUS listProducts = store.load_ListProducts_2();
              DanhSachHDBUS danhSachHD = store.load_DanhSachHD_2();
              dsPhieuNhapBUS dsPhieuNhap = store.load_PhieuNhap_2();
              dsPhieuXuatBUS dsPhieuXuat = store.load_PhieuXuat_2();
              DanhSachNhaCCBUS dSachNhaCC = store.load_DanhSachNhaCC_2();
              StaffsBUS staffs = store.load_Staffs_2();
              ThongKeDTO thongKe = new ThongKeDTO(listProducts, dsPhieuNhap, dsPhieuXuat, danhSachHD, staffs,
                            dSachNhaCC);

              DangNhap_view dangNhap_view = new DangNhap_view(staffs, dSachNhaCC, dsPhieuNhap, listProducts,
                            dsPhieuXuat, danhSachHD, thongKe);
       }

}
