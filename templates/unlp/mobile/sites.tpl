<div class="col-md-12 johnny">
<<<<<<< Updated upstream
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Unidades Academicas
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                    <ul>
                        {iterate from=$browseSeries item=browseSeriesItem}ddddd
                            <li>
                                <a href="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="unidades" path=$browseSeriesItem->getPath()}"> 
                                    {$browseSeriesItem->getLocalizedTitle()|escape}
                                </a>
                            </li>    
                        {/iterate} 
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingTwo">
                <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Explore nuestras colecciones
                    </a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="panel-body">
                    <div class="row">
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/13-category.png" class="center-block"></img> <a href="#"><span class="mobile_texto center-block">Arte y Arquitectura</span></a></div>      
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/10-category.png"class="center-block"></img> <a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias Agropecuarias</span></a></div>
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/30-category.png"class="center-block"></img> <a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Comunicacion y medios</span></a></div>      
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="center-block"></img> <a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">ingenieria y tecnologia</span></a></div>      
                    </div>   


                    <div class="row">
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias Naturales</span></a></div>      
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias de la salud</span></a></div>
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/10-category.png" class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Ciencias de la Salud</span></a></div>      
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/13-category.png"class="center-block"></img><a href="#"><span class="mobile_texto center-block"><span class="mobile_texto">Derecho y Ciencias Politicas</span></a></div>
                    </div>


                    <div class="row">
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Viaje de negocios</span></a></div>      
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Arreglo de lamparas</span></a></div>   
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Lavado de pies</span></a></div>      
                        <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/30-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto"><span class="mobile_texto center-block">Ramon</span></a></div>   
                    </div>
                </div>
            </div>
        </div>
=======
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
         Unidades Academicas
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
       <ul>
    <li><a href="#">Facultad de Arquitectura y Urbanismo</a></li>
				<li><a href="#">Facultad de Bellas Artes</a></li>
				<li><a href="#">Facultad de Ciencias Agrarias y Forestales</a></li>
				<li><a href="#">Facultad de Ciencias Astron&oacute;micas y Geof&iacute;sicas</a></li>
				<li><a href="#">Facultad de Ciencias Econ&oacute;micas</a></li>
				<li><a href="#">Facultad de Ciencias Exactas</a></li>
				<li><a href="#">Facultad de Ciencias Jur&iacute;dicas y Sociales</a></li>
				<li><a href="#">Facultad de Ciencias M&eacute;dicas</a></li>
				<li><a href="#">Facultad de Ciencias Naturales y Museo</a></li>
				<li><a href="#">Facultad de Ciencias Veterinarias</a></li>
				<li><a href="#">Facultad de Humanidades y Ciencias de la Educaci&oacute;n</a></li>
				<li><a href="#">Facultad de Inform&aacute;tica</a></li>
				<li><a href="#">Facu3ltad de Ingenier&iacute;a</a></li>
				<li><a href="#">Facultad de Odontolog&iacute;a</a></li>
				<li><a href="#">Facultad de Periodismo y Comunicaci&oacute;n Social</a></li>
				<li><a href="#">Facultad de Psicolog&iacute;a</a></li>
				<li><a href="#">Facultad de Trabajo Social</a></li>
  </ul>
      </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Explore nuestras colecciones
        </a>
      </h4>
	      </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
 <div class="row">
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/13-category.png" class="center-block"></img> <a href="#"><span class="mobile_texto center-block">Arte y Arquitectura</span></a></div>      
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/10-category.png"class="img-responsive center-block"></img> <a href="#"><span class="mobile_texto center-block">Ciencias Agropecuarias</span></a></div>
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/30-category.png"class="img-responsive center-block"></img> <a href="#"><span class="mobile_texto center-block">Comunicacion y medios</span></a></div>      
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="img-responsive center-block"></img> <a href="#"><span class="mobile_texto center-block">ingenieria y tecnologia</span></a></div>      
</div>   


<div class="row">
 <div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Ciencias Naturales</span></a></div>      
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Ciencias de la salud</span></a></div>
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/10-category.png" class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Ciencias de la Salud</span></a></div>      
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/13-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Derecho y Ciencias Politicas</span></a></div>
</div>


<div class="row">
<div class="exploracion_mobile col-xs-3"><span class="center-block"><img src="http://163.10.34.211/files/presses/1/categories/7-category.png"class="img-responsive center-block"></img></span><span class="mobile_texto center-block"><a href="#"><span class="mobile_texto center-block">Viaje de negocios</a></span>
</div>      

<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/1-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Arreglo de lamparas</span></a></div>   
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/16-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Lavado de pies</span></a></div>      
<div class="exploracion_mobile col-xs-3"><img src="http://163.10.34.211/files/presses/1/categories/30-category.png"class="img-responsive center-block"></img><a href="#"><span class="mobile_texto center-block">Ramon</span></a></div>   
</div>
	</div>
>>>>>>> Stashed changes
    </div>
</div>



<!-- <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          Unidades Academicas
        </a>
      </h4>
    </div>
    <div id="collapseoNE" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <ul>
    <li><a href="#">Facultad de Arquitectura y Urbanismo</a></li>
                                <li><a href="#">Facultad de Bellas Artes</a></li>
                                <li><a href="#">Facultad de Ciencias Agrarias y Forestales</a></li>
                                <li><a href="#">Facultad de Ciencias Astron&oacute;micas y Geof&iacute;sicas</a></li>
                                <li><a href="#">Facultad de Ciencias Econ&oacute;micas</a></li>
                                <li><a href="#">Facultad de Ciencias Exactas</a></li>
                                <li><a href="#">Facultad de Ciencias Jur&iacute;dicas y Sociales</a></li>
                                <li><a href="#">Facultad de Ciencias M&eacute;dicas</a></li>
                                <li><a href="#">Facultad de Ciencias Naturales y Museo</a></li>
                                <li><a href="#">Facultad de Ciencias Veterinarias</a></li>
                                <li><a href="#">Facultad de Humanidades y Ciencias de la Educaci&oacute;n</a></li>
                                <li><a href="#">Facultad de Inform&aacute;tica</a></li>
                                <li><a href="#">Facultad de Ingenier&iacute;a</a></li>
                                <li><a href="#">Facultad de Odontolog&iacute;a</a></li>
                                <li><a href="#">Facultad de Periodismo y Comunicaci&oacute;n Social</a></li>
                                <li><a href="#">Facultad de Psicolog&iacute;a</a></li>
                                <li><a href="#">Facultad de Trabajo Social</a></li>
  </ul>
      </div>
    </div>
  </div>

  
  

  </div>
-->

</div>



<div class="col-md-12">
    <h1 class="h1sitios" >Sitios relacionados</h1>
    <div class="col-xs-4">
        <a href="http://sedici.unlp.edu.ar/" target="_blank"><img  src="/UNLP/images/link_relacionado_01_200.png" width="200" height="70" /></a>
    </div>
    <div class="col-xs-4">
        <a href="http://www.editorial.unlp.edu.ar/" target="_blank"><img  src="/UNLP/images/link_relacionado_05_200.png" width="200" height="76" /></a>
    </div>
    <div class="col-xs-4">
        <a href="http://prebi.unlp.edu.ar/" target="_blank"><img src="/UNLP/images/link_relacionado_03_200.png" width="200" height="61" /></a>
    </div>
    <!-- No deber�a ir 
     <div class="col-xs-3">
            <a href="http://www.unlp.edu.ar/" target="_blank"><img class="img-responsive" src="/UNLP/images/link_relacionado_04_200.png" width="200" height="74" /></a>
        </div> -->
</div>

