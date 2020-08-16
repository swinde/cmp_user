[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
[{else}]
    <div class="priceinfo price list-price">
        <p class="info">[{oxmultilang ident="CMP_USER_TEXT" suffix="COLON"}]</p>
    </div>
[{/if}]