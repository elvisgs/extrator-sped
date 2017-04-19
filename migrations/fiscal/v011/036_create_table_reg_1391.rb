Sequel.migration do
  change do
    create_table :reg_1391 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_registro, Date
      column :qtd_moid, BigDecimal, size: [18, 2]
      column :estq_ini, BigDecimal, size: [18, 2]
      column :qtd_produz, BigDecimal, size: [18, 2]
      column :ent_anid_hid, BigDecimal, size: [18, 2]
      column :outr_entr, BigDecimal, size: [18, 2]
      column :perda, BigDecimal, size: [18, 2]
      column :cons, BigDecimal, size: [18, 2]
      column :sai_ani_hid, BigDecimal, size: [18, 2]
      column :saidas, BigDecimal, size: [18, 2]
      column :estq_fin, BigDecimal, size: [18, 2]
      column :estq_ini_mel, BigDecimal, size: [18, 2]
      column :prod_dia_mel, BigDecimal, size: [18, 2]
      column :util_mel, BigDecimal, size: [18, 2]
      column :prod_alc_mel, BigDecimal, size: [18, 2]
      column :obs, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
