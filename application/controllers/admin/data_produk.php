<?php

class Data_produk extends CI_Controller{

	public function __construct(){
		parent::__construct();

		if($this->session->userdata('role_id') != '1'){
			$this->session->set_flashdata('pesan','<div class="alert alert-warning alert-dismissible fade show" role="alert">
				Anda Belum Login
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</div>');
			redirect('auth/login');

		}
	}
	public function index ()
	{
		$data['produk'] = $this->model_produk->tampil_data()->result();
		$this->load->view('template_admin/header');
		$this->load->view('template_admin/sidebar');
		$this->load->view('admin/data_produk', $data);
		$this->load->view('template_admin/footer');
	}

	public function tambah_aksi()
	{
		$nama_produk		= $this->input->post('nama_produk');
		$caption			= $this->input->post('caption');
		$kategori			= $this->input->post('kategori');
		$harga				= $this->input->post('harga');
		$stock				= $this->input->post('stock');
		$gambar		= $_FILES['gambar']['name'];
		if ($gambar	=''){}else{
			$config ['upload_path'] = './katalog';
			$config ['allowed_types'] = 'jpg|jpeg|png|gif';

			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('gambar')){
				echo "Gambar gagal diupload!";				
			}else {
				$gambar=$this->upload->data('file_name');
			}
		}

		$data = array (
			'nama_produk'		=> $nama_produk,
			'caption'			=> $caption,
			'kategori'			=> $kategori,
			'harga'				=> $harga,
			'stock'				=> $stock,
			'gambar'			=> $gambar
		);

		$this->model_produk->tambah_barang($data, 'tb_item');
		redirect('admin/data_produk/index');
	}

	public function edit($id)
	{
		$where = array('id_produk' =>$id);
		$data['produk'] = $this->model_produk->edit_produk($where, 'tb_item')->result();
		$this->load->view('template_admin/header');
		$this->load->view('template_admin/sidebar');
		$this->load->view('admin/edit_produk', $data);
		$this->load->view('template_admin/footer');
	}

	public function update(){
		$id				= $this->input->post('id_produk');
		$nama_produk	= $this->input->post('nama_produk');
		$caption		= $this->input->post('caption');
		$kategori		= $this->input->post('kategori');
		$harga			= $this->input->post('harga');
		$stock			= $this->input->post('stock');

		$data = array(

			'nama_produk'		=>$nama_produk,
			'caption'			=>$caption,
			'kategori'			=>$kategori,
			'harga'				=>$harga,
			'stock'				=>$stock
		);

		$where = array(
			'id_produk' => $id
		);

		$this->model_produk->update_data($where,$data, 'tb_item');
		redirect('admin/data_produk/index');
	}

	public function hapus($id)
	{
		$where = array('id_produk' => $id);
		$this->model_produk->hapus_data($where, 'tb_item');
		redirect('admin/data_produk/index/');
	}
}