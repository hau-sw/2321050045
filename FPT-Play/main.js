let danhSachPhim = [
  // phần tử 1 của mảng
  {
    // các thuộc tính (key–value pair),
    id: 1,
    tenPhim: "Vươn tới mặt trăng",
    namPhatHanh: 2022,
    tuoi: 1,
    thoiLuong: 5,
    quocGia: "Hàn Quốc",
    poster: "./img/banner1.jpg",
    theLoai: "Phim lẻ",
    traiLer:"https://www.youtube.com/embed/OVk2MGBAtOs?si=vBgt0IzsD_SeHIrZ" ,
  },
  // phần tử 2 ...
  {
    id: 2,
    tenPhim: "My Love and Stars",
    namPhatHanh: "2023",
    tuoi: 10,
    thoiLuong: 1.5,
    quocGia: "Hàn Quốc",
    poster: "./img/banner/1.jpg",
    theLoai: "Phim Chiếu Rạp",
    traiLer:"https://www.youtube.com/embed/bSZnAMv-GkY?si=wFk9913aQeN3JH9n",
  },
  {
    id: 3,
    tenPhim: "Tình yêu giấu mặt",
    namPhatHanh: "2025",
    tuoi: 1,
    thoiLuong: 2.5,
    quocGia: "Hàn Quốc",
    poster: "./img/banner/2.jpg",
    theLoai: "Phim bộ",
    traiLer:"https://www.youtube.com/embed/JdpEeqWtKA0?si=FI9I1U1L2Tuaedk_",
  },
  {
    id: 4,
    tenPhim: "The Fading Gold",
    namPhatHanh: "2025",
    tuoi: 1,
    thoiLuong: 3.5,
    quocGia: "Trung Quốc",
    poster: "./img/banner/3.jpg",
    theLoai: "Phim bộ",
    traiLer:"https://www.youtube.com/embed/jBUPmoTs10w?si=VuxGA2maamZBRL8B",
  },
   {
    id: 5,
    tenPhim: "Fairy Tail the Movie: Phoenix Priestess.",
    namPhatHanh: "2021",
    tuoi: 20,
    thoiLuong: 2.1,
    quocGia: "Nhật Bản",
    poster: "./img/banner/4.png",
    theLoai: "Phim Chiếu Rạp",
    traiLer:"https://www.youtube.com/embed/nPv741YW3tk?si=E3XtKSStfUkXs_YG",
  },
   {
    id: 6,
    tenPhim: "Gia Đình Là Số 1, Phần 3",
    namPhatHanh: "2026",
    tuoi: 30,
    thoiLuong: 5,
    quocGia: "Việt Nam",
    poster: "./img/banner/5.jpg",
    theLoai: "Phim Chiếu Rạp",
    traiLer:src="https://www.youtube.com/embed/C0dnkcJQfmc?si=A7ozR3ic_rjdgBkP" ,
  },

];
let tenPhimHienTai = document.getElementsByClassName("tenPhim")[0];
let banner = document.getElementsByClassName("banner")[0];
let namPhatHanh = document.getElementsByClassName("nam")[0];
let tuoi = document.getElementsByClassName("tuoi")[0];
let gio = document.getElementsByClassName("gio")[0];
let quocGia = document.getElementsByClassName("QuocGia")[0];
let theLoai = document.getElementsByClassName("theLoai")[0];
let traiLerMovie=document.getElementsByClassName("trailer")[0];
function chonPhim(idPhim) {
  for (let i = 0; i < danhSachPhim.length; i++) {
    if (danhSachPhim[i].id == idPhim) {//lấy thuộc tính id của phần tử thứ i trong mảng danhSachPhim so sánh với idPhim của người dùng ấn vào nếu đúng thì thay nội dung trênn banner
      // thay link ảnh ở poster vào src
      banner.src = danhSachPhim[i].poster;//lấy src của biến banner (đã gán class banner của html) bên html == lấy poster của phần tử i trong mảng danhSachPhim
      tenPhimHienTai.innerHTML = "Tên phim: " + danhSachPhim[i].tenPhim;// lấy chữ (innerhtml) ở trong biến tenPhimHienTai = lấy thuộc tính tenphim của phần tử i trong mảng dánhachphim 
      namPhatHanh.innerHTML = danhSachPhim[i].namPhatHanh;
      // innerHTML là lấy chữ hay kí tự trong thẻ html để thay thế-
      // bên trái dấu= là thay thế vào vị trí nào
      //bên phải là thay = thuộc tính nào trong phần tử i của mảng
      //có thể thêm chuỗi cho bên phải
      tuoi.innerHTML = "T" + danhSachPhim[i].tuoi;
      // thay thoiluong vào innerHTML
      gio.innerHTML = danhSachPhim[i].thoiLuong + "Giờ";
      quocGia.innerHTML = "Quốc Gia:" + danhSachPhim[i].quocGia;
      theLoai.innerHTML = "Thể Loại:" + danhSachPhim[i].theLoai;
      traiLerMovie.src =danhSachPhim[i].traiLer;
    }
  }
}
