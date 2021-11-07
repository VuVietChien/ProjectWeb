	<!-- The slideshow -->
	<?php
    $sql1 = "select * from sliders";
    $sliders = $db->executeResult($sql1);
    ?>
	<div id="demo" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ul class="carousel-indicators">
	        <li data-target="#demo" data-slide-to="0" class="active"></li>
	        <li data-target="#demo" data-slide-to="1"></li>
	        <li data-target="#demo" data-slide-to="2"></li>
	    </ul>
	    <div class="carousel-inner">
	        <?php foreach ($sliders as $slider) : ?>
	            <?php if ($slider['id'] == 2) : ?>
	                <div class="carousel-item active">
	                    <img src="<?= $slider['image'] ?>">
	                </div>
	            <?php else : ?>
	                <div class="carousel-item ">
	                    <img src="<?= $slider['image'] ?>">
	                </div>
	            <?php endif ?>
	        <?php endforeach; ?>
	    </div>
	    <a class="carousel-control-prev" href="#demo" data-slide="prev">
	        <span class="carousel-control-prev-icon"></span>
	    </a>
	    <a class="carousel-control-next" href="#demo" data-slide="next">
	        <span class="carousel-control-next-icon"></span>
	    </a>

	</div>