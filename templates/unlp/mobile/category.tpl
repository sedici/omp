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
            {if $category}
                {assign var="category_id" value=$category->getId()}

                <h2 class="pkp_helpers_text_center"> <center><img src="/files/presses/1/categories/{$category_id}-category.png" /></center><em>{$category->getLocalizedTitle()}</em></h2>
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
</div><!-- catalogContainer -->

