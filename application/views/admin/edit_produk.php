<div class="container-fluid">
	<h3><i class="fas fa-edit"></i>EDIT DATA PRODUK</h3>

	<?php foreach($produk as $brg) : ?>

		<form method="post" action="<?php echo base_url().'admin/data_produk/update' ?>">

			<div class="for-group">
				<label>Nama Produk</label>
				<input type="text" name="nama_produk" class="form-control" value="<?php echo $brg->nama_produk ?>">	
			</div>

			<div class="for-group">
				<label>Caption</label>
				<input type="hidden" name="id_produk" class="form-control" value="<?php echo $brg->id_produk ?>">
				<input type="text" name="caption" class="form-control" value="<?php echo $brg->caption ?>">	
			</div>

			<div class="for-group">
				<label>Kategori</label>
				<input type="text" name="kategori" class="form-control" value="<?php echo $brg->kategori ?>">	
			</div>

			<div class="for-group">
				<label>Harga</label>
				<input type="text" name="harga" class="form-control" value="<?php echo $brg->harga ?>">	
			</div>

			<div class="for-group">
				<label>Stock</label>
				<input type="text" name="stock" class="form-control" value="<?php echo $brg->stock ?>">	
			</div>

			<button type="submit" class="btn btn-primary btn-sm mt-3">Simpan</button>
			
		</form>

	<?php endforeach; ?>
</div>