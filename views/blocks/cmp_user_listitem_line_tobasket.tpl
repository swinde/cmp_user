<div>
    [{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
        [{$smarty.block.parent}]
    [{else}]
    <a class="btn btn-primary btn-block" href="[{$_productLink}]" >[{oxmultilang ident="MORE_INFO"}]</a>
    [{/if}]
</div>
