Sequel.migration do
  change do
    create_table :reg_f150 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :nat_bc_cred, String, size: 2
      column :vl_tot_est, BigDecimal, size: [18, 2]
      column :est_imp, BigDecimal, size: [18, 2]
      column :vl_bc_est, BigDecimal, size: [18, 2]
      column :vl_bc_men_est, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_cred_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cred_cofins, BigDecimal, size: [18, 2]
      column :desc_est, String, size: 100
      column :cod_cta, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
