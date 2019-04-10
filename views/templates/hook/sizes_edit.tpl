
<form method="post" class="form-horizontal" action="{$link->getAdminLink('AdminModules', false)}&token={$token}&configure=mslider&module_name=mslider">
	<input type="hidden" name="MSLIDER_ID_SIZE" value="{$size->id}" />
	<div class="panel">
		<h3><i class="icon-pencil"></i> {l s='Edit size' mod='mslider'}</h3>
		<div class="form-wrapper">
			<div class="form-group">
				<label class="control-label col-lg-3">{l s='Width' mod='mslider'}</label>
				<div class="col-lg-3">
					<input type="text" name="MSLIDER_WIDTH" id="MSLIDER_WIDTH" value="{$size->width}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-3">{l s='Height' mod='mslider'}</label>
				<div class="col-lg-3">
					<input type="text" name="MSLIDER_HEIGHT" id="MSLIDER_HEIGHT" value="{$size->height}">
					<p class="help-block">{l s='Set 0 to auto height' mod='mslider'}</p>
				</div>
			</div>
		</div>
		<div class="panel-footer">	
			<button type="submit" value="1" name="updateSlideSize" class="btn btn-default pull-right">
				<i class="process-icon-save"></i> {l s='Save' mod='mslider'}
			</button>
		</div>
	</div>
<form>