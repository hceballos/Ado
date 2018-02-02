SELECT auxiliar, lower(nombre) as NOMBRE,  sum (debe - haber) as SALDO_SEMANA_ACTUAL FROM MovimientosTabla INNER JOIN complemento ON MovimientosTabla.AUXILIAR = complemento.rut WHERE cuenta=? GROUP BY auxiliar HAVING auxiliar and SALDO_SEMANA_ACTUAL  ORDER BY SALDO_SEMANA_ACTUAL desc LIMIT 10