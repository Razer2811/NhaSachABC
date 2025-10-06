package Modal;

import java.util.ArrayList;

public class loaidao {
public ArrayList<loai> getloai() throws Exception{
    ArrayList<loai> ds= new ArrayList<loai>();
    ds.add(new loai("tin", "Công nghệ thông tin"));
    ds.add(new loai("ly", "Vật lý"));
    ds.add(new loai("hoa", "Công nghệ hóa học"));
    ds.add(new loai("sinh", "Công nghệ sinh học"));
    ds.add(new loai("van", "Văn học"));
    return ds;
}
}