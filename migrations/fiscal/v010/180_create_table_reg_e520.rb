Sequel.migration do
  change do
    create_table :reg_e520 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_sd_ant_ipi, BigDecimal, size: [18, 2]
      column :vl_deb_ipi, BigDecimal, size: [18, 2]
      column :vl_cred_ipi, BigDecimal, size: [18, 2]
      column :vl_od_ipi, BigDecimal, size: [18, 2]
      column :vl_oc_ipi, BigDecimal, size: [18, 2]
      column :vl_sc_ipi, BigDecimal, size: [18, 2]
      column :vl_sd_ipi, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
