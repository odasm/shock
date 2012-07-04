DROP PROCEDURE 'tsaip'.proc_servinvoketrends_insert(datetime,datetime);

CREATE PROCEDURE "tsaip".proc_servinvoketrends_insert(
         BEGIN_TIME DATETIME YEAR TO FRACTION(3),
         END_TIME DATETIME YEAR TO FRACTION(3))
    /************************************************************************
    *NAME        : proc_ServInvokeTrends_Insert
    *FUNCTION    : ?????¡À??¡Á?aip_message??????serv_invoke_trends_seq
    *INPUT       :
    *OUTPUT      :
    *AUTHOR      :
    *CREATEDATE  :
    *UPDATEDATE  ??
    *************************************************************************/
    
    /*  data_sql  varchar2(1024);
    beginTime DATE := BEGIN_TIME;
    endTime   DATE := END_TIME;
    */
    BEGIN
        INSERT INTO serv_invoke_trends(
                 serv_invoke_id,
                 serv_invoke_time,
                 serv_invoke_state,
                 serv_invoke_num)
        SELECT serv_invoke_trends_seq.nextval, BEGIN_TIME, m.a, m.b
        FROM(
                SELECT service_state AS a, COUNT(*) AS b
                FROM aip_message
                WHERE receive_time BETWEEN BEGIN_TIME
                     AND END_TIME
                GROUP BY service_state) m;
        
        /*  execute immediate data_sql;*/
        INSERT INTO aip_analysis_end_time
        VALUES(
                 aip_analysis_time_id.nextval,
                 END_TIME,
                 'serv_invoke_trends');
         COMMIT;
    END
END PROCEDURE;