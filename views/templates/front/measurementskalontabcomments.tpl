
{if $measurements}
{foreach from=$measurements item=measurement}
{if $measurement.isChecked}
Measurements in inches:
<div class="rte" id="myshow">
	<p style="font-size:85%; color:black; margin:0px;">Over Bust: {$measurement.over_bust}</p>
    <p style="font-size:85%; color:black; margin:0px;">Bust: {$measurement.bust}</p> 
	<p style="font-size:85%; color:black; margin:0px;">Under Bust: {$measurement.under_bust}</p>
    <p style="font-size:85%; color:black; margin:0px;">Waist: {$measurement.waist}</p>
    <p style="font-size:85%; color:black; margin:0px;">High Hip: {$measurement.high_hip}</p> 
    <p style="font-size:85%; color:black; margin:0px;">Hip: {$measurement.hip}</p>
    <p style="font-size:85%; color:black; margin:0px;">Height: {$measurement.height}</p>

</div> 
{/if}
{/foreach}
{/if}
