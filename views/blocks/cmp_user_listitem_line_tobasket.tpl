<div>
    [{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
        [{$smarty.block.parent}]
    [{else}]
    <a class="btn btn-primary btn-block" href="[{$_productLink}]" >[{oxmultilang ident="WIDGET_PRODUCT_MOREINFO"}]</a>
    [{/if}]
</div>
