Sequel.migration do
  change do
    create_table :reg_g140 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_item, String, size: 3
      column :cod_item, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
