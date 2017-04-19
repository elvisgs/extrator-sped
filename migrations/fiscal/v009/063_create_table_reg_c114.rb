Sequel.migration do
  change do
    create_table :reg_c114 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :ecf_fab, String, size: 21
      column :ecf_cx, String, size: 3
      column :num_doc, String, size: 9
      column :dt_doc, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
