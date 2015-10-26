{include file="unlp/mobile/headMobile.tpl"}

<div class="container">

 <!-- Row Header -->
    <div class="row">
        {include file="unlp/mobile/header.tpl" }
    </div>
    <div class="row">
        {include file="unlp/mobile/menu.tpl"}
    </div>
    <div class="row">
        <div>
            {if $series}
                <h3 class="pkp_helpers_text_center"> <em>{$series->getLocalizedTitle()}</em></h3>
             {/if}
        </div>
        <div class="mobile_layout">
            <div class="col-md-12">
                <div class="col_principal_mobile col-xs-12">
                    {* Include the full monograph list *}
                    {include file="unlp/mobile/monographs.tpl" publishedMonographs=$publishedMonographs}
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        {include file="unlp/mobile/footer.tpl"}
    </div>

</div> <!-- /container -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
<script type="text/javascript" src="{$baseUrl}/UNLP/styles/bootstrap/js/bootstrap.js"></script>
