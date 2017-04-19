Sequel.migration do
  change do
    create_table :reg_g110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_ini, Date
      column :dt_fin, Date
      column :saldo_in_icms, BigDecimal, size: [18, 2]
      column :som_parc, BigDecimal, size: [18, 2]
      column :vl_trib_exp, BigDecimal, size: [18, 2]
      column :vl_total, BigDecimal, size: [18, 2]
      column :ind_per_sai, BigDecimal, size: [18, 8]
      column :icms_aprop, BigDecimal, size: [18, 2]
      column :som_icms_oc, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
