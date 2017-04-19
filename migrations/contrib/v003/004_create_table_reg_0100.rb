Sequel.migration do
  change do
    create_table :reg_0100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :nome, String, size: 100
      column :cpf, String, size: 11
      column :crc, String, size: 15
      column :cnpj, String, size: 14
      column :cep, String, size: 8
      column :end, String, size: 60
      column :num, String, size: 1000
      column :compl, String, size: 60
      column :bairro, String, size: 60
      column :fone, String, size: 11
      column :fax, String, size: 11
      column :email, String, size: 1000
      column :cod_mun, String, size: 7
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
