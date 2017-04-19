Sequel.migration do
  change do
    create_table :reg_1010 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_proc, String, size: 20
      column :id_sec_jud, String, size: 1000
      column :id_vara, String, size: 2
      column :ind_nat_acao, String, size: 2
      column :desc_dec_jud, String, size: 100
      column :dt_sent_jud, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end
