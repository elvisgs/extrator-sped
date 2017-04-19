Sequel.migration do
  change do
    create_table :reg_0000 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true
      column :cod_ver, String, size: 3
      column :cod_fin, String, size: 1
      column :dt_ini, Date
      column :dt_fin, Date
      column :nome, String, size: 100
      column :cnpj, String, size: 14
      column :cpf, String, size: 11
      column :uf, String, size: 2
      column :ie, String, size: 14
      column :cod_mun, String, size: 7
      column :im, String, size: 1000
      column :suframa, String, size: 9
      column :ind_perfil, String, size: 1
      column :ind_ativ, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
