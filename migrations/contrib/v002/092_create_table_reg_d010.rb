Sequel.migration do
  change do
    create_table :reg_d010 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cnpj, String, size: 14
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
