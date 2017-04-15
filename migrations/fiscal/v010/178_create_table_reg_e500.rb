Sequel.migration do
  change do
    create_table :reg_e500 do
      column :id, Bignum, :primary_key=>true
      column :id_pai, Bignum, :index=>true, :null=>false
      column :ind_apur, String, :size=>1
      column :dt_ini, Date
      column :dt_fin, Date
      column :cnpj_pai, String, :size=>14, :index=>true
    end
  end
end