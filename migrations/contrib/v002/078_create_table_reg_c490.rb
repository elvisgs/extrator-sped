Sequel.migration do
  change do
    create_table :reg_c490 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_doc_ini, Date
      column :dt_doc_fin, Date
      column :cod_mod, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
