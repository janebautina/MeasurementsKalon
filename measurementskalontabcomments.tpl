<strong>measurements</strong>
<div class="rte" id="myshow">
{if $measurements}
{foreach from=$measurements item=measurement}
		<div class="row">
			<div class="col-xs-4">
				<strong><p>Over Bust: {$measurement.over_bust} </p></strong>
			</div>
		</div>
		<div class="row"> 
			<div class="col-xs-4"><p><strong>Bust: {$measurement.bust}</strong></p></div> 
		</div>
		<div class="row"> 
			<div class="col-xs-4"><p><strong>Under Bust: {$measurement.under_bust}</strong></p></div> 
		</div>
		<div class="row"> 
			<div class="col-xs-4"><p><strong>Waist: {$measurement.waist}</strong></p></div>
		</div>
		<div class="row">  
			<div class="col-xs-4"><p><strong>High Hip: {$measurement.high_hip}</strong></p></div> 
		</div>
		<div class="row"> 
			<div class="col-xs-4"><p><strong>Hip: {$measurement.hip}</strong></p></div> 
		</div>
		<div class="row"> 
			<div class="col-xs-4"><p><strong>Height: {$measurement.height}</strong></p></div>
		</div> 
		<div class="submit">
		<button type="submit" id ="measurementskalon_edit" name="measurementskalon_edit" class="button btn btn-default button-small">
			<span> Edit My Measurements<i class="icon-chevron-right right"></i></span>
		</button>
	</div>
{/foreach}
</div>
