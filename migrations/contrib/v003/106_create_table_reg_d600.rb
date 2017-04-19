Sequel.migration do
  change do
    create_table :reg_d600 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mod, String, size: 2
      column :cod_mun, String, size: 7
      column :ser, String, size: 4
      column :sub, String, size: 3
      column :ind_rec, String, size: 1
      column :qtd_cons, Integer
      column :dt_doc_ini, Date
      column :dt_doc_fin, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :vl_desc, BigDecimal, size: [18, 2]
      column :vl_serv, BigDecimal, size: [18, 2]
      column :vl_serv_nt, BigDecimal, size: [18, 2]
      column :vl_terc, BigDecimal, size: [18, 2]
      column :vl_da, BigDecimal, size: [18, 2]
      column :vl_bc_icms, BigDecimal, size: [18, 2]
      column :vl_icms, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
