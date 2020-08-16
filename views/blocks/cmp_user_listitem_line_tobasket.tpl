<div>
    [{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{if $blShowToBasket}]
    [{oxhasrights ident="TOBASKET"}]
    <div class="form-group">
        <div class="input-group">
            <input id="amountToBasket_[{$testid}]" type="text" name="am" value="1" size="3" autocomplete="off" class="form-control">
            <span class="input-group-btn">
                                                    <button id="toBasket_[{$testid}]" type="submit" class="btn btn-primary hasTooltip" title="[{oxmultilang ident="DETAILS_ADDTOCART"}]">
                                                        <i class="icon-shopping-cart"></i>
                                                    </button>
                                                    [{if $removeFunction && (($owishid && ($owishid==$oxcmp_user->oxuser__oxid->value)) || (($wishid==$oxcmp_user->oxuser__oxid->value)) || $recommid)}]
                                                        <button triggerForm="remove_[{$removeFunction}][{$testid}]" type="submit" class="btn btn-danger removeButton hasTooltip" title="[{oxmultilang ident="WIDGET_PRODUCT_PRODUCT_REMOVE"}]">
                                                            <i class="icon-times"></i>
                                                        </button>
                                                    [{/if}]
                                                </span>
        </div>
    </div>
    [{/oxhasrights}]
    [{else}]
    <a class="btn btn-primary btn-block" href="[{$_productLink}]" >[{oxmultilang ident="WIDGET_PRODUCT_PRODUCT_MOREINFO"}]</a>

    [{if $removeFunction && (($owishid && ($owishid==$oxcmp_user->oxuser__oxid->value)) || (($wishid==$oxcmp_user->oxuser__oxid->value)) || $recommid)}]
    <button triggerForm="remove_[{$removeFunction}][{$testid}]" type="submit" class="btn btn-danger btn-block removeButton">
        <i class="icon-times"></i> [{oxmultilang ident="WIDGET_PRODUCT_PRODUCT_REMOVE"}]
    </button>
    [{/if}]
    [{/if}]
    [{else}]
    <a class="btn btn-primary btn-block" href="[{$_productLink}]" >[{oxmultilang ident="WIDGET_PRODUCT_PRODUCT_MOREINFO"}]</a>
    [{/if}]
</div>
