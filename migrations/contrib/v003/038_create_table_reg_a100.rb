Sequel.migration do
  change do
    create_table :reg_a100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_oper, String, size: 1
      column :ind_emit, String, size: 1
      column :cod_part, String, size: 60
      column :cod_sit, String, size: 2
      column :ser, String, size: 20
      column :sub, String, size: 20
      column :num_doc, String, size: 128
      column :chv_nfse, String, size: 128
      column :dt_doc, Date
      column :dt_exe_serv, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :ind_pgto, String, size: 1
      column :vl_desc, BigDecimal, size: [18, 2]
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :vl_pis_ret, BigDecimal, size: [18, 2]
      column :vl_cofins_ret, BigDecimal, size: [18, 2]
      column :vl_iss, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
