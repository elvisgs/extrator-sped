Sequel.migration do
  change do
    create_table :reg_c700 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :ser, String, size: 4
      column :nro_ord_ini, String, size: 9
      column :nro_ord_fin, String, size: 9
      column :dt_doc_ini, Date
      column :dt_doc_fin, Date
      column :nom_mest, String, size: 33
      column :chv_cod_dig, String, size: 32
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
