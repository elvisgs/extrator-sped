Sequel.migration do
  change do
    create_table :reg_d180 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_seq, Integer
      column :ind_emit, String, size: 1
      column :cnpj_cpf_emit, String, size: 14
      column :uf_emit, String, size: 2
      column :ie_emit, String, size: 14
      column :cod_mun_orig, String, size: 7
      column :cnpj_cpf_tom, String, size: 14
      column :uf_tom, String, size: 2
      column :ie_tom, String, size: 14
      column :cod_mun_dest, String, size: 7
      column :cod_mod, String, size: 2
      column :ser, String, size: 4
      column :sub, String, size: 3
      column :num_doc, String, size: 9
      column :dt_doc, Date
      column :vl_doc, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
