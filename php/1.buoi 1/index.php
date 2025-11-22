<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php 
    // in ra man hinh 
    echo "Hello, World! <br> " ;
    echo "Hi ";

    // 1. khai bao bien
    //$ bien_ten = gia_tri;
    $ten = "Pham Hau ";
    $tuoi = 21;
    echo $ten;

    //2.  nối chuỗi dung "."
    echo $ten." ".$tuoi . " tuoi ";

    //3.  hằng
    define("PI", "3.14"); 
    echo "<br>". PI. " <br> ";

    // 4. phân biệt dấu nháy '' va ""
    echo "$ten" . "<br>"; // in ra gia tri bien
    echo '$ten' . "<br>"; // in ra ten bien

    // 5. chuỗi
    // kiểm tra độ dài chuỗi
    echo strlen($ten) . "<br>"; 
    // đếm số từ trong chuỗi
    echo str_word_count($ten) . "<br>";
    // tìm kiếm  vị trí kí tự trong chuỗi
    echo strpos($ten, "a") . "<br>";
    // thay thế kí tự trong chuỗi
    echo str_replace("Hau", "Hai",$ten). "<br>";

    //6. toán tử
    $a=10;
    $b=5;
    // + - * / %
    echo $a + $b . "<br>";
    echo $a - $b . "<br>";
    echo $a * $b ."<br>";
    echo $a / $b . "<br>";
    echo $a % $b . "<br>";
    // toán tử gán 
    // = += -= *= /= %= 
    // toán tử so sánh
    // == != > < >= <=
    echo ($a > $b) . "<br>"; // true = 1 , false = null

    //7 . câu điều kiện

    // kiểm tra tổng của số thứ 1 và số thứ 2
    $c =11;
    $d=5;
    if($c+ $d <15){
        echo $c."+".$d . " nhỏ hơn 15 <br>";
        }
        else if($c +$d==5){
            echo $c."+".$d . " bằng 15 <br>";
        }
        else{
            echo $c."+".$d . " lớn hơn 15 <br>";
        };
    
    // 8. switch case
    $color = "red";
    switch($color){ 
        case "red":
            echo "Màu đỏ <br>";
            break;
        case "blue":
            echo "Màu xanh dương <br>";
            break;
        case "green":
            echo "Màu xanh lá <br>";
            break;
        default:
            echo "no color <br>";
            break;
        }

        // 9. vòng lặp
        // for
        for($i=1; $i<=100; $i++){
            echo "Lần thứ: ".$i . "<br>";
        }

        // 10. mảng
        $mang = ["PHP", "HTML", "CSS", "JS"];
        
        // dem phan tu mang 
        echo "Số phần tử trong mảng: ". count($mang) . "<br>";
        // in ra phan tu mang
        print_r($mang);

        // thay mang
        $mang[2] = "Python";
        echo "<br> Sau khi thay thế: <br>";
        print_r($mang);

        // them phan tu vao mang
        $mang[] = "Java";
        echo "<br> Sau khi thêm: <br>";
        print_r($mang);

        //xoa phan tu khoi mang
        unset($mang[1]);
        echo "<br> Sau xóa: <br>";
        print_r($mang);

         ?>
</body>
</html>