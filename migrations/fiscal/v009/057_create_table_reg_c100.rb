Sequel.migration do
  change do
    create_table :reg_c100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_oper, String, size: 1
      column :ind_emit, String, size: 1
      column :cod_part, String, size: 60
      column :cod_mod, String, size: 2
      column :cod_sit, String, size: 2
      column :ser, String, size: 3
      column :num_doc, String, size: 9
      column :chv_nfe, String, size: 44
      column :dt_doc, Date
      column :dt_e_s, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :ind_pgto, String, size: 1
      column :vl_desc, BigDecimal, size: [18, 2]
      column :vl_abat_nt, BigDecimal, size: [18, 2]
      column :vl_merc, BigDecimal, size: [18, 2]
      column :ind_frt, String, size: 1
      column :vl_frt, BigDecimal, size: [18, 2]
      column :vl_seg, BigDecimal, size: [18, 2]
      column :vl_out_da, BigDecimal, size: [18, 2]
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_bc_icms_st, BigDecimal, size: [18, 2]
      column :vl_icms_st, BigDecimal, size: [18, 2]
      column :vl_ipi, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :vl_pis_st, BigDecimal, size: [18, 2]
      column :vl_cofins_st, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
