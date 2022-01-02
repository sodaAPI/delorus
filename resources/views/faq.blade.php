<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delorus - Finest Accesories Shop</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->

</head>
<body>

<!-- header section starts  -->
{{View::make('header')}}
<!-- header section ends -->

<!-- destination section starts  -->

<section class="destination" id="destination">

    <div class="banner-faq">
        <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
            <span></span>
            <h3> </h3>
            <h3>FAQ</h3>
        </div>
    </div>
</div>

<div class="box">
   <div class="faqs">
      <details>
         <summary>Bisakah Saya Tukar Dengan Ukuran Lain? </summary>
         <p class="text">Tidak. Kami tidak dapat melakukan pertukaran saat ini. Potongan kami adalah
            terbatas dan cepat habis. Jika Anda membutuhkan ukuran yang berbeda, saya sarankan untuk mengembalikannya</p>
      </details>
      <details>
         <summary>Apakah Anda akan menimbun ulang item atau ukuran tertentu?</summary>
         <p class="text">Mungkin! Mungkin tidak! Saya biasanya hanya membuat 50 buah desain
            (dan hingga 9 ukuran berbeda) sehingga jumlahnya selalu terbatas. Sebagian besar waktu saya
            tidak melakukan re-stock. Anda dipersilakan untuk mengirim email dan bertanya kepada kami tetapi kami mungkin tidak merespons karena
            separuh waktu saya tidak tahu apakah saya atau tidak. Jika suatu barang sedang dijual maka saya pasti tidak akan melakukannya
            batch lain. Saya juga memiliki fitur dalam daftar produk di mana Anda dapat mendaftar untuk pemberitahuan email
            jika barang yang habis terjual akan tersedia kembali.</p>
      </details>
      <details>
         <summary>Bagaimana saya tahu ukuran saya?</summary>
         <p class="text">Pengukuran yang tepat untuk semua item tercantum dalam deskripsi produk.
            Ukuran saya bisa sedikit tidak konsisten dari satu item ke item lainnya (maaf saya sedang mengerjakannya!) jadi silakan lihat
            untuk pengukuran erat untuk setiap item.</p>
      </details>
   </div>
</div>
</section>

<!-- banner section ends -->

<!-- footer section starts  -->

{{view::make('footer')}}

<!-- footer section ends -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

<script>

    AOS.init({
        duration: 800,
        offset:150,
    });

</script>

</body>
</html>
