<!DOCTYPE html>
<html lang="en">
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

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <span data-aos="fade-up" data-aos-delay="150">Make Art Styles</span>
        <h3 data-aos="fade-up" data-aos-delay="300">as Live Style</h3>
        <p data-aos="fade-up" data-aos-delay="450">Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus quia illum quod perspiciatis harum in possimus? Totam consequuntur officia quia?</p>
        <a data-aos="fade-up" data-aos-delay="600" href="#destination" class="btn">Shop Now</a>
    </div>

</section> -->

<!-- home section ends -->

<!-- destination section starts  -->

<section class="destination" id="destination">

    <div class="heading">
        <span>Product list</span>
        <h1>Our Recomendation</h1>
    </div>

    <div class="box-container">
        @foreach($products as $item)
        <div class="box" data-aos="fade-up" data-aos-delay="150">
            <div class="image">
                <img src="{{$item['gallery']}}" alt="">
            </div>
            <div class="content">
                <h3>{{$item['name']}}</h3>
                <p>{{$item['description']}}</p>
                <p>Rp.{{$item['price']}}</p>
                <a href="#" class="btn btn-outline-light">Buy Now</a>
            </div>
        </div>
        @endforeach

    </div>

</section>

<!-- banner section ends -->

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
