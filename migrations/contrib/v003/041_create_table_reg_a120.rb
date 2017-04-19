Sequel.migration do
  change do
    create_table :reg_a120 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_tot_serv, BigDecimal, size: [18, 2]
      column :vl_bc_pis, BigDecimal, size: [18, 2]
      column :vl_pis_imp, BigDecimal, size: [18, 2]
      column :dt_pag_pis, Date
      column :vl_bc_cofins, BigDecimal, size: [18, 2]
      column :vl_cofins_imp, BigDecimal, size: [18, 2]
      column :dt_pag_cofins, Date
      column :loc_exe_serv, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
