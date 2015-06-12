{**
* templates/catalog/monograph.tpl
*
* Copyright (c) 2014 Simon Fraser University Library
* Copyright (c) 2003-2014 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Display a public-facing monograph in the catalog.
*}

<li>
    <div class="portada">
        <a href="{url page="catalog" op="book" path=$publishedMonograph->getId()}">
            {include file="controllers/monographList/coverImage.tpl" monograph=$publishedMonograph}
        </a>
    </div>
    <div class="contenido">
        <h1><a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$publishedMonograph->getId()}">{$publishedMonograph->getLocalizedFullTitle()}</a></h1>
        <p> {$publishedMonograph->getAuthorString()|escape}
            <br />
             {if $series}
                <div class="seriesLink"><strong>{translate key="series.series"}:</strong> <a href="{url page="catalog" op="unidades" path=$series->getPath()}">{$series->getLocalizedFullTitle()}</a></div>
                <br/>
            {/if}
        
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
                                            {assign var=viablePublicationFormat value=$publicationFormat}
                                            {assign var=viablePdfCount value=$viablePdfCount+1}
                                        {/if}
                                    {/foreach}
                                {/if}
                            {/if}
                        {/foreach}    
                        {* Get the ISBN *}
                         
            <span class="date">{$publishedMonograph->getDatePublished()|date_format:$dateFormatShort}<br /></span>
            <br />
        <div class="estrellas"></div>
        <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$publishedMonograph->getId()}">Ver libro </a>
    </div>
</li>
