Sequel.migration do
  change do
    create_table :reg_0175 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_alt, Date
      column :nr_campo, String, size: 2
      column :cont_ant, String, size: 100
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
