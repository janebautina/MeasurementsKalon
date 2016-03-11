


{if $measurements}
{foreach from=$measurements item=measurement}
{if $measurement.isChecked}
<div id="myshow">
    <p style="font-size:90%; color:black; margin:0px;">Measurements:</p>
	<p style="font-size:85%; color:black; margin:0px;">Over Bust: {$measurement.over_bust} in</p>
    <p style="font-size:85%; color:black; margin:0px;">Bust: {$measurement.bust} in</p> 
	<p style="font-size:85%; color:black; margin:0px;">Under Bust: {$measurement.under_bust} in</p>
    <p style="font-size:85%; color:black; margin:0px;">Waist: {$measurement.waist} in</p>
    <p style="font-size:85%; color:black; margin:0px;">High Hip: {$measurement.high_hip} in</p> 
    <p style="font-size:85%; color:black; margin:0px;">Hip: {$measurement.hip} in</p>
    <p style="font-size:85%; color:black; margin:0px;">Height: {$measurement.height} in</p>

</div> 
{/if}
{/foreach}
{/if}
