<li class="col-xs-12">
    <div class="portada col-xs-4">
        <a href="{url page="catalog" op="book" path=$publishedMonograph->getId()}">
            {include file="controllers/monographList/coverImage.tpl" monograph=$publishedMonograph}
        </a>
    </div>
    <div class="contenido col-xs-8">
        <span class="col-xs-12"><h1><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$publishedMonograph->getId()}">{$publishedMonograph->getLocalizedFullTitle()}</a></h1></span>
      <span class="autor col-xs-12"> {$publishedMonograph->getAuthorString()|escape}</span>
           
		<!--  {if $series}
                <span class="seriesLink col-xs-12"><strong>{translate key="series.series"}:</strong> <a href="{url page="catalog" op="unidades" path=$series->getPath()}">{$series->getLocalizedFullTitle()}</a></span>
            {/if}-->
                      {assign var=publicationFormats value=$publishedMonograph->getPublicationFormats(true)}
                        {assign var=viablePdfCount value=0}
                        {foreach from=$publicationFormats item=publicationFormat}
                            {if $publicationFormat->getIsApproved() && !$publicationFormat->getPhysicalFormat()}
                                {assign var="publicationFormatId" value=$publicationFormat->getId()}
                                {if !empty($availableFiles.$publicationFormatId)}
                                    {assign var=publicationFormatFiles value=$availableFiles.$publicationFormatId}
                                    {foreach from=$availableFiles.$publicationFormatId item=availableFile}
                                        {if $availableFile->getDocumentType()==$smarty.const.DOCUMENT_TYPE_PDF}
                                            {assign var=viablePdf value=$availableFile}
                                            {assign var=viablePublicationFormat value=$publicationFormat}a
                                            {assign var=viablePdfCount value=$viablePdfCount+1}
                                        {/if}
                                    {/foreach}
                                {/if}
                            {/if}
                        {/foreach}    
                        {* Get the ISBN *}
                         
               <span class="date col-xs-12">
                
            {assign var=fecha value=$publishedMonograph->getCoverageChron()}
            {foreach from=$fecha key=i item=row}
                {if $i == 'es_ES'}
                    {$row}
                {/if}
           {/foreach}
            </span>
        <span class="estrellas"></span>
       
    </div>
</li>
