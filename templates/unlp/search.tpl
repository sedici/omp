{**
* templates/header/search.tpl
*
* Copyright (c) 2014 Simon Fraser University Library
* Copyright (c) 2003-2014 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Common search box.
*}
<script type="text/javascript">
    $(function () {ldelim}
            $('#topSearchFormField').jLabel();
    {rdelim});
</script>

<div class="pkp_structure_search pkp_helpers_align_right">
    <form id="topSearchForm" action="{url router=$smarty.const.ROUTE_PAGE page="catalog" op="results"}" method="post">
        <fieldset>
            <!--<select name ="radiobutton" id="radiobutton">
                <option value="todo"		 selected="selected">Todo</option>
                <option  value="title"		>T&iacute;tulo</option>
                <option  value="authors"		>Autor</option>
                <option  value="capitulo"	>Cap&iacute;tulo</option>
                <option  value="subject"	>Palabras clave</option>
                <option  value="abstract"	>Resumen</option>
            </select>	
-->
            <input id="topSearchFormField" name="query" value="{$searchQuery|escape}" type="text" />
            <button class="go">{translate key="common.search"}</button>
        </fieldset>
    </form>
</div>
