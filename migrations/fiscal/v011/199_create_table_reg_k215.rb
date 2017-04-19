Sequel.migration do
  change do
    create_table :reg_k215 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_item_dest, String, size: 60
      column :qtd_des, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
