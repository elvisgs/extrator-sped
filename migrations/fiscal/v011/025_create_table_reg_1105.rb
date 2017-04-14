Sequel.migration do
  change do
    create_table :reg_1105 do
      column :id, Integer, :primary_key=>true
      column :id_pai, Integer, :index=>true, :null=>false
      column :cod_mod, String, :size=>2
      column :ser, String, :size=>3
      column :num_doc, String, :size=>9
      column :chv_nfe, String, :size=>44
      column :dt_doc, Date
      column :cod_item, String, :size=>60
      column :cnpj_pai, String, :size=>14, :index=>true
    end
  end
end