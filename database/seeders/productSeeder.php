<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class productSeeder extends Seeder
{
     /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('products')->insert([
            [
                'name'=>'Totebag Sketch',
                'price'=>'35000',
                'description'=>'A Totebag with sketch graphic style',
                'category'=>'Totebag',
                'gallery'=>'images/totebag-product.jpg'
            ],
            [
                'name'=>'Colorful Mask',
                'price'=>'40000',
                'description'=>'A Mask with colorful style',
                'category'=>'Masker',
                'gallery'=>'images/masker.jpeg'
            ],
            [
                'name'=>'Red LV Bucket Hat',
                'price'=>'35000',
                'description'=>'A Bucket hat with Red LV style',
                'category'=>'Hat',
                'gallery'=>'images/product-3.jpg'
            ],
            [
                'name'=>'White Beanie Hat',
                'price'=>'25000',
                'description'=>'A Beanie hat with White colors',
                'category'=>'Hat',
                'gallery'=>'https://m.media-amazon.com/images/I/612Mye5LFhL._AC_UL1001_.jpg'
            ],
            [
                'name'=>'Black Beanie Hat',
                'price'=>'30000',
                'description'=>'A Beanie hat with Black colors',
                'category'=>'Hat',
                'gallery'=>'https://m.media-amazon.com/images/I/61nS+ugwc6L._AC_UX385_.jpg'
            ],
            [
                'name'=>'Cream Bucket Hat',
                'price'=>'55000',
                'description'=>'A Eiger Bucket hat with Cream colors',
                'category'=>'Hat',
                'gallery'=>'https://cdn.idntimes.com/content-images/community/2021/08/910006662khk1-fed8da28f424252529171158ad96a3c9-51dd9bfd0c5588de5d4e3a1a9759166f.jpg'
            ],
            [
                'name'=>'White Bucket Hat',
                'price'=>'35000',
                'description'=>'A Eiger Bucket hat with White colors',
                'category'=>'Hat',
                'gallery'=>'https://eigeradventure.com/media/catalog/product/cache/4f33418a30da1d50c37d8b95a2cfab0e/9/1/910006663.LBL.1.jpg'
            ],
            [
                'name'=>'Denim Wallet',
                'price'=>'75000',
                'description'=>'A Wallet with denim material',
                'category'=>'Wallet',
                'gallery'=>'images/dompet.jpg'
            ],
            [
                'name'=>'Navy Beanie Hat',
                'price'=>'45000',
                'description'=>'A Beanie hat with Blue Navy colors',
                'category'=>'Hat',
                'gallery'=>'images/beanie.jpg'
            ],
            [
                'name'=>'Rabbit Mask',
                'price'=>'20000',
                'description'=>'A Mask with rabbit pattern',
                'category'=>'Mask',
                'gallery'=>'images/masker1.jpeg'
            ],
            [
                'name'=>'Red Printed Totebag',
                'price'=>'35000',
                'description'=>'A Totebag with Red printed graphic style',
                'category'=>'Totebag',
                'gallery'=>'images/product-1.jpg'
            ],
            [
                'name'=>'Christmas Totebag Printed',
                'price'=>'60000',
                'description'=>'A Totebag with Christmas printed graphic style',
                'category'=>'Totebag',
                'gallery'=>'images/product-2.jpg'
            ],
            [
                'name'=>'Cow Pattern Mask',
                'price'=>'20000',
                'description'=>'A Mask with cow pattern',
                'category'=>'Mask',
                'gallery'=>'images/product-4.jpg'
            ],
            [
                'name'=>'Bucket Hat Ayam',
                'price'=>'55000',
                'description'=>'A Bucket hat with Ayam Pattern',
                'category'=>'Hat',
                'gallery'=>'images/ayam.jpg'
            ],
            [
                'name'=>'Black Tucker Hat',
                'price'=>'25000',
                'description'=>'A Tucket hat with black color',
                'category'=>'Hat',
                'gallery'=>'images/tucker-hat.jpg'
            ],
            [
                'name'=>'Batman Wallet',
                'price'=>'55000',
                'description'=>'A Wallet with batman design',
                'category'=>'Wallet',
                'gallery'=>'images/batman-wallet.jpg'
            ],
            [
                'name'=>'Ironman Wallet',
                'price'=>'45000',
                'description'=>'A Wallet with cartoon design',
                'category'=>'Wallet',
                'gallery'=>'images/ironman-wallet.jpg'
            ],
            [
                'name'=>'Spidey Wallet',
                'price'=>'55000',
                'description'=>'A Wallet with cartoon design',
                'category'=>'Wallet',
                'gallery'=>'images/spidey-wallet.jpg'
            ],
            [
                'name'=>'Joker Wallet',
                'price'=>'45000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/joker-wallet.jpg'
            ],
            [
                'name'=>'Spongebob Wallet',
                'price'=>'55000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/dompet.jpg'
            ],
            [
                'name'=>'Pikachu Wallet',
                'price'=>'55000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/pikachu-wallet.jpg'
            ],
            [
                'name'=>'Capt Marvel Wallet',
                'price'=>'60000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/captain-wallet.jpg'
            ],
            [
                'name'=>'Sonic Wallet',
                'price'=>'50000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/sonic-wallet.jpg'
            ],
            [
                'name'=>'Mickey Wallet',
                'price'=>'55000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/mickey-wallet.jpg'
            ],
            [
                'name'=>'Disney Wallet',
                'price'=>'60000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/disney-wallet.jpg'
            ],
            [
                'name'=>'Avangers Wallet',
                'price'=>'65000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/avangers-wallet.jpg'
            ],
            [
                'name'=>'Stich Wallet',
                'price'=>'50000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/stich-wallet.jpg'
            ],
            [
                'name'=>'Avangers Wallet',
                'price'=>'65000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/avangers-wallet.jpg'
            ],
            [
                'name'=>'Winnie Pooh Wallet',
                'price'=>'60000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/winnie.jpg'
            ],
            [
                'name'=>'Lion King Wallet',
                'price'=>'65000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/lion.jpg'
            ],
            [
                'name'=>'Tsum Tsum Wallet',
                'price'=>'55000',
                'description'=>'A Wallet with canvas material',
                'category'=>'Wallet',
                'gallery'=>'images/tsumtsum.jpg'
            ],
            [
                'name'=>'Flower Blue Mask',
                'price'=>'55000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/flower-mask.jpg'
            ],
            [
                'name'=>'Flamingos Mask',
                'price'=>'45000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/flamingos-mask.jpg'
            ],
            [
                'name'=>'Dog Mask',
                'price'=>'35000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/dog-mask.jpg'
            ],
            [
                'name'=>'Cat Mask',
                'price'=>'50000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/cat-mask.jpg'
            ],
            [
                'name'=>'Colorful Mask',
                'price'=>'40000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/masker.jpeg'
            ],
            [
                'name'=>'Rabbit Mask',
                'price'=>'25000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/masker1.jpeg'
            ],
            [
                'name'=>'Bubble Black White',
                'price'=>'50000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/black-mask.jpg'
            ],
            [
                'name'=>'Ice Cream Mask',
                'price'=>'55000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/icecream-mask.jpg'
            ],
            [
                'name'=>'Marvel Mask',
                'price'=>'45000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/marvel-mask.jpg'
            ],
            [
                'name'=>'Spidey Mask',
                'price'=>'65000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/spidey-mask.jpg'
            ],
            [
                'name'=>'Hero Mask',
                'price'=>'55000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/marvel-hero.jpg'
            ],
            [
                'name'=>'Flower Plant Mask ',
                'price'=>'45000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/flower-plant-mask.jpg'
            ],
            [
                'name'=>'Unicorn Mask',
                'price'=>'60000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/unicorn-mask.jpg'
            ],
            [
                'name'=>'Batman Mask',
                'price'=>'45000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/batman-mask.jpg'
            ],
            [
                'name'=>'Batman Hero Mask',
                'price'=>'65000',
                'description'=>'A Mask with colorful design',
                'category'=>'Mask',
                'gallery'=>'images/superhero-mask.jpg'
            ],
            [
                'name'=>'Dollar Bucket Hat',
                'price'=>'45000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/dollar-hat.jpg'
            ],
            [
                'name'=>'Messes Pinky Hat',
                'price'=>'35000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/pink-hat.jpg'
            ],
            [
                'name'=>'Colorfull Donut Hat',
                'price'=>'35000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/colorful-donut.jpg'
            ],
            [
                'name'=>'Block Hat',
                'price'=>'50000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/block-hat.jpg'
            ],
            [
                'name'=>'Flower Hat',
                'price'=>'40000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/flower-hat.jpg'
            ],
            [
                'name'=>'Green Hat',
                'price'=>'45000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/green-hat.jpg'
            ],
            [
                'name'=>'Block Yellow Hat',
                'price'=>'50000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/block-yellow.jpg'
            ],
            [
                'name'=>'Blue Donut Hat',
                'price'=>'50000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/donut-hat.jpg'
            ],
            [
                'name'=>'Colorful Mushroom Hat',
                'price'=>'55000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/mushroom-hat.jpg'
            ],
            [
                'name'=>'Pigeon Green Hat',
                'price'=>'60000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/pigeon-hat.jpg'
            ],
            [
                'name'=>'Cherry Blossom Hat',
                'price'=>'45000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/cherry-hat.jpg'
            ], [
                'name'=>'Tiedye Bucket Hat',
                'price'=>'65000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/tieday-hat.jpg'
            ],
            [
                'name'=>'Plant Green Hat',
                'price'=>'45000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/greenplant-hat.jpg'
            ],
            [
                'name'=>'Avocado Green Hat',
                'price'=>'65000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/avocado-hat.jpg'
            ],
            [
                'name'=>'Turtle Green Hat',
                'price'=>'55000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/turtle-hat.jpg'
            ],
            [
                'name'=>'Love Purple Hat',
                'price'=>'45000',
                'description'=>'A Hat with colorful design',
                'category'=>'Hat',
                'gallery'=>'images/love-purple.jpg'
            ],
            [
                'name'=>'Sun Plant Totebag',
                'price'=>'45000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/plant-sun-totebag.jpg'
            ],
            [
                'name'=>'Earth Tone Totebag',
                'price'=>'35000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/totebag-product.jpg'
            ],
            [
                'name'=>'Plant Totebag',
                'price'=>'25000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/plant-totebag.jpg'
            ],
            [
                'name'=>'Stroberi Totebag',
                'price'=>'35000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/strawberry-totebag.jpg'
            ],
            [
                'name'=>'Abstrak Totebag',
                'price'=>'45000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/abstraak-bag.jpg'
            ],
            [
                'name'=>'Colorful Bag',
                'price'=>'50000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/abstrak-totebag.jpg'
            ],
            [
                'name'=>'Oppa Korean Bag',
                'price'=>'50000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/oppa-bag.jpg'
            ],
            [
                'name'=>'Totebag Printed',
                'price'=>'60000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/product-2.jpg'
            ],
            [
                'name'=>'Korean Bag',
                'price'=>'35000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/korean-bag.jpg'
            ],

            [
                'name'=>'Sunset Bag',
                'price'=>'60000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/sunset-bag.jpg'
            ],
            [
                'name'=>'Connecticut Bag',
                'price'=>'50000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/connecticut-bag.jpg'
            ],
            [
                'name'=>'Colorful Plant Bag',
                'price'=>'60000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/bunglon-bag.jpg'
            ],
            [
                'name'=>'Dino Bag',
                'price'=>'40000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/dino-bag.jpg'
            ],
            [
                'name'=>'Butterfly Bag',
                'price'=>'50000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/butterfly-bag.jpg'
            ],
            [
                'name'=>'Oppa Koriah Bag',
                'price'=>'55000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/oppaa-bag.jpg'
            ],
            [
                'name'=>'Emoticon Flufy Bag',
                'price'=>'60000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/husbi-bag.jpg'
            ],
            [
                'name'=>'Butterfly Bag',
                'price'=>'45000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/butterfly-bag.jpg'
            ],
            [
                'name'=>'Flowy Cheerful Bag',
                'price'=>'50000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/floweremot-bag.jpg'
            ],

            [
                'name'=>'Flower Green Bag',
                'price'=>'40000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/flower-green.jpg'
            ],

            [
                'name'=>'Artsy Block Bag',
                'price'=>'50000',
                'description'=>'A Bag with canvas material',
                'category'=>'Totebag',
                'gallery'=>'images/artsy-bag.jpg'
            ],
        ]);
    }
}
