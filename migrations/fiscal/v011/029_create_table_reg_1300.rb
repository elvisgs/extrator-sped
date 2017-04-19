Sequel.migration do
  change do
    create_table :reg_1300 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_item, String, size: 60
      column :dt_fech, Date
      column :estq_abert, BigDecimal, size: [18, 3]
      column :vol_entr, BigDecimal, size: [18, 3]
      column :vol_disp, BigDecimal, size: [18, 3]
      column :vol_saidas, BigDecimal, size: [18, 3]
      column :estq_escr, BigDecimal, size: [18, 3]
      column :val_aj_perda, BigDecimal, size: [18, 3]
      column :val_aj_ganho, BigDecimal, size: [18, 3]
      column :fech_fisico, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
