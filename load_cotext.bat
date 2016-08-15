
SET ssurgo_tmp_sql=ssurgo_cotext.sql

IF EXIST %ssurgo_tmp_sql% del /F %ssurgo_tmp_sql%

for /f %%f in ('dir ctext.txt /s /b') do (
@echo \copy ssurgo.cotext from %%f with csv delimiter as '^|' null as '' >> %ssurgo_tmp_sql%
)
psql -c "truncate table ssurgo.cotext;"

psql -f %ssurgo_tmp_sql%
 
