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

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- custom js file link  -->

</head>

@section('content')
<div class="container mt-5">
    <div class="row">
        <div class="col-md-7">
            <div class="card">
                <div class="card-body">
                    <h6>
                        Basic Detail
                    </h6>
                    <hr>
                    <div class="row checkout-form">
                        <div class="col-md-6">
                            <label for="">First Name</label>
                            <input type="text" class="form-control" name="fname" placeholder="Enter First Name">
                        </div>
                        <div class="col-md-6">
                            <label for="">Last Name</label>
                            <input type="text" class="form-control" name="lname" placeholder="Enter Last Name">
                        </div>
                        <div class="col-md-6">
                            <label for="">Email</label>
                            <input type="text" class="form-control" name="email" placeholder="Enter Email">
                        </div>
                        <div class="col-md-6">
                            <label for="">Phone Number</label>
                            <input type="text" class="form-control" name="phone" placeholder="Enter Phone Number">
                        </div>
                        <div class="col-md-6">
                            <label for="">Address</label>
                            <input type="text" class="form-control" name="address" placeholder="Enter Address">
                        </div>
                        <div class="col-md-6">
                            <label for="">Address 2</label>
                            <input type="text" class="form-control" name="address2" placeholder="Enter Address 2">
                        </div>
                        <div class="col-md-6">
                            <label for="">City</label>
                            <input type="text" class="form-control" name="city" placeholder="Enter City">
                        </div>
                        <div class="col-md-6">
                            <label for="">State</label>
                            <input type="text" class="form-control" name="state" placeholder="Enter State">
                        </div>
                        <div class="col-md-6">
                            <label for="">Country</label>
                            <input type="text" class="form-control" name="country" placeholder="Enter Country">
                        </div>
                        <div class="col-md-6">
                            <label for="">Zip Code</label>
                            <input type="text" class="form-control" name="zip" placeholder="Enter Zip Code">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-5">
            <div class="card">
                <div class="card-body">
                    <h6>Order Detail</h6>
                    <hr>
                    <table class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Qty</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            {{-- @foreach ($product as $item)
                            <tr>
                                <td>{{ $item->model->name }}</td>
                                <td>{{ $item->model->qty }}</td>
                                <td>{{ $item->model->price }}</td>
                            </tr>
                            @endforeach --}}
                        </tbody>
                    </table>
                    <hr>
                    <button class="btn btn-primary float-end btn-lg">Place Order</button>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .checkout-form label{
        font-size: 12px;
        font-weight: 700;
    }
    .checkout-form input{
        font-size: 14px;
        font-weight: 400;
        padding: 5px;
    }
    .card-body h6{
        font-weight: 1000;
        font-size: 16px;
    }
</style>
