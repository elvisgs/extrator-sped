Sequel.migration do
  change do
    create_table :reg_d411 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_doc_canc, String, size: 6
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
