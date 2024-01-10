<div class="container-fluid">

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#carouselExampleIndicators" data-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></li>
            <li data-bs-target="#carouselExampleIndicators" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<?php echo base_url('assets/img/slider7.png') ?>" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<?php echo base_url('assets/img/slider9.png') ?>" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="row text-center mt-4">

        <?php foreach ($game_console as $brg) : ?>

            <div class="card mx-auto mb-2" style="width: 14rem;">
                <img src="<?php echo base_url() . '/katalog/' . $brg->gambar ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $brg->nama_produk ?></h5>
                    <small><?php echo $brg->caption ?></small><br>
                    <span class="badge badge-pill badge-warning mb-3">Rp. <?php echo number_format($brg->harga, 0, ',', '.') ?></span>
                    <?php echo anchor('dashboard/masukkan_keranjang/' . $brg->id_produk, '<div class="btn btn-sm btn-primary mb-1")>Masukkan Keranjang</div>') ?>
                    <?php echo anchor('dashboard/detail/' . $brg->id_produk, '<div class="btn btn-sm btn-success mb-2")>Detail</div>') ?>
                </div>
            </div>

        <?php endforeach; ?>


    </div>
</div>