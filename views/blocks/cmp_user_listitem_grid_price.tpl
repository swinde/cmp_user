[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]

    [{if $product->getFPrice()}]
        <span class="lead text-nowrap">
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
                                    </span>
    [{/if}]
     [{else}]
    <div class="lead text-nowrap list-price">
        <p>[{oxmultilang ident="CMP_USER_TEXT"}]</p>
    </div>
    [{/if }]