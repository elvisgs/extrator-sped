Sequel.migration do
  change do
    create_table :reg_1360 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_lacre, String, size: 20
      column :dat_aplicacao, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
