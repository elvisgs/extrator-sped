Sequel.migration do
  change do
    create_table :reg_d350 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :ecf_mod, String, size: 20
      column :ecf_fab, String, size: 20
      column :dt_doc, Date
      column :cro, String, size: 3
      column :crz, String, size: 6
      column :num_coo_fin, String, size: 6
      column :gt_fin, BigDecimal, size: [18, 2]
      column :vl_brt, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :quant_bc_pis, BigDecimal, size: [18, 3]
      column :aliq_pis_quant, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :quant_bc_cofins, BigDecimal, size: [18, 3]
      column :aliq_cofins_quant, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
