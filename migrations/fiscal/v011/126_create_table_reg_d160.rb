Sequel.migration do
  change do
    create_table :reg_d160 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :despacho, String, size: 1000
      column :cnpj_cpf_rem, String, size: 14
      column :ie_rem, String, size: 14
      column :cod_mun_ori, String, size: 7
      column :cnpj_cpf_dest, String, size: 14
      column :ie_dest, String, size: 14
      column :cod_mun_dest, String, size: 7
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
