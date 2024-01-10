<?php

class Kategori extends CI_Controller
{

	public function android()
	{
		$data['android'] = $this->model_kategori->data_android()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('android', $data);
		$this->load->view('templates/footer');
	}

	public function laptop()
	{
		$data['laptop'] = $this->model_kategori->data_laptop()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('laptop', $data);
		$this->load->view('templates/footer');
	}

	public function game_console()
	{
		$data['game_console'] = $this->model_kategori->data_game_console()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('game_console', $data);
		$this->load->view('templates/footer');
	}

	public function iphone()
	{
		$data['iphone'] = $this->model_kategori->data_iphone()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('iphone', $data);
		$this->load->view('templates/footer');
	}
}
