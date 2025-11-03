let danhSachPhim=[
    {
        id:1,
        tenPhim:"Mua do",
        namPhatHanh:2025,
        tuoi:16,
        thoiLuong:2,
        quocGia:"Viet Nam",
        poster:"./img/banner1.jpg",
        theLoai:"Phim Chieu Rap"
    },
    {
        id:2,
        tenPhim:"Connan",
        namPhatHanh:"2023",
        tuoi:10,
        thoiLuong:1.5,
        quocGia:"Nhat Ban",
        poster:"/img/",
        theLoai:"Phim Hoat Hinh",
    }
];
let phimHienTai=danhSachPhim[0];
let banner = document.getElementsByClassName("anhbia")[0];
function chonPhim(idPhim){
  let anhBanner = document.querySelector(".anhbia img");
  for(let i = 0; i < danhSachPhim.length; i++){
    if(danhSachPhim[i].id == idPhim){
      anhBanner.src = danhSachPhim[i].poster;
    }
  }
}

