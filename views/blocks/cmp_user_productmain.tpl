[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
        [{$smarty.block.parent}]
    [{else}]
    <label id="productPrice" class="price-label">
        <span class="price">[{oxmultilang ident="CMP_USER_TEXT"}]</span>                                                                                                                                                       <span>

    </label>

[{/if}]