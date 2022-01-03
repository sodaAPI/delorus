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

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum voluptatum praesentium amet quibusdam
                    quam officia suscipit odio.</p>
            </div>

        </div>

        <div class="container">
            <div class="box" data-aos="fade-up" data-aos-delay="550">
                @if (session()->has('success_message'))
                <div class="alert alert-success">
                    {{ session()->get('success_message') }}
                </div>
                @endif

                @if(count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif

                @if (Cart::count()>0)
                <h2>{{Cart::count()}} Item(s) in Shopping Cart</h2>
                <div class="cart">

                    <div class="products">
                        @foreach (Cart::content() as $item)


                        <div class="product">
                            <img src="{{$item->model->gallery}}">
                            <div class="product-info">
                                <a href="#" class="product-name">{{$item->model->name}}</a>
                                <h4 class="product-price">Rp.{{$item->model->price}}</h4>
                                <h4 class="product-offer">{{$item->model->description}}</h4>
                                {{-- Quantity <select class="quantity" data-id="{{ $item->rowId }}" data-productQuantity="{{ $item->model->qty }}">
                                    @for ($i = 1; $i < 5 + 1 ; $i++)
                                        <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                    @endfor
                                </select> --}}
                                <p class="product-quantity"> Quantity: <input type="number" value="{{$item->model->qty}}" class="prod_id" name="quantity" value="1" size="2" maxlength="2"></p>
                                    {{-- <p class="product-remove"> --}}
                                         <form action="{{route('cart.destroy',$item->rowId, $item->id)}}" method="POST">
                                            {{ csrf_field() }}
                                            {{method_field('DELETE')}}

                                            <button type="submit" class="btn btn-primary" data-toggle="button" aria-pressed="false" autocomplete="off"">Remove</button>
                                        {{-- <i class="fa fa-trash" aria-hidden="true"></i>
                                        <span class="remove">Remove</span> --}}

                                        </form>
                                    {{-- </p> --}}
                            </div>
                        </div>

                        @endforeach

                    </div>

                    <div class="cart-total">
                        <p>
                            <span>Sub Total</span>
                            <span>Rp.{{Cart::subtotal()}}</span>
                        </p>

                        <p>
                            <span>Tax (10%)</span>
                            <span>Rp.{{Cart::tax()}}</span>
                        </p>

                        <p>
                            <span>Total</span>
                            <span>Rp.{{Cart::total()}}</span>
                        </p>

                        <a href="checkout">Proceed to Checkout</a>

                        @else
                        <div class="spacer"></div>
                        <h2>No Items in Cart</h2>
                        <div class="spacer"></div>
                        <a href="productlist" class="btn btn-primary">Continue Shopping</a>
                        <div class="spacer"></div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>

    @section('extra-js')
    <script src="{{ asset('js/app.js') }}"></script>
    <script>
        (function(){
            const classname = document.querySelectorAll('.quantity')

            Array.from(classname).forEach(function(element) {
                element.addEventListener('change', function() {
                    const id = element.getAttribute('data-id')
                    const productQuantity = element.getAttribute('data-productQuantity')

                    axios.patch(`/cart/${id}`, {
                        quantity: this.value,
                        productQuantity: productQuantity
                    })
                    .then(function (response) {
                        // console.log(response);
                        window.location.href = '{{ route('cart.index') }}'
                    })
                    .catch(function (error) {
                        // console.log(error);
                        window.location.href = '{{ route('cart.index') }}'
                    });
                })
            })
        })();
    </script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection

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
