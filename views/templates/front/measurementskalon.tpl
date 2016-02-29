<h1 class="page-heading">"{$id_customer}" My Measurements </h1>
<div class="rte" id="myshow">
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
<div id="myform">
<h3> Please enter your measurements:</h3>
<div class="rte"> 
<form action="" method="post" id="measurements-form">
	<div class="form-group">
		<div class="row">
		<div class="col-xs-2">
		<label for="over_bust"> Over Bust: </label></div>
			<div class="col-xs-5">
				<input id="over_bust" name="over_bust" value="0.00" type="number" class="form-control" min="0.01" max="50" step="0.01">
			</div>
			<div class="col-xs-5">
		<label for="over_bust"> inches </label></div>
	    </div>
	 </div>
    <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
		<label for="bust"> Bust: </label></div>
			<div class="col-xs-5">
				<input id="bust" name="bust" value="0.00" type="number" class="form-control" min="0.01" max="50" step="0.01"></div>
			<div class="col-xs-5">
				<label for="bust"> inches</label>
			</div>
	    </div>
	</div>
	<div class="form-group">
		<div class="row">
			<div class="col-xs-2">
			<label for="under_bust"> Under Bust: </label></div>
			<div class="col-xs-5">
				<input id="under_bust" name="under_bust" value="0.00" type="number" class="form-control" min="0.01" max="50" step="0.01">
			</div>
			<div class="col-xs-5">
				<label for="bust"> inches</label>
			</div>
	    </div>
	 </div>
	 <div class="form-group">
		<div class="row">
			<div class="col-xs-2">
				<label for="waist"> Waist: </label></div>
			<div class="col-xs-5">
				<input id="waist" name="waist" value="0.00" type="number" class="form-control" min="0.01" max="100" step="0.01">
			</div>
			<div class="col-xs-5">
				<label for="bust"> inches</label>
			</div>

	    </div>
	 </div>
	 <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
			<label for="high_hip"> High Hip: </label>
		</div>
			<div class="col-xs-5">
				<input id="high_hip" name="high_hip" value="0.00" type="number" class="form-control" min="0.01" max="100" step="0.01">
	   		 </div>
	   		<div class="col-xs-5"> 
	   			<label for="bust"> inches</label>
	   		</div>
	   		</div>
	 </div>
	 <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
		<label for="hip"> Hip: </label></div>
			<div class="col-xs-5">
				<input id="hip" name="hip" value="0.00" type="number" class="form-control" min="0.01" max="100" step="0.01">
			</div>
		<div class="col-xs-5">
			<label for="bust"> inches</label>
		</div>
	    </div>
	 </div>
	 <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
				<label for="height"> Height: </label></div>

			<div class="col-xs-5">
				<input id="height" name="height" value="0.00" type="number" class="form-control" min="0.01" max="200" step="0.01">
			</div>
			<div class="col-xs-5">
				<label for="bust"> inches</label>
			</div>
	    </div>
	 </div>
	<div class="submit">
		<button type="submit" id="measurementskalon_submit" name="measurementskalon_submit" class="button btn btn-default button-small">
			<span> Submit My Measurements<i class="icon-chevron-right right"></i></span>
		</button>
	</div>
</form>
</div>
</div>
