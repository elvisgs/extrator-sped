Sequel.migration do
  change do
    create_table :reg_f200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_oper, String, size: 2
      column :unid_imob, String, size: 2
      column :ident_emp, String, size: 1000
      column :desc_unid_imob, String, size: 90
      column :num_cont, String, size: 90
      column :cpf_cnpj_adqu, String, size: 14
      column :dt_oper, Date
      column :vl_tot_vend, BigDecimal, size: [18, 2]
      column :vl_rec_acum, BigDecimal, size: [18, 2]
      column :vl_tot_rec, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :aliq_pis, BigDecimal, size: [18, 4]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 4]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :perc_rec_receb, BigDecimal, size: [18, 2]
      column :ind_nat_emp, String, size: 1
      column :inf_comp, String, size: 90
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
