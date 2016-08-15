
SET ssurgo_tmp_sql=ssurgo_component.sql

IF EXIST %ssurgo_tmp_sql% del /F %ssurgo_tmp_sql%

for /f %%f in ('dir comp.txt /s /b') do (
@echo \copy ssurgo.component from %%f with csv delimiter as '^|' null as '' >> %ssurgo_tmp_sql%
)
psql -c "truncate table ssurgo.component;"

psql -f %ssurgo_tmp_sql%
 
