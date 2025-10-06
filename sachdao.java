package Modal;

import java.util.ArrayList;

public class sachdao {
    public ArrayList<sach> getsach() throws Exception {
        ArrayList<sach> ds = new ArrayList<sach>();

        ds.add(new sach("s1", "Cấu trúc dữ liệu", "Nguyễn Văn An", 10, 50000, "anh/b1.jpg", "tin"));
        ds.add(new sach("s2", "Giải thuật", "Trần Thị Bình", 8, 60000, "anh/b2.jpg", "tin"));
        ds.add(new sach("s3", "Lập trình Java", "Lê Văn Căn", 15, 75000, "anh/b3.jpg", "tin"));
        ds.add(new sach("s4", "Lý đại cương", "Phạm Dũ", 12, 70000, "anh/b4.jpg", "ly"));
        ds.add(new sach("s5", "Lý thực hành", "Ngô Quyền", 20, 80000, "anh/b5.jpg", "ly"));
        ds.add(new sach("s6", "Hóa học hữu cơ", "Nguyễn Phong", 10, 90000, "anh/b6.jpg", "hoa"));
        ds.add(new sach("s7", "Thuyết tiến hóa", "Trần Giang", 18, 85000, "anh/b7.jpg", "sinh"));
        ds.add(new sach("s8", "Truyện Kiều", "Nguyễ Du", 5, 120000, "anh/b8.jpg", "van"));

        return ds;
    }
}
