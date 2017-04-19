Sequel.migration do
  change do
    create_table :reg_0150 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_part, String, size: 60
      column :nome, String, size: 100
      column :cod_pais, String, size: 5
      column :cnpj, String, size: 14
      column :cpf, String, size: 11
      column :ie, String, size: 14
      column :cod_mun, String, size: 7
      column :suframa, String, size: 9
      column :endereco, String, size: 60
      column :num, String, size: 10
      column :compl, String, size: 60
      column :bairro, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
