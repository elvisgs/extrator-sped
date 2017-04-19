Sequel.migration do
  change do
    create_table :reg_f210 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_cus_orc, BigDecimal, size: [18, 2]
      column :vl_exc, BigDecimal, size: [18, 2]
      column :vl_cus_orc_aju, BigDecimal, size: [18, 2]
      column :vl_bc_cred, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_cred_pis_util, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cred_cofins_util, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
