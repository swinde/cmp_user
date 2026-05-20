[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
[{else}]
    <div class="actions">
        <div class="btn-group">
            <a class="btn btn-primary" href="[{$_productLink}]" >[{oxmultilang ident="MORE_INFO"}]</a>
        </div>
    </div>
  [{/if}]
