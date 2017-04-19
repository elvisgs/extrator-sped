Sequel.migration do
  change do
    create_table :reg_d530 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_serv, String, size: 1
      column :dt_ini_serv, Date
      column :dt_fin_serv, Date
      column :per_fiscal, String, size: 6
      column :cod_area, String, size: 1000
      column :terminal, Integer
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
