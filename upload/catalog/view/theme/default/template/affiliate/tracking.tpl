<?php echo $header; ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<div class="row"> <?php echo $column_left; ?>
  <div class="span9"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_description; ?></p>
    <div class="control-group">
      <label class="control-label" for="input-code"><?php echo $entry_code; ?></label>
      <div class="controls">
        <textarea cols="40" rows="5" placeholder="<?php echo $entry_code; ?>" id="input-code"><?php echo $code; ?></textarea>
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="input-generator"><?php echo $entry_generator; ?><span class="help-block"><?php echo $help_generator; ?></span></label>
      <div class="controls">
        <input type="text" name="product" value="" placeholder="<?php echo $entry_generator; ?>" id="input-generator" />
      </div>
    </div>
    <div class="control-group">
      <label class="control-label" for="input-link"><?php echo $entry_link; ?></label>
      <div class="controls">
        <textarea name="link" cols="40" rows="5" placeholder="<?php echo $entry_link; ?>" id="input-link"></textarea>
      </div>
    </div>
    <div class="buttons clearfix">
      <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
    </div>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',			
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['link']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'product\']').val(item['label']);
		$('textarea[name=\'link\']').attr('value', item['value']);	
	}	
});
//--></script> 
<?php echo $footer; ?>