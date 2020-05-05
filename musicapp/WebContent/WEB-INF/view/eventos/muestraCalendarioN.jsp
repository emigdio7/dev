<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon.png">
    <title>Vela Music</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Footable CSS -->
    <link rel="stylesheet" type="text/css" href="../assets/plugins/calendar/dist/fullcalendar.min.css">
	
    <!-- Custom CSS -->
<!--     <link href="../css/helper.css" rel="stylesheet"> -->
    <link href="../css/style.css" rel="stylesheet">
<!--     <link href="../css/icons/flag-icon-css/flag-icon.min.css" rel="stylesheet"> -->
    
    <!-- You can change the theme colors from here -->
    <link href="../css/blue.css" id="theme" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>


<body class="fix-header fix-sidebar card-no-border" style="">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader" style="display: none;">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"></circle> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <!-- header header  -->
        <jsp:include page="../headBody.jsp" />

        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->

        <!-- Left Sidebar  -->
        <jsp:include page="../menuIzq.jsp" />

        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 800px;">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                
                <!-- barra Head -->
                <jsp:include page="../barraHead.jsp" />

                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Arrastre y suelte su evento</h4>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div id="calendar-events" class="m-t-20">
                                            <div class="calendar-events" data-class="bg-info">
                                                <i class="fa fa-circle text-info"></i> Sonora Santanera</div>
                                            <div class="calendar-events" data-class="bg-success">
                                                <i class="fa fa-circle text-success"></i> Mariachi</div>
                                            <div class="calendar-events" data-class="bg-danger">
                                                <i class="fa fa-circle text-danger"></i> Banda La arrolladora</div>
                                            <div class="calendar-events" data-class="bg-warning">
                                                <i class="fa fa-circle text-warning"></i> Baile Santander</div>
                                        </div>
                                        <!-- checkbox -->
                                        <div class="checkbox">
                                            <input id="drop-remove" type="checkbox">
                                            <label for="drop-remove">
                                                Remueve despues de Borrar 
                                            </label>
                                        </div>
                                        <a href="#" data-toggle="modal" data-target="#add-new-event" class="btn btn-lg m-t-40 btn-danger btn-block waves-effect waves-light">
                                            <i class="ti-plus"></i> Agrega nuevo evento
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-body">
                                <div id="calendar"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- BEGIN MODAL -->
                <div class="modal none-border" id="my-event">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">
                                    <strong>Agregar Evento</strong>
                                </h4>
                            </div>
                            <div class="modal-body"></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Crear evento</button>
                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Borrar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Add Category -->
                <div class="modal fade none-border" id="add-new-event">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">
                                    <strong>Agrega</strong> una categoria</h4>
                            </div>
                            <div class="modal-body">
                                <form role="form">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="control-label">Nombre de la categoria</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Elija el color del evento</label>
                                            <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                <option value="success">Success</option>
                                                <option value="danger">Danger</option>
                                                <option value="info">Info</option>
                                                <option value="primary">Primary</option>
                                                <option value="warning">Warning</option>
                                                <option value="inverse">Inverse</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Guardar</button>
                                <button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MODAL -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">
                © 2019 Production Vela Music
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
<!--  	<script src="../assets/plugins/calendar/dist/lib/jquery.min.js"></script> -->
 	<script src="../assets/plugins/jquery/jquery.min.js"></script>
<!--  	<script src="../assets/plugins/calendar/dist/lib/jquery-ui.min.js"></script> -->
 	<script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
 	
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/plugins/popper/popper.min.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="../js/custom.min.js"></script>
    <!-- Calendar JavaScript -->
<!--     <script src="../assets/plugins/calendar/dist/jquery-ui.custom.min.js"></script> -->
<!--     <script src="../assets/plugins/calendar/dist/lib/moment.min.js"></script> -->
<!--     <script src='../assets/plugins/calendar/dist/fullcalendar.js'></script> -->
    
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
    <script src="../assets/plugins/calendar/dist/lib/moment.min.js"></script>
    <script src='../assets/plugins/calendar/dist/fullcalendar.min.js'></script>
<!--     <script src="../assets/plugins/calendar/dist/cal-init.js"></script> -->
    
    <script src="../assets/plugins/calendar/dist/locale-all.js"></script>
<!--     <script src='../assets/plugins/calendar/dist/lang/es.js'></script> -->
    
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
    
