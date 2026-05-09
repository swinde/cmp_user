[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{$smarty.block.parent}]
[{else}]
    [{assign var="sHoverPic" value=$product->getPictureUrl(2)}]
    <div class="component__productbox-picture mb-4">
        <a class="component__productbox-picture-link" href="[{$_productLink}]" title="[{$product->oxarticles__oxtitle->value}] [{$product->oxarticles__oxvarselect->value}]">
            <img loading="lazy" src="[{$product->getThumbnailUrl()}]" alt="[{$product->oxarticles__oxtitle->value}] [{$product->oxarticles__oxvarselect->value}]">
            [{if $sHoverPic && !($sHoverPic|strstr:'nopic')}]
        <img class="img-hover" loading="lazy" src="[{$sHoverPic}]" alt="[{$product->oxarticles__oxtitle->value}] [{$product->oxarticles__oxvarselect->value}]">
            [{/if}]
        </a>
        [{if $blShowToBasket}]
        [{oxhasrights ident="TOBASKET"}]
        <form class="component__productbox-quickadd" action="[{$oViewConf->getSelfActionLink()}]" method="post">
            [{$oViewConf->getNavFormParams()}]
            [{$oViewConf->getHiddenSid()}]
            <input type="hidden" name="pgNr" value="[{$oView->getActPage()}]">
            <input type="hidden" name="cl" value="[{$oViewConf->getTopActiveClassName()}]">
            <input type="hidden" name="fnc" value="tobasket">
            <input type="hidden" name="aid" value="[{$product->oxarticles__oxid->value}]">
            <input type="hidden" name="anid" value="[{$product->oxarticles__oxnid->value}]">
            [{*include file="widget/product/tobasket.tpl"
            name="am"
            value=1
            submit=true
            blCanBuy=true
            stockflag=$product->oxarticles__oxstockflag->value
            stock=$product->oxarticles__oxstock->value
            disabled=false
            *}]
        </form>
        [{/oxhasrights}]
        [{/if}]
    </div>

[{/if}]