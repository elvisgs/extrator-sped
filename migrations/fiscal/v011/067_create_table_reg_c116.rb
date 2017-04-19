Sequel.migration do
  change do
    create_table :reg_c116 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :nr_sat, String, size: 9
      column :chv_cfe, String, size: 44
      column :num_cfe, String, size: 6
      column :dt_doc, String, size: 8
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
