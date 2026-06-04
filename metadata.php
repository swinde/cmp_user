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
    'version'       => '1.0.4',
    'thumbnail'     => '',
    'author'        => 'Steffen Winde',
    'email'         => 'inserv@winde-ganzig.de',
    'url'           => 'https://winde-ganzig.de',
    'extend'        => [],
    'controllers'   => [],
    'blocks'        => [
        [
            'template' => 'widget/product/listitem_grid.tpl',
            'block'    => 'widget_product_listitem_grid_price',
            'file'     => '/views/blocks/cmp_user_listitem_grid_price-o3.tpl',
        ],
        [
            'template' => 'widget/product/listitem_grid.tpl',
            'block'    => 'widget_product_listitem_infogrid_gridpicture',
            'file'     => '/views/blocks/cmp_user_listitem_grid_tobasket-o3.tpl',
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
        ]    ]
];