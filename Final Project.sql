SELECT
  c.id_pelanggan,
  c.nama,
  c.email,
  c.telepon,
  c.umur,
  c.bulan_lahir,
  c.tanggal_registrasi AS tgl_reg_customer,
  c.konfirmasi_telepon,
  c.penipu,
  c.pengguna_aktif,
  ca.id_alamat,
  ca.alamat,
  ca.kota,
  ca.provinsi,
  o.id_order,
  o.tanggal_pembelian,
  o.kuantitas,
  o.harga,
  o.PPN,
  o.bayar_cash,
  o.metode_bayar,
  m.id_merchant,
  m.nama_merchant,
  m.tanggal_registrasi AS tgl_reg_merchant
FROM `resonant-gizmo-493903-p9.resto.customer` c
JOIN `resonant-gizmo-493903-p9.resto.order` o
  ON c.id_pelanggan = o.id_pelanggan
JOIN `resonant-gizmo-493903-p9.resto.merchant` m
  ON o.id_merchant = m.id_merchant
JOIN `resonant-gizmo-493903-p9.resto.customers_address` ca
  ON c.id_pelanggan = ca.id_pelanggan

