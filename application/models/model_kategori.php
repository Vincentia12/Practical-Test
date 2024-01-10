<?php

class Model_kategori extends CI_Model
{

	public function data_android()
	{
		return $this->db->get_where("tb_item", array('kategori' => 'android'));
	}

	public function data_laptop()
	{
		return $this->db->get_where("tb_item", array('kategori' => 'laptop'));
	}

	public function data_game_console()
	{
		return $this->db->get_where("tb_item", array('kategori' => 'game console'));
	}

	public function data_iphone()
	{
		return $this->db->get_where("tb_item", array('kategori' => 'iphone'));
	}
}
