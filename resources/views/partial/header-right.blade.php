<ul>
    <li><a href="{{route('register')}}">Sign up</a></li>
    <li><a href="{{route('login')}}">Sign in</a></li>
    <li><a href="{{route('cart.index')}}">Cart<span class="cart-count"><span>{{ Cart::instance('default)->count()}}</span></span></a></li>
    {{--@foreach ($items as $menu_item)
    <li>
        <a href="{{$menu_item ->link()}}">
        {{$menu_item->title}}
        @if ($menu_item->tittle === 'Cart')
        @if (Cart::instance('default')->count() > 0)
        <span class="cart-count"><span>{{ Cart::instance('default)->count()}}</span></span>
        @endif
        @endif
        </a>
    </li>
    @endforeach--}}
</ul>
