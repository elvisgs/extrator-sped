Sequel.migration do
  change do
    create_table :reg_d161 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_carga, String, size: 1
      column :cnpj_cpf_col, String, size: 14
      column :ie_col, String, size: 14
      column :cod_mun_col, String, size: 7
      column :cnpj_cpf_entg, String, size: 14
      column :ie_entg, String, size: 14
      column :cod_mun_entg, String, size: 7
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
