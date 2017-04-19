Sequel.migration do
  change do
    create_table :reg_g130 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_emit, String, size: 1
      column :cod_part, String, size: 60
      column :cod_mod, String, size: 2
      column :serie, String, size: 3
      column :num_doc, String, size: 9
      column :chv_nfe_cte, String, size: 44
      column :dt_doc, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
