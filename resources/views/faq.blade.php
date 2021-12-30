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
         <summary>Can I exchange for another size? </summary>
         <p class="text">No. We are not able to do exchanges at this time. Our pieces are 
         limited and sell out quick. If you need a different size I recommend returning the 
         garment for a refund and re-purchasing the size you need asap. </p>
      </details>
      <details>
         <summary>Are you going to be re-stocking a particular item or size?</summary>
         <p class="text">Maybe! Maybe not! I usually make only 50 pieces of a design 
         (and up to 9 different sizes) so quantities are always limited. Most of the time I 
         don't do a re-stock. You are welcome to send us an email and ask but we might not respond because 
         half the time I have no clue if I am or not. If an item is on sale than I definitely will not be doing 
         another batch. I also have a feature in the product listing where you can sign up for email notifications 
         if a sold out item comes back in stock.</p>
      </details>
      <details>
         <summary>How do I know my size?</summary>
         <p class="text">Exact measurements for all items are listed in the product descriptions. 
         My sizing can be a little inconsistent from item to item (I'm sorry I am working on it!) so please refer 
         to measurements closely for each item.</p>
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