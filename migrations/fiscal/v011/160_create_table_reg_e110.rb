Sequel.migration do
  change do
    create_table :reg_e110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_tot_debitos, BigDecimal, size: [18, 2]
      column :vl_aj_debitos, BigDecimal, size: [18, 2]
      column :vl_tot_aj_debitos, BigDecimal, size: [18, 2]
      column :vl_estornos_cred, BigDecimal, size: [18, 2]
      column :vl_tot_creditos, BigDecimal, size: [18, 2]
      column :vl_aj_creditos, BigDecimal, size: [18, 2]
      column :vl_tot_aj_creditos, BigDecimal, size: [18, 2]
      column :vl_estornos_deb, BigDecimal, size: [18, 2]
      column :vl_sld_credor_ant, BigDecimal, size: [18, 2]
      column :vl_sld_apurado, BigDecimal, size: [18, 2]
      column :vl_tot_ded, BigDecimal, size: [18, 2]
      column :vl_icms_recolher, BigDecimal, size: [18, 2]
      column :vl_sld_credor_transportar, BigDecimal, size: [18, 2]
      column :deb_esp, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
