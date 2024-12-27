<?php
/**
 * This program is free software;
 * you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation;
 * either version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License along with this program; if not, see <http://www.gnu.org/licenses/>
 */
// Aktuelle Versionen:

$sMetadataVersion = '2.1';
$aModule = [
    'id'            => 'cmp_user',
    'title'         => 'BEES - Preise nur für angemeldete User',
    'description'   => 'Preise nur für User, Preise ausblenden fuer Gaeste',
    'version'       => '1.1.2',
    'thumbnail'     => '',
    'author'        => 'Steffen Winde',
    'email'         => 'inserv@winde-ganzig.de',
    'url'           => 'https://winde-ganzig.de',
    'extend'        => [],
    'controllers'   => [],
    'blocks'        => [
        [
            //Galerie & Galerie 2 spaltig Preis ausblenden
            'template' => 'widget/product/listitem_infogrid.tpl',
            'block'    => 'widget_product_listitem_infogrid_price',
            'file'     => '/views/blocks/cmp_user_listitem_infogrid_price.tpl',
        ],
        [
            //Galerie & Galerie 2 spaltig Warenkorbbutton ausblenden
            'template' => 'widget/product/listitem_infogrid.tpl',
            'block'    => 'widget_product_listitem_infogrid_tobasket',
            'file'     => '/views/blocks/cmp_user_listitem_infogrid_tobasket.tpl',
        ],
        [
            //List Line Preis ausblenden
            'template' => 'widget/product/listitem_line.tpl',
            'block'    => 'widget_product_listitem_line_price_value',
            'file'     => '/views/blocks/cmp_user_listitem_line.tpl',
        ],
        [
            //listitem_line (Liste) Warenkorb Button ausblenden
            'template'  => 'widget/product/listitem_line.tpl',
            'block'     => 'widget_product_listitem_line_tobasket',
            'file'      => '/views/blocks/cmp_user_listitem_line_tobasket.tpl'
        ],
        [
            //Product Details
            'template'  => 'page/details/inc/productmain.tpl',
            'block'     => 'details_productmain_price',
            'file'      => '/views/blocks/cmp_user_productmain.tpl'
        ],
        [
            //Details  Warenkorb Button ausblenden
            'template'  => 'page/details/inc/productmain.tpl',
            'block'     => 'details_productmain_tobasket',
            'file'      => '/views/blocks/cmp_user_productmain_tobasket.tpl'
        ],
        [
            //Details  Warenkorb UVP Preis ausblenden
            'theme'    => 'roxive',
            'template'  => 'page/details/inc/productmain.tpl',
            'block'     => 'details_productmain_tprice',
            'file'      => '/views/blocks/cmp_user_productmain_tprice.tpl'
        ],
        [
            'theme'    => 'roxive',
            'template'  => 'page/details/inc/productmain.tpl',
            'block'     => 'details_productmain_priceperunit',
            'file'      => '/views/blocks/cmp_user_productmain_priceperunit.tpl'
        ],
		[
			//Galerie & Galerie 1 spaltig Preis ausblenden
			'template' => 'widget/product/listitem_grid.tpl',
			'block'    => 'widget_product_listitem_grid_price',
			'file'     => '/views/blocks/cmp_user_listitem_grid_price.tpl',
		],
		[
			//Galerie & Galerie 1 spaltig Warenkorbbutton ausblenden
			'template' => 'widget/product/listitem_grid.tpl',
			'block'    => 'widget_product_listitem_grid_tobasket',
			'file'     => '/views/blocks/cmp_user_listitem_grid_tobasket.tpl',
		],
    ]
];