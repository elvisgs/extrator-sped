Sequel.migration do
  change do
    create_table :reg_c160 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part, String, size: 60
      column :veic_id, String, size: 7
      column :qtd_vol, Integer
      column :peso_brt, BigDecimal, size: [18, 2]
      column :peso_liq, BigDecimal, size: [18, 2]
      column :uf_id, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
