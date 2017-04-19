Sequel.migration do
  change do
    create_table :reg_e310 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_mov_difal, String, size: 1
      column :vl_sld_cred_ant_difal, BigDecimal, size: [18, 2]
      column :vl_tot_debitos_difal, BigDecimal, size: [18, 2]
      column :vl_out_deb_difal, BigDecimal, size: [18, 2]
      column :vl_tot_deb_fcp, BigDecimal, size: [18, 2]
      column :vl_tot_creditos_difal, BigDecimal, size: [18, 2]
      column :vl_tot_cred_fcp, BigDecimal, size: [18, 2]
      column :vl_out_cred_difal, BigDecimal, size: [18, 2]
      column :vl_sld_dev_ant_difal, BigDecimal, size: [18, 2]
      column :vl_deducoes_difal, BigDecimal, size: [18, 2]
      column :vl_recol, BigDecimal, size: [18, 2]
      column :vl_sld_cred_transportar, BigDecimal, size: [18, 2]
      column :deb_esp_difal, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
