<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="icon-ok-sign"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="panel">
    <div class="panel-heading">
      <h1 class="panel-title"><i class="icon-bar-chart icon-large"></i> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $reset; ?>" class="btn btn-danger"><i class="icon-refresh"></i> <?php echo $button_reset; ?></a></div>
    </div>
    <div class="panel-body">
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left"><?php echo $column_name; ?></td>
            <td class="text-left"><?php echo $column_model; ?></td>
            <td class="text-right"><?php echo $column_viewed; ?></td>
            <td class="text-right"><?php echo $column_percent; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($products) { ?>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="text-left"><?php echo $product['name']; ?></td>
            <td class="text-left"><?php echo $product['model']; ?></td>
            <td class="text-right"><?php echo $product['viewed']; ?></td>
            <td class="text-right"><?php echo $product['percent']; ?></td>
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <div class="row">
        <div class="col-lg-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-lg-6 text-right"><?php echo $results; ?></div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>