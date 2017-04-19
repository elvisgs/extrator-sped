Sequel.migration do
  change do
    create_table :reg_0205 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :descr_ant_item, String, size: 1000
      column :dt_ini, Date
      column :dt_fim, Date
      column :cod_ant_item, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
