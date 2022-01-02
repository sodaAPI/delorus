<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">

        <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
</head>

<!-- header section starts  -->

<header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a data-aos="zoom-in-left" data-aos-delay="150" href='/' class="logo"> <img src="images/logo.png" alt=""> </a>

    <nav class="navbar">
        <a data-aos="zoom-in-left" data-aos-delay="300" href='/'>home</a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href='productlist'>product list</a>
        <a data-aos="zoom-in-left" data-aos-delay="600" href='category'>category</a>
        <a data-aos="zoom-in-left" data-aos-delay="750" href='faq'>FAQ</a>
        <a data-aos="zoom-in-left" data-aos-delay="850" href='about'>about</a>
    </nav>

    <nav class="cart-acc">
        {{-- <a data-aos="zoom-in-left" data-aos-delay="300" href='cart' class="cart-head"><i class="fas fa-shopping-cart">
            @if (Cart::instance('default')->count() > 0)
                {{Cart::instance('default')->count()}}<span>
            @endif
        </span></i></a>
        <a data-aos="zoom-in-left" data-aos-delay="450" href='login' class="acc-head"><i class="fas fa-user-circle"></i></a> --}}

        @include('partial.header-right')
    </nav>



</header>
<!-- header section ends -->
