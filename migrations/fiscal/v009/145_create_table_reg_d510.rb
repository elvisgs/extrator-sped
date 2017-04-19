Sequel.migration do
  change do
    create_table :reg_d510 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_item, String, size: 3
      column :cod_item, String, size: 60
      column :cod_class, String, size: 4
      column :qtd, BigDecimal, size: [18, 3]
      column :unid, String, size: 6
      column :vl_item, BigDecimal, size: [18, 2]
      column :vl_desc, BigDecimal, size: [18, 2]
      column :cst_icms, String, size: 3
      column :cfop, String, size: 4
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :aliq_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_bc_icms_st, BigDecimal, size: [18, 2]
      column :vl_icms_st, BigDecimal, size: [18, 2]
      column :ind_rec, String, size: 1
      column :cod_part, String, size: 60
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
