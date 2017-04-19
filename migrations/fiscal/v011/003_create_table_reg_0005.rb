Sequel.migration do
  change do
    create_table :reg_0005 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :fantasia, String, size: 60
      column :cep, String, size: 8
      column :endereco, String, size: 60
      column :num, String, size: 10
      column :compl, String, size: 60
      column :bairro, String, size: 60
      column :fone, String, size: 11
      column :fax, String, size: 11
      column :email, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
