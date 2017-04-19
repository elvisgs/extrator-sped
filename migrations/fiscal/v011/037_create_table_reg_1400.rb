Sequel.migration do
  change do
    create_table :reg_1400 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_item_ipm, String, size: 60
      column :mun, String, size: 7
      column :valor, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
