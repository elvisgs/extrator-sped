Sequel.migration do
  change do
    create_table :reg_1920 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_tot_transf_debitos_oa, BigDecimal, size: [18, 2]
      column :vl_tot_aj_debitos_oa, BigDecimal, size: [18, 2]
      column :vl_estornos_cred_oa, BigDecimal, size: [18, 2]
      column :vl_tot_transf_creditos_oa, BigDecimal, size: [18, 2]
      column :vl_tot_aj_creditos_oa, BigDecimal, size: [18, 2]
      column :vl_estornos_deb_oa, BigDecimal, size: [18, 2]
      column :vl_sld_credor_ant_oa, BigDecimal, size: [18, 2]
      column :vl_sld_apurado_oa, BigDecimal, size: [18, 2]
      column :vl_tot_ded, BigDecimal, size: [18, 2]
      column :vl_icms_recolher_oa, BigDecimal, size: [18, 2]
      column :vl_sld_credor_transp_oa, BigDecimal, size: [18, 2]
      column :deb_esp_oa, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
