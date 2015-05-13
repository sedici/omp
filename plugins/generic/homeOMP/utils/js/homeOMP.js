/**
 * statsAdmin.js
 *
 * Copyright (c) Sobrado Ariel
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 */
$(document).ready(function() {
    /*
     *  @TODO  traducir a ingles 
     *  function(updateStatsJournal) agrega/elimina una revista de la configuracion de una estadistica
     */
    var updateStatsJournal = function(event) {
        var check = $(this).attr("checked") == true ? 1 : 2;
        var stats = $(this).attr("stats");
        var journal = $(this).attr("journal");
        var realData = {'ajax': check, 'journalId': journal, 'statsId': stats};
        $("#display_loading_" + journal).attr('style', '');
        $("#display_success_" + journal).attr('style', 'display:none');
        $.ajax({
            url: 'updateStatsJournal',
            data: realData,
            type: 'POST',
            success: function(result) {
                $("#display_loading_" + journal).attr('style', 'display:none');
                $("#display_success_" + journal).attr('style', '');
            }
        });
    };
    /*
     * @TODO  traducir a ingles 
     *  function(updateStatsEnabled) configura si una estadistica se muestra en el dashBoard
     */
    var updateStatsEnabled = function(event) {
        var check = $(this).attr("checked") == true ? 1 : 2;
        var stats = $(this).attr("stats");
        var realData = {'ajax': check, 'statsId': stats};
        $("#display_loading_" + stats).attr('style', '');
        $("#display_success_" + stats).attr('style', 'display:none');
        $.ajax({
            url: 'updateStatsEnabled',
            data: realData,
            type: 'POST',
            success: function(result) {
                $("#display_loading_" + stats).attr('style', 'display:none');
                $("#display_success_" + stats).attr('style', '');
            }
        });
    };
    /*
     * @TODO  traducir a ingles 
     *  function(updateDefaultValue) configura el valor por defecto de los campos de una estadisticas
     */
    var updateDefaultValue = function(event) {
        var field = $(this).attr("field_value");
        var field_id = $(this).attr("field_id");
        var stats_id = $(this).attr("stats_id");
        var field_new = $('#valueField' + field_id).val();
        if (field != field_new) {
            var realData = {'field_id': field_id, 'stats_id': stats_id, valueField: field_new};
            $("#display_loading_" + field_id).attr('style', '');
            $("#display_success_" + field_id).attr('style', 'display:none');
            $.ajax({
                url: 'updateDefaultValue',
                data: realData,
                type: 'POST',
                success: function(result) {
                    $("#display_loading_" + field_id).attr('style', 'display:none');
                    $("#display_success_" + field_id).attr('style', '');
                }
            });
        }

    };
    /*
     * @TODO  traducir a ingles 
     *  function(updateStateEnabled) configura si la estadistica permite configurarle estados o no
     */
    var updateStateEnabled = function(event) {
        var check = $(this).attr("checked") == true ? 1 : 2;
        var stats = $(this).attr("stats");
        var realData = {'ajax': check, 'statsId': stats};
        $("#display_loading_state_" + stats).attr('style', '');
        $("#display_loading_state_" + stats).attr('style', 'display:none');
        $.ajax({
            url: 'updateStateEnabled',
            data: realData,
            type: 'POST',
            success: function(result) {
                $("#display_loading_state_" + stats).attr('style', 'display:none');
                $("#display_success_state_" + stats).attr('style', '');
            }
        });
    };

    /*
     *  @TODO  traducir a ingles 
     *  function(updateStateStats) agregar/eliminar  estados en la configuracion de una estadistica, solo se usa si state_enableb=true
     */
    var updateStateStats = function(event) {
        var check = $(this).attr("checked") == true ? 1 : 2;
        var stats = $(this).attr("stats_id");
        var state = $(this).attr("state_id");

        var realData = {'ajax': check, 'statsId': stats, 'stateId': state};
        $("#display_loading_state_" + state).attr('style', '');
        $("#display_loading_state_" + state).attr('style', 'display:none');
        $.ajax({
            url: 'updateStateStats',
            data: realData,
            type: 'POST',
            success: function(result) {
                $("#display_loading_state_" + state).attr('style', 'display:none');
                $("#display_success_state_" + state).attr('style', '');
            }
        });
    };
    /*
     * Eventos de las vista que hacen diferentes cosas
     * 
     */
    $(".AssociateJournal").click(updateStatsJournal);
    $(".stats_available").click(updateStatsEnabled);
    $(".updateDefaultValue").blur(updateDefaultValue);
    $(".state_enabled").click(updateStateEnabled);
    $(".updateStateStats").click(updateStateStats);




}) 