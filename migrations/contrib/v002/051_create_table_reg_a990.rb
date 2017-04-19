Sequel.migration do
  change do
    create_table :reg_a990 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :qtd_lin_a, Integer
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
