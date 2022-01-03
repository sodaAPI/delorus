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
    <link rel="stylesheet" href="css/product.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->

</head>

<body>

    <!-- header section starts  -->
    {{View::make('header')}}
    <!-- header section ends -->

    <!-- destination section starts  -->

    <section class="destination" id="destination">

        <div class="banner-Totebagcategory">

            <div class="content" data-aos="zoom-in-up" data-aos-delay="300">
                <span></span>
                <h3> </h3>
                <h3> Product Detail</h3>
            </div>
        </div>
            <div class="card-wrapper">
                <div class="card">
                    <!-- card left -->
                    <div class="product-img">
                        <div class="img-display">
                            <div class="img-showcase">
                                <img class="image-product-detail" src="images/abstraak-bag.jpg"
                                    alt="totebag image">
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- card right -->
                    <div class="productdetail-content">
                        <h2 class="productdetail-title">Abstrak Totebag</h2>
                        <div class="product-rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                            <span>4.7(21)</span>
                        </div>

                        <div class="productdetail-price">
                            <p class="last-price">Category: <span>Totebag </span></p>
                            <p class="new-price">Price: <span>Rp 45,000 (20%)</span></p>
                        </div>

                        <div class="product-detail">
                            <h2>about this item: </h2>
                            <p>Totebag ini memiliki desain gambar yang menarik yang dapat para customer ingin membelinya serta terbuat dari bahan
                            canvas yang memiliki harga yang terjangkau untuk dibeli dan memiliki bahan yang tebal
                            </p>
                            <ul>
                                <li>Category: <span>Totebag</span></li>
                                <li>Pre-Order: <span>7 Hari</span></li>
                            </ul>
                        </div>

                        <div class="purchase-info">
                            <input type="number" min="0" value="1">
                            <button type="button" class="btn">
                                Add to Cart <i class="fas fa-shopping-cart"></i>
                            </button>
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
                offset: 150,
            });

        </script>

</body>

</html>
