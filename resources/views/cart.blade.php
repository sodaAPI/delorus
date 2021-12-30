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

    <div class="banner-cart">

        <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
            <span></span>
            <h3> </h3>
            <h3>Shopping Cart</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum voluptatum praesentium amet quibusdam quam officia suscipit odio.</p>
        </div>
    
    </div>

<div class="container">
<div class="box" data-aos="fade-up" data-aos-delay="550">
	<div class="cart">

		<div class="products">
			<div class="product">
				<img src="images/product-3.jpg">
				<div class="product-info">
					<h3 class="product-name">Red Bucket Hat</h3>
					<h4 class="product-price">Rp 35.000</h4>
					<h4 class="product-offer">50%</h4>
					<p class="product-quantity">quantity: <input value="1" name="">
					<p class="product-remove">
						<i class="fa fa-trash" aria-hidden="true"></i>
						<span class="remove">Remove</span>
					</p>
				</div>
			</div>

			<div class="product">
				<img src="images/product-4.jpg">
				<div class="product-info">
					<h3 class="product-name">Cow Mask</h3>
					<h4 class="product-price">Rp 20.000</h4>
					<h4 class="product-offer">40%</h4>
					<p class="product-quantity">quantity: <input value="1" name="">
					<p class="product-remove">
						<i class="fa fa-trash" aria-hidden="true"></i>
						<span class="remove">Remove</span>
					</p>
				</div>
			</div>
		</div>

		<div class="cart-total">
			<p>
				<span>Total Price</span>
				<span>Rp 55.000</span>
			</p>

			<p>
				<span>Number of Items</span>
				<span>2</span>
			</p>

			<p>
				<span>You Save</span>
				<span>Rp 25.500</span>
			</p>

			<a href="#">Proceed to Checkout</a>
		</div>
	</div>
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