package TrangQuanLyPhieuNhap;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import DTO.Sys;

public class controller_TimKiemCT_SuaPhieuFrame extends MouseAdapter {
       private SuaPhieuNhap_Frame suaPhieuNhap_Frame;

       public controller_TimKiemCT_SuaPhieuFrame(SuaPhieuNhap_Frame suaPhieuNhap_Frame) {
              this.suaPhieuNhap_Frame = suaPhieuNhap_Frame;
       }
       public SuaPhieuNhap_Frame getSuaPhieuNhap_Frame() {
              return suaPhieuNhap_Frame;
       }
       @Override
       public void mouseClicked(MouseEvent e) {
              Sys.Sound_Click();
              getSuaPhieuNhap_Frame().TimKiem_CTPhieu();
       }
}
