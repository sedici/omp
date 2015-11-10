<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



<div class="col-md-12">

  <!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">-->
	 <div id="myCarousel" class="carousel slide" > 
	
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>  
        </ol>

        <div class="carousel-inner">
            {assign var="active" value=true}
                
            {foreach from=$publishedMonographsCarousel item=publishedMonograph}
                {assign var="submissionId" value=$publishedMonograph->getId()}
                
                {if isset($featuredMonographIds[$submissionId])}
                    {assign var="estilo" value=''}
                
                    {if ($active)}
                        {assign var="estilo" value='active'}
                       {assign var="active" value=false} 
                    {/if}  
                    <div class="item {$estilo}"> 
                        <div class="container paneles col-xs-12">
                            <div class="col-xs-5 ">
                                <img src="{url router=$smarty.const.ROUTE_COMPONENT component="submission.CoverHandler" op="catalog"   submissionId=$publishedMonograph->getId() random=$publishedMonograph->getId()|uniqid}"  width="135" alt="{$publishedMonograph->getLocalizedFullTitle()|strip_tags|escape}" data-caption="#publishedMonograph-{$submissionId}-caption"/>
                            </div>
                            <div class="titulo_slider col-xs-7">
                                 <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="book" path=$submissionId}"><h1>{$publishedMonograph->getLocalizedFullTitle()|strip_unsafe_html}</h1></a>
                                <p><strong>Autor:</strong> {$publishedMonograph->getAuthorString()|escape}</p>
                            							</div>

                        </div>
                    </div>

                {/if}
            {/foreach}

        </div> 
    </div>


    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
