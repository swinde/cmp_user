[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
[{else}]
    <div class="component__productbox-picture mb-4">

    </div>

[{/if}]