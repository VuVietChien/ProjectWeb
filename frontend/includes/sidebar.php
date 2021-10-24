<div class="left-products">
        <h2 class="title">THỂ LOẠI</h2>
        <div class="category">
          <?php while ($category = $categories->fetch_assoc()) : ?>
            <div class="penel">
              <div class="panel_heading">
                <a href="product.php?id=<?= $category['id'] ?>"><?= $category['name'] ?></a>
              </div>
            </div>
          <?php endwhile ?>
        </div>
        <h2 class="title">CÁC HÃNG</h2>
        <div class="category">
          <div class="penel">
            <div class="panel_heading"><a href="#">NIKE</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">ADIDAS</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">JORDAN</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">PUMA</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">UNDER ARMOUR</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">KAPPA</a></div>
          </div>
          <div class="penel">
            <div class="panel_heading"><a href="#">FILA</a></div>
          </div>
        </div>
        <div class="shipping">
          <img src="../frontend/image/shipping.jpg" alt="#" />
        </div>
      </div>