SELECT a.cd_paciente, b.cd_atendimento, a.NM_paciente, d.ds_unid_int, c.ds_leito, e.ds_documento, f.dt_registro
FROM paciente a,
     atendime b,
     leito c,
     unid_int d,
     documento e,
     registro_documento f
WHERE a.cd_paciente=b.cd_paciente
AND b.cd_leito=c.cd_leito
AND c.cd_unid_int=d.cd_unid_int
AND b.cd_atendimento=f.cd_atendimento
AND f.cd_documento=e.cd_documento
AND B.CD_MULTI_EMPRESA=3
AND e.cd_documento IN (810,775)
and f.dt_registro between to_date ('01/08/2019','dd/mm/yyyy') and to_date ('30/11/2019','dd/mm/yyyy')
ORDER BY d.ds_unid_int ASC;

select * from dbamv.vdic_paciente;