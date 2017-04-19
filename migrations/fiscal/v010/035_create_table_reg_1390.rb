Sequel.migration do
  change do
    create_table :reg_1390 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_prod, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
