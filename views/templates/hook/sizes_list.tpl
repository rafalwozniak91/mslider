<div class="panel">
	<h3><i class="icon-list-ul"></i> {l s='Sizes' mod='mslider'}
	<span class="panel-heading-action">
		<a id="desc-product-new" class="list-toolbar-btn" href="{$link->getAdminLink('AdminModules')}&configure=mslider&module_name=mslider&addSize=1">
			<span title="" data-toggle="tooltip" class="label-tooltip" data-original-title="{l s='Add new' mod='mslide'}" data-html="true">
				<i class="process-icon-new "></i>
			</span>
		</a>
	</span>
	</h3>
	<div class="table-respnsive">
		<table class="table">
		<thead>
			<tr class="nodrag nodrop">
				<th class=""><span class="title_box">{l s='ID' mod='mslide'}</span></th>
				<th class=""><span class="title_box">{l s='Width' mod='mslide'}</span></th>
				<th class=""><span class="title_box">{l s='Height' mod='mslide'}</span></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			{foreach from=$sizes item=size}
			<tr>
				<td>{$size.id_size}</td>
				<td>{$size.width}{l s='px' mod='mslide'}</td>
				<td>
					{if $size.height}
						{$size.height}{l s='px' mod='mslide'}
					{else}
						{l s='Auto' mod='mslide'}
					{/if}
				</td>
				<td>
					<div class="btn-group-action pull-right">
						<a class="btn btn-default"
							href="{$link->getAdminLink('AdminModules')}&configure=mslider&editSize=1&id_size={$size.id_size}">
							<i class="icon-edit"></i>
							{l s='Edit' mod='mslide'}
						</a>
						<a class="btn btn-default"
							href="{$link->getAdminLink('AdminModules')}&configure=mslider&deleteSize=1&id_size={$size.id_size}"
							onclick="confirmDelete()">
							<i class="icon-trash"></i>
							{l s='Delete' mod='mslide'}
						</a>
					</div>
				</td>
			</tr>
			{/foreach}

		</tbody>
		</table>

	</div>

</div>


<script type="text/javascript">

	function confirmDelete() {
		if(confirm('{l s='Are you sure you want to delete this slider size?' mod='mslider'}')) {
			return true;
		} else {
			event.stopPropagation(); 
			event.preventDefault();
		}
	}

</script>