Sequel.migration do
  change do
    create_table :reg_f800 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_nat_even, String, size: 2
      column :dt_even, Date
      column :cnpj_suced, String, size: 14
      column :pa_cont_cred, String, size: 6
      column :cod_cred, String, size: 3
      column :vl_cred_pis, BigDecimal, size: [18, 2]
      column :vl_cred_cofins, BigDecimal, size: [18, 2]
      column :per_cred_cis, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
