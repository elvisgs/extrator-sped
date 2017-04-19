Sequel.migration do
  change do
    create_table :reg_f100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_oper, String, size: 1
      column :cod_part, String, size: 60
      column :cod_item, String, size: 60
      column :dt_oper, Date
      column :vl_oper, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :vl_bc_pis, BigDecimal, size: [18, 4]
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :vl_bc_cofins, BigDecimal, size: [18, 4]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :nat_bc_cred, String, size: 2
      column :ind_orig_cred, String, size: 1
      column :cod_cta, String, size: 60
      column :cod_ccus, String, size: 60
      column :desc_doc_oper, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
