CREATE VIEW ORCID AS SELECT * FROM parquet_scan('/Users/ali/Downloads/example_ORCID_XMLs/output/*.parquet');

SELECT * from orcid limit 100;

SELECT count(*), count(DISTINCT orcid_id), COUNT(DISTINCT first_name), COUNT(DISTINCT last_name) from main.orcid;

