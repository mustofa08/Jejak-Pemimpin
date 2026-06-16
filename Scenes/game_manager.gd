extends Node

var hari = 1

var reputasi_pemuda = 50
var reputasi_keluarga = 50
var reputasi_agama = 50
var reputasi_sesepuh = 50

var tugas_aktif = []

func tambah_tugas(id, nama, deadline, kelompok):
	var tugas = {
		"id": id,
		"nama": nama,
		"deadline": deadline,
		"status": "aktif",
		"kelompok": kelompok
	}

	tugas_aktif.append(tugas)

	print("TUGAS DITAMBAHKAN:", nama)
