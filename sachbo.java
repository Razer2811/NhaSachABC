package Modal;

import java.util.ArrayList;

public class sachbo {
	sachdao sdao = new sachdao();
	ArrayList<sach> ds;
	public ArrayList<sach> getsach() throws Exception{
		ds = sdao.getsach();
		return ds;
	}
	public ArrayList<sach> TimMa(String maloai) throws Exception{
		ArrayList<sach> tam = new ArrayList<sach>();
		for(sach s : ds) {
			if(s.getMaloai().trim().toLowerCase().contains(maloai))
				tam.add(s);
		}
		return tam;
	}
	public ArrayList<sach> Tim(String key) throws Exception{
		ArrayList<sach> tam = new ArrayList<sach>();
		for(sach s : ds) {
			if(s.getTensach().trim().toLowerCase().contains(key.trim().toLowerCase())
			|| s.getTacgia().trim().toLowerCase().contains(key.trim().toLowerCase())        
			||    s.getMaloai().trim().toLowerCase().contains(key.trim().toLowerCase())     )
				tam.add(s);
		}
	return tam;
	}
}	
