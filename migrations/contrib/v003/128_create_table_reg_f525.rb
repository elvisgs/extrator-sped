Sequel.migration do
  change do
    create_table :reg_f525 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :vl_rec, BigDecimal, size: [18, 2]
      column :ind_rec, String, size: 2
      column :cnpj_cpf, String, size: 14
      column :num_doc, String, size: 60
      column :cod_item, String, size: 60
      column :vl_rec_det, BigDecimal, size: [18, 2]
      column :cst_pis, String, size: 2
      column :cst_cofins, String, size: 2
      column :info_compl, String
      column :cod_cta, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
