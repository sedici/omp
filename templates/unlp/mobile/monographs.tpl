<script type="text/javascript">
    // Initialize JS handler.
    $(function () {ldelim}
            $('#monographListContainer').pkpHandler(
                    '$.pkp.pages.catalog.MonographPublicListHandler'
                    );
    {rdelim}); 
</script>
<div class="row">
    <h1><span class="titulo_results">Todos los t&iacute;tulos </span></h1>
    <div class="orden"></div>
    <div class="listadoitems">
        {if $publishedMonographs|@count}
            <ul class="items">
                {foreach from=$publishedMonographs item=publishedMonograph}
                    {include file="unlp/mobile/monograph.tpl" publishedMonograph=$publishedMonograph}
                {/foreach}
            </ul>
        {/if}
    </div>
</div>