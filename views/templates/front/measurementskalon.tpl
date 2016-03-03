<h1 class="page-heading">"{$id_customer}" My Measurements </h1>
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
{/if}
{if !$measurements}
<div id="newmeasurements">
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
				<label for="under_bust"> inches</label>
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
				<label for="waist"> inches</label>
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
	   			<label for="high_hip"> inches</label>
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
			<label for="hip"> inches</label>
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
				<label for="height"> inches</label>
			</div>
	    </div>
	 </div>
	 <div class="form-group">
	 	<div class="row">
			<div class="col-xs-12">
				<p>Show measurements in comments <input type="checkbox" name="yesmeasurementssubmit" value="1" checked> </p>
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
{/if}
{if $measurements}
{foreach from=$measurements item=measurement}
<div id="editmeasurements">
<h3> Please enter your new measurements:</h3>
<div class="rte"> 
<form action="" method="post" id="edit-measurements-form">
	<div class="form-group">
		<div class="row">
		<div class="col-xs-2">
		<label for="over_bust_edit"> Over Bust: </label></div>
			<div class="col-xs-5">
				<input id="over_bust_edit" name="over_bust_edit" value="{$measurement.over_bust}" type="number" class="form-control" min="0.01" max="50" step="0.01">
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
				<input id="bust_edit" name="bust_edit" value="{$measurement.bust}" type="number" class="form-control" min="0.01" max="50" step="0.01"></div>
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
				<input id="under_bust_edit" name="under_bust_edit" value="{$measurement.under_bust}" type="number" class="form-control" min="0.01" max="50" step="0.01">
			</div>
			<div class="col-xs-5">
				<label for="under_bust"> inches</label>
			</div>
	    </div>
	 </div>
	 <div class="form-group">
		<div class="row">
			<div class="col-xs-2">
				<label for="waist"> Waist: </label></div>
			<div class="col-xs-5">
				<input id="waist_edit" name="waist_edit" value="{$measurement.waist}" type="number" class="form-control" min="0.01" max="100" step="0.01">
			</div>
			<div class="col-xs-5">
				<label for="waist"> inches</label>
			</div>

	    </div>
	 </div>
	 <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
			<label for="high_hip"> High Hip: </label>
		</div>
			<div class="col-xs-5">
				<input id="high_hip_edit" name="high_hip_edit" value="{$measurement.high_hip}" type="number" class="form-control" min="0.01" max="100" step="0.01">
	   		 </div>
	   		<div class="col-xs-5"> 
	   			<label for="high_hip"> inches</label>
	   		</div>
	   		</div>
	 </div>
	 <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
		<label for="hip"> Hip: </label></div>
			<div class="col-xs-5">
				<input id="hip_edit" name="hip_edit" value="{$measurement.hip}" type="number" class="form-control" min="0.01" max="100" step="0.01">
			</div>
		<div class="col-xs-5">
			<label for="hip_edit"> inches</label>
		</div>
	    </div>
	 </div>
	 <div class="form-group">
		<div class="row">
		<div class="col-xs-2">
				<label for="height"> Height: </label></div>

			<div class="col-xs-5">
				<input id="height_edit" name="height_edit" value="{$measurement.height}" type="number" class="form-control" min="0.01" max="200" step="0.01">
			</div>
			<div class="col-xs-5">
				<label for="height"> inches</label>
			</div>
	    </div>
	 </div>
	 <div class="form-group">
	 	<div class="row">
			<div class="col-xs-12">
				<p>Show measurements in comments <input type="checkbox" name="yesmeasurementsedit" value="1" checked> </p>
			</div>
		</div>
	 </div>
{/foreach}
	<div class="submit">
		<button type="submit" id="measurementskalon_edit_submit" name="measurementskalon_edit_submit" class="button btn btn-default button-small">
			<span> Submit My New Measurements<i class="icon-chevron-right right"></i></span>
		</button>
	</div>
</form>
</div>
</div>
{/if}

