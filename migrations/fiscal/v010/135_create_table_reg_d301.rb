Sequel.migration do
  change do
    create_table :reg_d301 do
      column :id, Integer, :primary_key=>true
      column :id_pai, Integer, :index=>true, :null=>false
      column :num_doc_canc, Integer
      column :cnpj_pai, String, :size=>14, :index=>true
    end
  end
end