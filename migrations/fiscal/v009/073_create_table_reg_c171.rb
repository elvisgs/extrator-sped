Sequel.migration do
  change do
    create_table :reg_c171 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_tanque, String, size: 3
      column :qtde, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
