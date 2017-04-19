Sequel.migration do
  change do
    create_table :reg_g126 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_ini, Date
      column :dt_fin, Date
      column :num_parc, String, size: 3
      column :vl_parc_pass, BigDecimal, size: [18, 2]
      column :vl_trib_oc, BigDecimal, size: [18, 2]
      column :vl_total, BigDecimal, size: [18, 2]
      column :ind_per_sai, BigDecimal, size: [18, 8]
      column :vl_parc_aprop, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