<!--     <script src="../../js/plugins/footable/js/footable.min.js"></script> -->
-     <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script> -->
    <!--FooTable init-->
<!--     <script src="../../js/footable-init.js"></script> -->
    
<script type="text/javascript">
!function($) {
    "use strict";

    var CalendarApp = function() {
        this.$body = $("body")
        this.$calendar = $('#calendar'),
        this.$event = ('#calendar-events div.calendar-events'),
        this.$categoryForm = $('#add-new-event form'),
        this.$extEvents = $('#calendar-events'),
        this.$modal = $('#my-event'),
        this.$saveCategoryBtn = $('.save-category'),
        this.$calendarObj = null
    };


    /* on drop */
    CalendarApp.prototype.onDrop = function (eventObj, date) { 
    	alert ('en insertar evento');
        var $this = this;
            // retrieve the dropped element's stored Event Object
            var originalEventObject = eventObj.data('eventObject');
            var $categoryClass = eventObj.attr('data-class');
            // we need to copy it, so that multiple events don't have a reference to the same object
            var copiedEventObject = $.extend({}, originalEventObject);
            // assign it the date that was reported
            copiedEventObject.start = date;
            if ($categoryClass)
                copiedEventObject['className'] = [$categoryClass];
            // render the event on the calendar
            $this.$calendar.fullCalendar('renderEvent', copiedEventObject, true);
            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
                // if so, remove the element from the "Draggable Events" list
                eventObj.remove();
            }
    },
    /* on click on event */
    CalendarApp.prototype.onEventClick =  function (calEvent, jsEvent, view) {
    	alert('cambiar nombre a evento');
        var $this = this;
            var form = $("<form></form>");
            form.append("<label>Cambiar nombre a un evento</label>");
            form.append("<div class='input-group'><input class='form-control' type=text value='" + calEvent.title + "' /><span class='input-group-btn'><button type='submit' class='btn btn-success waves-effect waves-light'><i class='fa fa-check'></i> Guardar</button></span></div>");
            $this.$modal.modal({
                backdrop: 'static'
            });
            $this.$modal.find('.delete-event').show().end().find('.save-event').hide().end().find('.modal-body').empty().prepend(form).end().find('.delete-event').unbind('click').click(function () {
                $this.$calendarObj.fullCalendar('removeEvents', function (ev) {
                    return (ev._id == calEvent._id);
                });
                $this.$modal.modal('hide');
            });
            $this.$modal.find('form').on('submit', function () {
                calEvent.title = form.find("input[type=text]").val();
                $this.$calendarObj.fullCalendar('updateEvent', calEvent);
                $this.$modal.modal('hide');
                return false;
            });
    },
    /* on select */
    CalendarApp.prototype.onSelect = function (start, end, allDay) {
    	alert ('creo al abrir modal');
        var $this = this;
            $this.$modal.modal({
                backdrop: 'static'
            });
            var form = $("<form></form>");
            form.append("<div class='row'></div>");
            form.find(".row")
                .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Nombre del Evento</label><input class='form-control' placeholder='Teclee nombre del Evento' type='text' name='title'/></div></div>")
                .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Tipo</label><select class='form-control' name='category'></select></div></div>")
                .find("select[name='category']")
                .append("<option value='bg-danger'>Danger</option>")
                .append("<option value='bg-success'>Success</option>")
                .append("<option value='bg-purple'>Purple</option>")
                .append("<option value='bg-primary'>Primary</option>")
                .append("<option value='bg-pink'>Pink</option>")
                .append("<option value='bg-info'>Info</option>")
                .append("<option value='bg-warning'>Warning</option></div></div>");
            
            $this.$modal.find('.delete-event').hide().end().find('.save-event').show().end().find('.modal-body').empty().prepend(form).end().find('.save-event').unbind('click').click(function () {
                form.submit();
            });
            $this.$modal.find('form').on('submit', function () {
                var title = form.find("input[name='title']").val();
                var beginning = form.find("input[name='beginning']").val();
                var ending = form.find("input[name='ending']").val();
                var categoryClass = form.find("select[name='category'] option:checked").val();
                if (title !== null && title.length != 0) {
                    $this.$calendarObj.fullCalendar('renderEvent', {
                        title: title,
                        start:start,
                        end: end,
                        allDay: false,
                        className: categoryClass
                    }, true);  
                    $this.$modal.modal('hide');
                }
                else{
                    alert('Tienes que teclear un titulo al Evento');
                }
                return false;
                
            });
            $this.$calendarObj.fullCalendar('unselect');
    },
    CalendarApp.prototype.enableDrag = function() {
        //init events
        alert ('en CalendarApp.prototype.enableDrag');
        $(this.$event).each(function () {
            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };
            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);
            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });
        });
    }
    /* Initializing */
    CalendarApp.prototype.init = function() {
    	alert('inicializa Calendario');
        this.enableDrag();
        /*  Initialize the calendar  */
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var form = '';
        var today = new Date($.now());

        var defaultEvents =  [
        	  {
        		    "id": "0001",
        		    "owner": "1032",
        		    "title": "Conference Data other other Bases",
        		    "start": "2019-08-03",
        		    "backgroundColor": "#717070",
        		    "borderColor": "#717070"
        		  },
        		  {
        		    "id": "0002",
        		    "owner": "2032",
        		    "title": "Long Event",
        		    "start": "2019-08-15",
        		    "end": "2019-08-16"
        		  },
        		  {
        		    "id": "999",
        		    "owner": "3032",
        		    "title": "Repeating Event",
        		    "start": "2019-08-09T16:00:00-05:00"
        		  },
        		  {
        		    "id": "0003",
        		    "title": "Repeating Event",
        		    "start": "2019-08-17T16:00:00-05:00"
        		  },
        		  {
        		    "title": "Conference",
        		    "start": "2019-08-11",
        		    "end": "2019-08-13"
        		  },
        		  {
        		    "title": "Meeting in bucks restarurant prime",
        		    "start": "2018-0805T10:30:00-05:00",
        		    "end": "2019-08-05T12:30:00-05:00"
        		  },
        		  {
        		    "title": "Lunch",
        		    "start": "2019-08-12T12:00:00-05:00"
        		  },
        		  {
        		    "title": "Meeting",
        		    "start": "2016-08-12T14:30:00-05:00"
        		  },
        		  {
        		    "title": "Happy Hour",
        		    "start": "2019-08-12T17:30:00-05:00"
        		  },
        		  {
        		    "title": "Dinner",
        		    "start": "2019-08-12T20:00:00"
        		  },
        		  {
        		    "title": "Birthday Party",
        		    "start": "2019-08-13T07:00:00-05:00"
        		  },
        		  {
        		    "title": "Click for Google",
        		    "url": "http://google.com/",
        		    "start": "2019-08-28"
        		  }
        		];

        var $this = this;
        $this.$calendarObj = $this.$calendar.fullCalendar({
            slotDuration: '00:15:00', /* If we want to split day time each 15minutes */
            minTime: '08:00:00',
            maxTime: '19:00:00',  
            defaultView: 'month',  
            handleWindowResize: true,   
             
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            events: defaultEvents,
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            eventLimit: true, // allow "more" link when too many events
            selectable: true,
            locale: 'es',
            drop: function(date) { $this.onDrop($(this), date);   },
            select: function (start, end, allDay) { $this.onSelect(start, end, allDay);  },
            eventClick: function(calEvent, jsEvent, view) { $this.onEventClick(calEvent, jsEvent, view); }
            /*eventDrop: function(event, delta, revertFunc) {

                alert(event.title + " was dropped on " + event.start.format());

                if (!confirm("Are you sure about this change?")) {
                  revertFunc();
                }

              }*/
        });

        //on new event
        this.$saveCategoryBtn.on('click', function(){
        	alert('agregar un evento');
            var categoryName = $this.$categoryForm.find("input[name='category-name']").val();
            var categoryColor = $this.$categoryForm.find("select[name='category-color']").val();
            if (categoryName !== null && categoryName.length != 0) {
                $this.$extEvents.append('<div class="calendar-events" data-class="bg-' + categoryColor + '" style="position: relative;"><i class="fa fa-circle text-' + categoryColor + '"></i>' + categoryName + '</div>')
                $this.enableDrag();
            }

        });
    },

   //init CalendarApp
    $.CalendarApp = new CalendarApp, $.CalendarApp.Constructor = CalendarApp
    
}(window.jQuery),

//initializing CalendarApp
function($) {
    "use strict";
    $.CalendarApp.init()
}(window.jQuery);
</script>

</body></html>