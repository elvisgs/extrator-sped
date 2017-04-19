Sequel.migration do
  change do
    create_table :reg_k220 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_mov, Date
      column :cod_item_ori, String, size: 60
      column :cod_item_dest, String, size: 60
      column :qtd, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
