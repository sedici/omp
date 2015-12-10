{foreach from=$availableFiles[$publicationFormatId] item=availableFile}{* There will be at most one of these *}
	<li>
  
            <div class="publicationFormatLink">
			{if $availableFile->getDocumentType()==$smarty.const.DOCUMENT_TYPE_PDF}
				{url|assign:downloadUrl op="view_mobile" path=$publishedMonograph->getId()|to_array:$publicationFormatId:$availableFile->getFileIdAndRevision()}
			{else}
				{url|assign:downloadUrl op="download" path=$publishedMonograph->getId()|to_array:$publicationFormatId:$availableFile->getFileIdAndRevision()}
			{/if}
                        

			<a class="publicationFormatLink glyphicon glyphicon-download" href="{$downloadUrl}"> <br/><span class="textodescarga">Descargar </span></a>

    </div>
 

	</li>
{/foreach}
