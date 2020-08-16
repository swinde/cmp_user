[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]

    <span id="productPrice_[{$testid}]" class="lead price text-nowrap[{if $tprice && $tprice->getBruttoPrice() > $price->getBruttoPrice()}] text-danger[{/if}]">
                                            [{if $product->isRangePrice()}]
                                                [{oxmultilang ident="PRICE_FROM"}]
                                                [{if !$product->isParentNotBuyable()}]
                                                    [{$product->getFMinPrice()}]
                                                [{else}]
                                                    [{$product->getFVarMinPrice()}]
                                                [{/if}]
                                            [{else}]
                                                [{if !$product->isParentNotBuyable()}]
                                                    [{$product->getFPrice()}]
                                                [{else}]
                                                    [{$product->getFVarMinPrice()}]
                                                [{/if}]
                                            [{/if}]
                                            [{$currency->sign}]
                                            [{if $oView->isVatIncluded()}]
                                                [{if !($product->hasMdVariants() || ($oViewConf->showSelectListsInList() && $product->getSelections(1)) || $product->getVariants())}]*[{/if}]
                                            [{/if}]
    </span><br/>
     [{else}]
    <div class="list-price">
        <p>F&uuml;r Preise, bitte anmelden!</p>
    </div>
    [{/if }]