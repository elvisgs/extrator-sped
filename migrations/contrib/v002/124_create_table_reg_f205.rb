Sequel.migration do
  change do
    create_table :reg_f205 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_cus_inc_acum_ant, BigDecimal, size: [18, 2]
      column :vl_cus_inc_per_esc, BigDecimal, size: [18, 2]
      column :vl_cus_inc_acum, BigDecimal, size: [18, 2]
      column :vl_exc_bc_cus_inc_acum, BigDecimal, size: [18, 2]
      column :vl_bc_cus_inc, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_cred_pis_acum, BigDecimal, size: [18, 2]
      column :vl_cred_pis_desc_ant, BigDecimal, size: [18, 2]
      column :vl_cred_pis_desc, BigDecimal, size: [18, 2]
      column :vl_cred_pis_desc_fut, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cred_cofins_acum, BigDecimal, size: [18, 2]
      column :vl_cred_cofins_desc_ant, BigDecimal, size: [18, 2]
      column :vl_cred_cofins_desc, BigDecimal, size: [18, 2]
      column :vl_cred_cofins_desc_fut, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
