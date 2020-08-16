[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{if $oUnitPrice}]
       <p>Grundpreis: <span id="productPriceUnit">[{oxprice price=$oUnitPrice currency=$currency}]/[{$oDetailsProduct->getUnitName()}]</span></p>
    [{/if}]
    [{else}]

[{/if}]