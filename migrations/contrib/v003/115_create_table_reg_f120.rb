Sequel.migration do
  change do
    create_table :reg_f120 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :nat_bc_cred, String, size: 2
      column :ident_bem_imob, String, size: 2
      column :ind_orig_cred, String, size: 1
      column :ind_util_bem_imob, String, size: 1
      column :vl_oper_dep, BigDecimal, size: [18, 2]
      column :parc_oper_nao_bc_cred, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 60
      column :cod_ccus, String, size: 60
      column :desc_bem_imob, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
