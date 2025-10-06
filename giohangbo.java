package Modal;

import java.util.ArrayList;

public class giohangbo {
	
//	Hàm thêm(sửa)
	ArrayList<giohang> ds = new ArrayList<giohang>();
	public void ThemSach(String masach, String tensach, long soluong, long gia, String anh) {
		for(giohang g : ds) {
			if(g.getMasach().equals(masach)) {
				g.setSoluong(g.getSoluong() + soluong);
				return;
			}
		}
		ds.add(new giohang(masach, tensach, soluong, gia, anh));
	}
//	Hàm xóa
	public void XoaSach(String masach) {
		for(giohang g : ds) {
			if(g.getMasach().equals(masach)) {
				ds.remove(g);
			}
		}
	}
//	hàm tổng tiền
	public long TongTien() {
		long tong =0;
		for(giohang g : ds) {
			tong += g.getThanhtien();
		}
		return tong;
	}
}
