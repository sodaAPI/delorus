<ul class="header-right">
    @guest
    <a data-aos="zoom-in-left" data-aos-delay="300" href='register' class="acc-head"><i class="far fa-id-card"></i> Sign up</a>
    <a data-aos="zoom-in-left" data-aos-delay="450" href='login' class="acc-head"><i class="fas fa-user-circle"></i> Sign in</a>
    @else
    <li>
        <a href="logout"
        onclick="event.preventDefault();
        document.getElementById('logout-form').submit();" data-aos="zoom-in-left" data-aos-delay="300" href='register' class="acc-head">
        Logout
    </a>
    </li>
    <form id="logout-form" action="logout" method="POST" style="display: none">
    {{ csrf_field() }}
    </form>
    @endguest
    <a data-aos="zoom-in-left" data-aos-delay="550" href='cart' class="cart-head"><i class="fas fa-shopping-cart">
        @if (Cart::instance('default')->count() > 0)
            {{Cart::instance('default')->count()}}<span>
        @endif
    </span></i></a>
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
<style>
.header-right{
    display: inline;
    font-size: 12px;
}

.header-right logout-form{
    display: inline;
    font-size: 12px;
}

</style>

