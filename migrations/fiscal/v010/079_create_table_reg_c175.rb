Sequel.migration do
  change do
    create_table :reg_c175 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_veic_oper, String, size: 1
      column :cnpj, String, size: 14
      column :uf, String, size: 2
      column :chassi_veic, String, size: 17
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
