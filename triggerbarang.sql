CREATE TRIGGER `before_namabarang_update` BEFORE UPDATE ON `barang`
 FOR EACH ROW BEGIN
    INSERT INTO barang_archives
    set id_barang = OLD.id_barang,
   nama_baranglama=old.nama_barang,
    nama_barangbaru=new.nama_barang,
    waktu = NOW(); 
END