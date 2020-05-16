
--　DBの中にテーブルの箱を作成
create table datasets.bank_marketing_datasets (
SNO integer,
age integer ,
job varchar ,
marital varchar ,
education varchar ,
default_credit varchar ,
housing varchar ,
loan varchar ,
contact varchar ,
last_contact_month varchar ,
day_of_week varchar ,
duration integer ,
campaign integer ,
pdays integer ,
previous integer ,
poutcome varchar ,
emp_var_rate numeric ,
cons_price_idx numeric ,
cons_conf_idx numeric ,
euribor3m numeric ,
nr_employed numeric ,
y varchar
  ) ;


  


--プライマーキーを設定
alter table test.bank_marketing_datasets ADD PRIMARY KEY (SNO)

--論理名を追記
COMMENT ON COLLOM test.bank_marketing_datasets.SNO IS 'サンプルナンバー'
COMMENT ON COLLOM test.bank_marketing_datasets.age IS '年齢'
COMMENT ON COLLOM test.bank_marketing_datasets IS ''
COMMENT ON COLLOM test.bank_marketing_datasets IS ''
COMMENT ON COLLOM test.bank_marketing_datasets IS ''
