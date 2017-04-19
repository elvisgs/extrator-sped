Sequel.migration do
  change do
    create_table :reg_0300 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_ind_bem, String, size: 60
      column :ident_merc, String, size: 1
      column :descr_item, String, size: 1000
      column :cod_prnc, String, size: 60
      column :cod_cta, String, size: 60
      column :nr_parc, String, size: 3
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
