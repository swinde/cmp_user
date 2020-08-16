[{if $oxcmp_user && $oxcmp_user->inGroup('oxiddealer')}]
    [{oxhasrights ident="SHOWARTICLEPRICE"}]
    [{assign var=tprice value=$oDetailsProduct->getTPrice()}]
    [{assign var=price  value=$oDetailsProduct->getPrice()}]
    [{if $tprice && $tprice->getBruttoPrice() > $price->getBruttoPrice()}]
    <del class="lead">[{$oDetailsProduct->getFTPrice()}] [{$currency->sign}]</del>
<br/>
    [{/if}]
    [{/oxhasrights}]
    [{else}]
    <div class="priceinfo price list-price">
        <p>
            &nbsp;
        </p>
    </div>
    [{/if}]