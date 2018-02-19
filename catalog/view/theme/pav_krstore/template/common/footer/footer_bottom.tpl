<div class="<?php echo str_replace('_','-',$blockid); ?> <?php echo $blockcls;?>" id="pavo-<?php echo str_replace('_','-',$blockid); ?>">
	<div class="container">
		<div class="row">
			<div class="col-left col-lg-2 col-md-3 col-sm-4 col-xs-12">
				<div class="logo-footer space-15 space-top-15">
					<img src="catalog/view/theme/pav_krstore/image/logo.png" title="" alt="" />
				</div>
				<div class="space-15 space-top-15">
					<?php
						if($content=$helper->getLangConfig('widget_about_us')){
							echo $content;
						}
					?>
				</div>
				<div class="space-15 space-top-15">
					<?php
						if($content=$helper->getLangConfig('widget_business_hours')){
							echo $content;
						}
					?>
				</div>
			</div>
			<div class="col-right col-lg-10 col-md-9 col-sm-8 col-xs-12">
				<div class="row">
					<?php if ($informations) { ?>
						<?php foreach ($informations as $information) { ?>
							<div class="column col-lg-2 col-md-3 col-sm-6 col-xs-12 space-15 space-top-15">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></h4>
								</div>
							</div>
						<?php } ?>
					<?php } ?>
				</div>
				<div class="copyright col-lg-12 col-md-12 col-sm-12 col-xs-12 clearfix space-top-10">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<p>
								<?php if( $helper->getConfig('enable_custom_copyright', 0) ) { ?>
									<?php echo html_entity_decode($helper->getConfig('copyright')); ?>
								<?php } 
								else { ?>
									<?php echo $powered; ?>. 
								<?php } ?>
							</p>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<ul class="list-unstyled">
								<li>Bankverbindung:</li>
								<li>IBAN: AT38 1200 0100 1667 9754</li>
								<li>BIC: BKAUATWW</li>
							</ul>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<a href="http://www.ohanir-wedding.at/">
								<img alt="" src="image/catalog/home-page-images/hania-logo-footer.png" />
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
							<a href="#">
								<img alt="" src="image/catalog/home-page-images/ohanila-logo-footer.png" />
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
