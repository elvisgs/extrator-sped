Sequel.migration do
  change do
    create_table :reg_1710 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_doc_ini, String, size: 12
      column :num_doc_fin, String, size: 12
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
