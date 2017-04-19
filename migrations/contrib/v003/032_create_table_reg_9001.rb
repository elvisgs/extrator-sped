Sequel.migration do
  change do
    create_table :reg_9001 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_mov, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
