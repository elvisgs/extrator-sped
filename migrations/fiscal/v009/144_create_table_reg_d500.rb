Sequel.migration do
  change do
    create_table :reg_d500 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_oper, String, size: 1
      column :ind_emit, String, size: 1
      column :cod_part, String, size: 60
      column :cod_mod, String, size: 2
      column :cod_sit, String, size: 2
      column :ser, String, size: 4
      column :sub, String, size: 3
      column :num_doc, String, size: 9
      column :dt_doc, Date
      column :dt_a_p, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_desc, BigDecimal, size: [18, 2]
      column :vl_serv, BigDecimal, size: [18, 2]
      column :vl_serv_nt, BigDecimal, size: [18, 2]
      column :vl_terc, BigDecimal, size: [18, 2]
      column :vl_da, BigDecimal, size: [18, 2]
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :cod_inf, String, size: 6
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 1000
      column :tp_assinante, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
