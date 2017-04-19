Sequel.migration do
  change do
    create_table :reg_c465 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :chv_cfe, String, size: 44
      column :num_ccf, String, size: 9
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
