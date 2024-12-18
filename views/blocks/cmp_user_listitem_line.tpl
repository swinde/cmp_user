[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
     [{else}]
    <div class="list-price">
        <p>F&uuml;r Preise, bitte anmelden!</p>
    </div>
    [{/if }]