[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
     [{else}]
    <div class="lead text-nowrap list-price">
        <p><small>[{oxmultilang ident="CMP_USER_TEXT"}]</small></p>
    </div>
    [{/if }]