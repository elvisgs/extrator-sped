Sequel.migration do
  change do
    create_table :reg_1370 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_bico, String, size: 3
      column :cod_item, String, size: 60
      column :num_tanque, String, size: 3
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
