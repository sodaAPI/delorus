<!DOCTYPE html>
<html>
<head>
	<title>About Us Section</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>	
<body>

<!-- header section starts  -->
{{View::make('header')}}
<!-- header section ends -->

<!-- destination section starts  -->

<section class="destination" id="destination">

    <div class="banner-about">

        <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
            <span></span>
            <h3> </h3>
            <h3>About Us</h3>
        </div>
    
    </div>

	<div class="section">
		<div class="container">
			<div class="content-section">
				<div class="content">
					<h3 style="text-align: center">DELORUS</h3>
					<p style="text-align: justify">Delorus ialah sebuah bisnis yang kami buat dengan menawarkan jasa desain
                       pada produk totebag, topi, dompet dan masker yang dimana produk ini kami supplay
                       langsung dari pabrik sehingga para costumer dapat membeli produk kami dengan harga
                       yang affordable untuk produk yang akan kami tawarkan nantinya. Kami menyediakan desain
                       yang menarik dengan warna-warna yang eye catching yang dapat memikat para customer kami
                       untuk dapat membeli produk kami. Kami juga memiliki motif yang beragam corak dan kami juga
                       menggunakan berbagai macam kain dalam proses pembuatan produk kami. Kami menggunakan bahan
                       Kain Canvas, Kain Sakura, Kain Drill, Kain Blancu.</p>
				</div>
			</div>
        </div>
    </div>
</section>

<!-- footer section starts  -->

{{View::make('footer')}}

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