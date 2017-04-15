Sequel.migration do
  change do
    create_table :reg_c111 do
      column :id, Bignum, :primary_key=>true
      column :id_pai, Bignum, :index=>true, :null=>false
      column :num_proc, String, :size=>15
      column :ind_proc, String, :size=>1
      column :cnpj_pai, String, :size=>14, :index=>true
    end
  end
end