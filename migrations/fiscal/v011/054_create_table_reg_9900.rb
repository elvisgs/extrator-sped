Sequel.migration do
  change do
    create_table :reg_9900 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :reg_blc, String, size: 4
      column :qtd_reg_blc, Integer
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
