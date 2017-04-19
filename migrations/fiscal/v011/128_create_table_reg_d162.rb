Sequel.migration do
  change do
    create_table :reg_d162 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :ser, String, size: 4
      column :num_doc, String, size: 9
      column :dt_doc, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_merc, BigDecimal, size: [18, 2]
      column :qtd_vol, Integer
      column :peso_brt, BigDecimal, size: [18, 2]
      column :peso_liq, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
