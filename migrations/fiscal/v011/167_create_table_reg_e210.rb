Sequel.migration do
  change do
    create_table :reg_e210 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_mov_st, String, size: 1
      column :vl_sld_cred_ant_st, BigDecimal, size: [18, 2]
      column :vl_devol_st, BigDecimal, size: [18, 2]
      column :vl_ressarc_st, BigDecimal, size: [18, 2]
      column :vl_out_cred_st, BigDecimal, size: [18, 2]
      column :vl_aj_creditos_st, BigDecimal, size: [18, 2]
      column :vl_retencao_st, BigDecimal, size: [18, 2]
      column :vl_out_deb_st, BigDecimal, size: [18, 2]
      column :vl_aj_debitos_st, BigDecimal, size: [18, 2]
      column :vl_sld_dev_ant_st, BigDecimal, size: [18, 2]
      column :vl_deducoes_st, BigDecimal, size: [18, 2]
      column :vl_icms_recol_st, BigDecimal, size: [18, 2]
      column :vl_sld_cred_st_transportar, BigDecimal, size: [18, 2]
      column :deb_esp_st, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
