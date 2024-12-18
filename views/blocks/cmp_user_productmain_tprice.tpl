[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
    [{/if}]