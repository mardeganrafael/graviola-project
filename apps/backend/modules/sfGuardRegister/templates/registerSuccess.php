<?php use_helper('I18N') ?>
<?php slot('title') ?>
  <?php echo 'Welcome to NoJam - Create your account'; ?>
<?php end_slot() ?>

<div class="column span-6">
<h1><?php echo __('Register', null, 'sf_guard') ?></h1>
<?php echo get_partial('sfGuardRegister/form', array('form' => $form)) ?>
</div>
<div class="column span-14 liquid-right last">
  <?php echo image_tag(image_path('logo504x545.png', true), array('class'=>'njLogo')); ?>
</div>
