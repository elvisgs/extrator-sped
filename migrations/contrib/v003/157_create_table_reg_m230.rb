Sequel.migration do
  change do
    create_table :reg_m230 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cnpj, String, size: 14
      column :vl_vend, BigDecimal, size: [18, 2]
      column :vl_nao_receb, BigDecimal, size: [18, 2]
      column :vl_cont_dif, BigDecimal, size: [18, 2]
      column :vl_cred_dif, BigDecimal, size: [18, 2]
      column :cod_cred, String, size: 3
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
