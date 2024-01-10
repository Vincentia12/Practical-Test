<div class="container-fluid">
	<button class="btn bts-sn btn-primary mb-3" data-toggle="modal" data-target="#tambah_produk"><i class="fa fa-plus fa-sm"></i> Tambah Produk</button>
	<table class="table table-bordered">
		<tr>
			<th>NO</th>
			<th>NAMA PRODUK</th>
			<th>CAPTION</th>
			<th>KATEGORI</th>
			<th>HARGA</th>
			<th>STOCK</th>
			<th colspan="3">AKSI</th>

		</tr>

		<?php
		$no = 1;
		foreach ($produk as $brg) : ?>

			<tr>
				<td><?php echo $no++ ?></td>
				<td><?php echo $brg->nama_produk ?></td>
				<td><?php echo $brg->caption ?></td>
				<td><?php echo $brg->kategori ?></td>
				<td><?php echo $brg->harga ?></td>
				<td><?php echo $brg->stock ?></td>
				<td>
					<div class="btn btn-danger btn-sm"><i class="fas fa-search-plus"></i></div>
				</td>
				<td><?php echo anchor('admin/data_produk/edit/' . $brg->id_produk, '<div class="btn btn-primary btn-sm"><i class="fas fa-edit"></i></div>') ?></td>
				<td><?php echo anchor('admin/data_produk/hapus/' . $brg->id_produk, '<div class="btn btn-success btn-sm"><i class="fas fa-trash"></i></div>') ?></td>

			</tr>

		<?php endforeach; ?>

	</table>

</div>

<!-- Modal -->
<div class="modal fade" id="tambah_produk" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title fs-5" id="exampleModalLabel">FORM KOLEKSI BARU NUNA</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="<?php echo base_url() . 'admin/data_produk/tambah_aksi' ?>" method="post" enctype="multipart/form-data">

					<div class="form-group">
						<label>Nama Produk</label>
						<input type="text" name="nama_produk" class="form-control">
					</div>

					<div class="form-group">
						<label>Caption</label>
						<input type="text" name="caption" class="form-control">
					</div>

					<div class="form-group">
						<label>Kategori</label>
						<select class="form-control" name="kategori">
							<option>Android</option>
							<option>Laptop</option>
							<option>Game Console</option>
							<option>Iphone</option>
						</select>
					</div>

					<div class="form-group">
						<label>Harga</label>
						<input type="text" name="harga" class="form-control">
					</div>

					<div class="form-group">
						<label>Stock</label>
						<input type="text" name="stock" class="form-control">
					</div>

					<div class="form-group">
						<label>Gambar Produk</label><br>
						<input type="file" name="gambar" class="form-control">
					</div>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Simpan</button>
			</div>

			</form>
		</div>
	</div>
</div>