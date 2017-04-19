Sequel.migration do
  change do
    create_table :reg_p990 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :qtd_lin_p, Integer
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
