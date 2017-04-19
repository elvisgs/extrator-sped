Sequel.migration do
  change do
    create_table :reg_0500 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_alt, Date
      column :cod_nat_cc, String, size: 2
      column :ind_cta, String, size: 1
      column :nivel, String, size: 5
      column :cod_cta, String, size: 60
      column :nome_cta, String, size: 60
      column :cod_cta_ref, String, size: 60
      column :cnpj_est, String, size: 14
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
