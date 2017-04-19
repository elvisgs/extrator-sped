Sequel.migration do
  change do
    create_table :reg_1101 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part, String, size: 60
      column :cod_item, String, size: 60
      column :cod_mod, String, size: 2
      column :ser, String, size: 4
      column :sub_ser, String, size: 3
      column :num_doc, String, size: 9
      column :dt_oper, Date
      column :chv_nfe, String, size: 44
      column :vl_oper, BigDecimal, size: [18, 2]
      column :cfop, String, size: 4
      column :nat_bc_cred, String, size: 2
      column :ind_orig_cred, String, size: 1
      column :cst_pis, String, size: 2
      column :vl_bc_pis, BigDecimal, size: [18, 3]
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 60
      column :cod_ccus, String, size: 60
      column :desc_compl, String, size: 1000
      column :per_escrit, String, size: 6
      column :cnpj, String, size: 14
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
