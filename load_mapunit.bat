
SET ssurgo_tmp_sql=ssurgo_mapunit.sql

IF EXIST %ssurgo_tmp_sql% del /F %ssurgo_tmp_sql%

for /f %%f in ('dir mapunit.txt /s /b') do (
@echo \copy ssurgo.mapunit from %%f with csv delimiter as '^|' null as '' >> %ssurgo_tmp_sql%
)
psql -c "truncate table ssurgo.mapunit;"

psql -f %ssurgo_tmp_sql%
 
