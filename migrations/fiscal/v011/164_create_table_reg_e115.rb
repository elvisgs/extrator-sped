Sequel.migration do
  change do
    create_table :reg_e115 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_inf_adic, String, size: 8
      column :vl_inf_adic, BigDecimal, size: [18, 2]
      column :descr_compl_aj, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
