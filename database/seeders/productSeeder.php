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
            ]
            // [
            //     'name'=>'Denim Wallet',
            //     'price'=>'75000',
            //     'description'=>'A Wallet with denim material',
            //     'category'=>'Wallet',
            //     'gallery'=>'images/dompet.jpg'
            // ],
            // [
            //     'name'=>'Denim Wallet',
            //     'price'=>'75000',
            //     'description'=>'A Wallet with denim material',
            //     'category'=>'Wallet',
            //     'gallery'=>'images/dompet.jpg'
            // ],
            // [
            //     'name'=>'Denim Wallet',
            //     'price'=>'75000',
            //     'description'=>'A Wallet with denim material',
            //     'category'=>'Wallet',
            //     'gallery'=>'images/dompet.jpg'
            // ],
            // [
            //     'name'=>'Denim Wallet',
            //     'price'=>'75000',
            //     'description'=>'A Wallet with denim material',
            //     'category'=>'Wallet',
            //     'gallery'=>'images/dompet.jpg'
            // ],
            // [
            //     'name'=>'Denim Wallet',
            //     'price'=>'75000',
            //     'description'=>'A Wallet with denim material',
            //     'category'=>'Wallet',
            //     'gallery'=>'images/dompet.jpg'
            // ]
        ]);
    }
}
