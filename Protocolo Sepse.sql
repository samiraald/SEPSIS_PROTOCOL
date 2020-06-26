/*
CREATED BY SAMIRA ALVES LUCIO DIAS
DATE: 27/04/2020
GOAL: Report developed to report when a new protocol report has been opened  and reported by nursing team
*/

SELECT 
     paciente.cd_paciente
    ,paciente.NM_paciente
    ,atendime.cd_atendimento
    ,leito.ds_leito
    ,unid_int.ds_unid_int
    ,documento.ds_documento
    ,registro_documento.dt_registro

FROM  paciente paciente
         
INNER JOIN atendime atendime
ON atendime.cd_paciente = paciente.cd_paciente
INNER JOIN leito leito
ON leito.cd_leito = atendime.cd_leito
INNER JOIN unid_int
ON leito.cd_unid_int = unid_int.cd_unid_int
INNER JOIN registro_documento registro_documento
ON registro_documento.cd_atendimento = atendime.cd_atendimento
INNER JOIN documento documento
ON documento.cd_documento = registro_documento.cd_documento
WHERE atendime.CD_MULTI_EMPRESA = '3'
AND documento.cd_documento IN (810,775)
and registro_documento.dt_registro between to_date ('01/08/2019','dd/mm/yyyy') and to_date ('30/11/2019','dd/mm/yyyy')
ORDER BY unid_int.ds_unid_int ASC;

