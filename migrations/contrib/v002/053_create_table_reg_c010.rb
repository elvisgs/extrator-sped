Sequel.migration do
  change do
    create_table :reg_c010 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cnpj, String, size: 14
      column :ind_escri, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
