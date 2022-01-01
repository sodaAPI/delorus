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

<!-- destination section starts  -->

<section class="destination" id="destination">

    <div class="banner-Maskcategory">

        <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
            <span></span>
            <h3> </h3>
            <h3>Mask Product</h3>
            <p>Delorus Menawarkan masker dengan jasa desain yang kami berikan sangat menarik, harga terjangkau, bahan yang berkualitas  dan sesuai keinginan customer.</p>
        </div>

    </div>

    <div class="box-container">
        @foreach($products as $category)
        @if ($category['category'] == 'Mask')
        <div class="box" data-aos="fade-up" data-aos-delay="150">
            <div class="image">
            <img src="{{$category['gallery']}}" alt="" href="#" >
            </div>
            <div class="content">
                <h3>{{$category['name']}}</h3>
                <p>{{$category['description']}}</p>
                <p>Rp.{{$category['price']}}</p>
                <a href="#" class="btn btn-outline-light">Buy Now</a>
            </div>
        </div>
        @endif
        @endforeach
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





