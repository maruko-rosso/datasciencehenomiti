-- copyを利用したDBへのデータインポート
\copy datasets.bank_marketing_datasets from '(ファイルパス)' with csv header ENCODING'UTF-8';

--copyを利用したDBへのデータエクスポート
COPY datasets.bank_marketing_datasets TO '(ファイルパス)' WITH CSV DELIMITER E'\t' FORCE QUOTE * NULL AS '' HEADER;
