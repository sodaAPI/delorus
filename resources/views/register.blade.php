<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delorus - Login</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->
    <script src="js/script.js" defer></script>

</head>
<body>

<!-- header section starts  -->
{{View::make('header')}}
<!-- header section ends -->

<div class="container custom-login">
<div class="content" data-aos="zoom-in-up" data-aos-delay="300">

    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
        <h2></h2>
        <h3>Register</h3>
            <form action="register" method="POST">
                @csrf
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="row mb-4">
                <div class="col">
                <div class="form-outline2">
                    <input type="text" name="name" id="form3Example1" class="form-control" />
                    <label class="form-label" for="form3Example1">Name</label>
                </div>
                </div>
            </div>

            <!-- Email input -->
            <div class="form-outline3 mb-4">
                <input type="email" name="email" id="form3Example3" class="form-control" />
                <label class="form-label" for="form3Example3">Email address</label>
            </div>

            <!-- Password input -->
            <div class="form-outline4 mb-4">
                <input type="password" name="password" id="form3Example4" class="form-control" />
                <label class="form-label" for="form3Example4">Password</label>
            </div>

            <div class="col">
                <!-- Simple link -->
                <a href='login'>Already Registered?</a>
                </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block mb-4">Sign up</button>
            </form>
        </div>
    </div>
    </div>
</div>





<!-- footer section starts  -->

{{View::make('footer')}}

<!-- footer section ends -->
</body>
</html>
