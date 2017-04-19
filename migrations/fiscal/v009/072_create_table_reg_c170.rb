Sequel.migration do
  change do
    create_table :reg_c170 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_item, String, size: 3
      column :cod_item, String, size: 60
      column :descr_compl, String, size: 1000
      column :qtd, BigDecimal, size: [18, 5]
      column :unid, String, size: 6
      column :vl_item, BigDecimal, size: [18, 2]
      column :vl_desc, BigDecimal, size: [18, 2]
      column :ind_mov, String, size: 1
      column :cst_icms, String, size: 3
      column :cfop, String, size: 4
      column :cod_nat, String, size: 10
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :aliq_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_bc_icms_st, BigDecimal, size: [18, 2]
      column :aliq_st, BigDecimal, size: [18, 2]
      column :vl_icms_st, BigDecimal, size: [18, 2]
      column :ind_apur, String, size: 1
      column :cst_ipi, String, size: 2
      column :cod_enq, String, size: 3
      column :vl_bc_ipi, BigDecimal, size: [18, 2]
      column :aliq_ipi, BigDecimal, size: [18, 2]
      column :vl_ipi, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :aliq_pis_perc, BigDecimal, size: [18, 4]
      column :quant_bc_pis, BigDecimal, size: [18, 3]
      column :aliq_pis_reais, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins_perc, BigDecimal, size: [18, 4]
      column :quant_bc_cofins, BigDecimal, size: [18, 3]
      column :aliq_cofins_reais, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
