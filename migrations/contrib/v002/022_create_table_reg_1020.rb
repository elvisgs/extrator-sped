Sequel.migration do
  change do
    create_table :reg_1020 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_proc, String, size: 20
      column :ind_nat_acao, String, size: 2
      column :dt_dec_adm, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
