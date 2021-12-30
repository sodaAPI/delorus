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
        <div class="col-sm-4">
            <form action="login" method="POST">
            <h2></h2>
            <h3>Login</h3>
            <!-- Email input -->
            <div class="form-outline mb-4">
                @csrf
                <input type="email" name="email" id="form1Example1" class="form-control" />
                <label class="form-label" for="form1Example1">Email address</label>
            </div>

            <!-- Password input -->
            <div class="form-outline1 mb-4">
                <input type="password" name="password" id="form1Example2" class="form-control" />
                <label class="form-label" for="form1Example2">Password</label>
            </div>

            <!-- 2 column grid layout for inline styling -->
            <div class="row mb-4">
                <div class="col d-flex justify-content-center">
                <!-- Checkbox -->
                <div class="form-check">
                    <input
                    class="form-check-input"
                    type="checkbox"
                    value=""
                    id="form1Example3"
                    checked
                    />
                    <label class="form-check-label" for="form1Example3"> Remember me </label>
                </div>
                </div>

                <div class="col">
                <!-- Simple link -->
                <a href='register'>Not Registered?</a>
                </div>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block">Login</button>
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