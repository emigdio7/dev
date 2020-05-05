<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal none-border show" id="add-evento" aria-modal="true"
		style="padding-right: 15px; display: block;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="mdi mdi-account-check"></i>
					</button>
					<h4 class="modal-title">
						<strong>Crear Evento</strong>
					</h4>
				</div>
				<div class="modal-body">
					<div class="card card-outline-info">
						<div class="card-header">
							<h4 class="m-b-0 text-white"></h4>
						</div>
						<div class="card-body">
							<h4 class="card-title">Información del Evento</h4>
							<h6 class="card-subtitle">
								Teclee los datos del
								<code>Evento</code>
								a dar de Alta.
							</h6>
							<form method="POST" action="guardaEventoNuevo" name="eventoForm"
								class="form-horizontal">
								<div class="row">
									<div class="col-md-6">
										<label class="m-t-20">Grupo</label>
										<div class="input-group ">
											<input type="text" class="form-control" id="grupoE"
												name="grupo" value="">
										</div>
										<label class="m-t-20">Anticipo</label>
										<div class="input-group ">
											<input type="text" class="form-control" name="anticipo"
												id="anticipoE" value="" placeholder="$0.0">
										</div>
									</div>
									<div class="col-md-6">
										<label class="m-t-20">Contrato</label>
										<div class="input-group">
											<input type="text" class="form-control" name="contrato"
												id="contratoE" value="" placeholder="Contrato">
										</div>
										<label class="m-t-20">Restante</label>
										<div class="input-group">
											<input type="text" class="form-control" name="restante"
												id="restanteE" value="" placeholder="$0.0">
										</div>
									</div>
									<div class="col-md-6">
										<label class="m-t-20">Telefono de Contacto</label>
										<div class="input-group ">
											<input type="text" class="form-control" name="telefono"
												id="telefonoE" value="" placeholder="(777) - 0 00 00 00">
										</div>
										<label class="m-t-20">Hora Inicio</label>
										<div class="input-group clockpicker data-placement="
											bottom'="" data-align="top" data-autoclose="true"'="">
											<input type="text" class="form-control" value="12:00"
												name="horaInicio" id="horaInicioE">
											<div class="input-group-append">
												<span class="input-group-text"> <i
													class="far fa-clock"></i></span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<label class="m-t-20">Fecha</label>
										<div class="input-group">
											<input type="text" class="form-control mydatepicker"
												name="fechaEvento" id="fechaE" placeholder="dd/mm/yyyy">
											<div class="input-group-append">
												<span class="input-group-text"> <i
													class="icon-calender"></i></span>
											</div>
										</div>
										<label class="m-t-20">Hora fin</label>
										<div class="input-group clockpicker " data-placement="bottom"
											data-align="top" data-autoclose="true">
											<input type="text" class="form-control" value="12:00"
												id="horaFinE" name="horaFin">
											<div class="input-group-append">
												<span class="input-group-text"><i
													class="far fa-clock"></i> </span>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<label class="m-t-20">Lugar del Evento</label>
										<div class="input-group">
											<input type="text" class="form-control" name="lugarEvento"
												id="lugarEventoE" value="">
										</div>
									</div>
									<div class="col-md-4">
										<label class="m-t-20">Camioneta</label>
										<div class="input-group">
											<input type="text" class="form-control" id="camionetaE"
												name="camioneta" value="">
										</div>
									</div>
									<div class="col-md-4">
										<label class="m-t-20">Tipo del Evento</label>
										<div class="input-group">
											<input type="text" class="form-control" id="tipoEventoE"
												value="" name="tipoEvento">
										</div>
									</div>
									<div class="col-md-4">
										<label class="m-t-20">Chofer:</label>
										<div class="input-group">
											<input type="text" class="form-control" id="choferE" value=""
												name="chofer">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-success save-event waves-effect waves-light">Crear evento</button>
					<button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal" style="display: none;">Borrar</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>