Sequel.migration do
  change do
    create_table :reg_0110 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_inc_trib, String, size: 1
      column :ind_apro_cred, String, size: 1
      column :cod_tipo_cont, String, size: 1
      column :ind_reg_cum, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
