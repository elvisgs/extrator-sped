Sequel.migration do
  change do
    create_table :reg_m505 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :nat_bc_cred, String, size: 2
      column :cst_cofins, String, size: 2
      column :vl_bc_cofins_tot, BigDecimal, size: [18, 2]
      column :vl_bc_cofins_cum, BigDecimal, size: [18, 2]
      column :vl_bc_cofins_nc, BigDecimal, size: [18, 2]
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :quant_bc_cofins_tot, BigDecimal, size: [18, 3]
      column :quant_bc_cofins, BigDecimal, size: [18, 3]
      column :desc_cred, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
