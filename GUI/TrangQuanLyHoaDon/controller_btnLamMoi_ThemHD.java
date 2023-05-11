package TrangQuanLyHoaDon;

import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import DTO.*;

public class controller_btnLamMoi_ThemHD extends MouseAdapter {
       private ThemHoaDon_Frame themHoaDon_Frame;

       public controller_btnLamMoi_ThemHD(ThemHoaDon_Frame themHoaDon_Frame) {
              this.themHoaDon_Frame = themHoaDon_Frame;
       }
       public ThemHoaDon_Frame getThemHoaDon_Frame() {
              return themHoaDon_Frame;
       }
       @Override
       public void mouseClicked(MouseEvent e) {
              new Thread( new Runnable() {
                     @Override
                     public void run() {
                            Sys.Sound_Click();
                            getThemHoaDon_Frame().btnLamMoiHD();
                     }
              }).start();
       }
}
