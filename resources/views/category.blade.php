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

    <div class="banner-category">

        <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
            <span></span>
            <h3> </h3>
            <h3>Category</h3>
        </div>

    </div>

    <table id="table">
        <tr>
            <td colspan="2">

            </td>
            <td colspan="2" style="text-align:right;">
            </td>
        </tr>
        <tr>
            <td colspan="4">
            </td>
        </tr>
        <tr>
            <td>
                <div class="div1">
                    <img src="images/bucket-hat-ijo.jpg" style="width: 75%;" />
                    <p>Hat</p>
                    <a href="hat" class="btn btn-outline-light">Hat Category</a>
                </div>
            </td>
            <td>
                <div class="div1">
                <img src="images/tiedye-mask.jpg" style="width: 55%;" />
                <p>Mask</p>
                <a href="mask" class="btn btn-outline-light">Mask Category</a>
                </div>
            </td>
            <td>
                <div class="div1">
                <img src="images/pinky-totebag.jpg" style="width: 60%;" />
                <p>Totebag</p>
				<a href="totebag" class="btn btn-outline-light">Totebag Category</a>
                </div>
            </td>
            <td>
                <div class="div1">
                <img src="images/wallet-1.jpg" style="width: 65%;" />
                <p>Wallet</p>
				<a href="wallet" class="btn btn-outline-light">Wallet Category</a>


                </div>
            </td>
        </tr>

    </table>
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
