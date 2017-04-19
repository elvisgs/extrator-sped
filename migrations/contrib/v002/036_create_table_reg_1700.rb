Sequel.migration do
  change do
    create_table :reg_1700 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_nat_ret, String, size: 2
      column :pr_rec_ret, String, size: 6
      column :vl_ret_apu, BigDecimal, size: [18, 2]
      column :vl_ret_ded, BigDecimal, size: [18, 2]
      column :vl_ret_per, BigDecimal, size: [18, 2]
      column :vl_ret_dcomp, BigDecimal, size: [18, 2]
      column :sld_ret, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
