Sequel.migration do
  change do
    create_table :reg_1100 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :ind_doc, String, size: 1
      column :nro_de, String, size: 11
      column :dt_de, Date
      column :nat_exp, String, size: 1
      column :nro_re, String, size: 12
      column :dt_re, Date
      column :chc_emb, String, size: 18
      column :dt_chc, Date
      column :dt_avb, Date
      column :tp_chc, String, size: 2
      column :pais, String, size: 3
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
