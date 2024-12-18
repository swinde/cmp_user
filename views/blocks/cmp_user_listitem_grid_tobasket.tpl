[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
[{else}]
    [{if $oViewConf->getActiveTheme()|strpos:"flow" !== false || $oViewConf->getActiveTheme()|strpos:"wave" !== false}]
    [{strip}]
    <div class="actions text-center">
        <div class="btn-group">
            <a class="btn btn-primary" href="[{$_productLink}]" >[{oxmultilang ident="MORE_INFO"}]</a>
        </div>
    </div>
    [{/strip}]
    [{else}]
    <div class="actions text-center">
        <div class="btn-group">
           <a class="btn btn-primary" href="[{$_productLink}]" >[{oxmultilang ident="WIDGET_PRODUCT_PRODUCT_MOREINFO"}]</a>
        </div>
    </div>
    [{/if}]
[{/if}]