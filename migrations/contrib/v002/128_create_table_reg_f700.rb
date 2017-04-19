Sequel.migration do
  change do
    create_table :reg_f700 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_ori_ded, String, size: 2
      column :ind_nat_ded, String, size: 1
      column :vl_ded_pis, BigDecimal, size: [18, 2]
      column :vl_ded_cofins, BigDecimal, size: [18, 2]
      column :vl_bc_oper, BigDecimal, size: [18, 2]
      column :cnpj, String, size: 14
      column :inf_comp, String, size: 90
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
