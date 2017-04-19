Sequel.migration do
  change do
    create_table :reg_i100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_rec_fin, BigDecimal, size: [18, 2]
      column :cst, String, size: 2
      column :vl_tot_ded_ger, BigDecimal, size: [18, 2]
      column :vl_tot_ded_esp, BigDecimal, size: [18, 2]
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :aliq_pis, BigDecimal, size: [18, 2]
      column :vl_pis, BigDecimal, size: [18, 2]
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :aliq_cofins, BigDecimal, size: [18, 2]
      column :vl_cofins, BigDecimal, size: [18, 2]
      column :inf_comp, String, size: 90
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
