</div>
<?php if( !($helper->getConfig('enable_pagebuilder') && $helper->isHomepage())  ){ ?>
	<?php
	  $blockid = 'mass_bottom';
	  $blockcls = '';
	  $ospans = array(1=>12);
	  $tmcols = 'col-sm-12 col-xs-12';
	  require( ThemeControlHelper::getLayoutPath( 'common/block-cols.tpl' ) );
	?>
<?php } ?>
 
<footer id="footer" class="nostylingboxs">
	<?php
		$blockid = 'footer_bottom';
		$blockcls = '';
		$ospans = array(1=>3,2=>3,3=>3,4=>3);
		$tmcols = 'col-sm-4 col-xs-12';
		require( ThemeControlHelper::getLayoutPath( 'common/block-footcols.tpl' ) );
		if( count($modules) <=0 ){
			$footer_layout = $helper->getConfig('footer_layout','theme');
			if($footer_layout == "default") {
				require( ThemeControlHelper::getLayoutPath( 'common/footer/default.tpl' ) );
			} 
			else {
				require( ThemeControlHelper::getLayoutPath( 'common/footer/footer_bottom.tpl' ) );
			}
		}
	?>
</footer>
<div id="back-to-top"><a class="scrollup" href="#"><i class="fa fa-angle-up"></i><?php echo 'TOP';?></a></div>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
	var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
	(function(){
		var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
		s1.async=true;
		s1.src='https://embed.tawk.to/5a5b71a9d7591465c706bbb4/default';
		s1.charset='UTF-8';
		s1.setAttribute('crossorigin','*');
		s0.parentNode.insertBefore(s1,s0);
	})();
</script>
<!--End of Tawk.to Script-->
<?php if( $helper->getConfig('enable_paneltool',0) ){  ?>
  <?php  echo $helper->renderAddon( 'panel' );?>
<?php } ?>
<?php
  $offcanvas = $helper->getConfig('offcanvas','category');
  if($offcanvas == "megamenu") {
      echo $helper->renderAddon( 'offcanvas');
  } else {
      echo $helper->renderAddon( 'offcanvas-category');
  }

  ?> 

</div>
<?php
  $offcanvas = $helper->getConfig('offcanvas','category');
  if($offcanvas == "megamenu") {
      echo $helper->renderAddon( 'offcanvas');
  } else {
      echo $helper->renderAddon( 'offcanvas-category');
  }
?>

</body></html>