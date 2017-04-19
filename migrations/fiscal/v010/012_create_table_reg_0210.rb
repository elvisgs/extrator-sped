Sequel.migration do
  change do
    create_table :reg_0210 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_item_comp, String, size: 60
      column :qtd_comp, BigDecimal, size: [18, 6]
      column :perda, BigDecimal, size: [18, 4]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
