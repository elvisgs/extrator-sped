Sequel.migration do
  change do
    create_table :reg_m350 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_tot_fol, BigDecimal, size: [18, 2]
      column :vl_exc_bc, BigDecimal, size: [18, 2]
      column :vl_tot_bc, BigDecimal, size: [18, 2]
      column :aliq_pis_fol, BigDecimal, size: [18, 2]
      column :vl_tot_cont_fol, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
