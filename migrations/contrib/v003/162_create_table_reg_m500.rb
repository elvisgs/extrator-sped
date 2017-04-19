Sequel.migration do
  change do
    create_table :reg_m500 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_cred, String, size: 3
      column :ind_cred_ori, String, size: 1
      column :vl_bc_cred, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :quant_bc_cofins, BigDecimal, size: [18, 3]
      column :aliq_cofins_quant, BigDecimal, size: [18, 4]
      column :vl_cred, BigDecimal, size: [18, 2]
      column :vl_ajus_acres, BigDecimal, size: [18, 2]
      column :vl_ajus_reduc, BigDecimal, size: [18, 2]
      column :vl_cred_dif, BigDecimal, size: [18, 2]
      column :vl_cred_disp, BigDecimal, size: [18, 2]
      column :ind_desc_cred, String, size: 1
      column :vl_cred_desc, BigDecimal, size: [18, 2]
      column :sld_cred, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
