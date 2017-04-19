Sequel.migration do
  change do
    create_table :reg_1600 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part, String, size: 60
      column :tot_credito, BigDecimal, size: [18, 2]
      column :tot_debito, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
