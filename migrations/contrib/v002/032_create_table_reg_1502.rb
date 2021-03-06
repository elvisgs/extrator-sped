Sequel.migration do
  change do
    create_table :reg_1502 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_cred_cofins_trib_mi, BigDecimal, size: [18, 2]
      column :vl_cred_cofins_nt_mi, BigDecimal, size: [18, 2]
      column :vl_cred_cofins_exp, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
