Sequel.migration do
  change do
    create_table :reg_f600 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_nat_ret, String, size: 2
      column :dt_ret, Date
      column :vl_bc_ret, BigDecimal, size: [18, 4]
      column :vl_ret, BigDecimal, size: [18, 2]
      column :cod_rec, String, size: 4
      column :ind_nat_rec, String, size: 1
      column :cnpj, String, size: 14
      column :vl_ret_pis, BigDecimal, size: [18, 2]
      column :vl_ret_cofins, BigDecimal, size: [18, 2]
      column :ind_dec, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
