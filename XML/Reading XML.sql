/*
+---------------------------------------------------------------------------------------------------------------+
| PT-BR: Exemplo sobre como Ler XML a partir de um clob, com dados filhos das tags ou como propriedade das tags |
| EN-US: Example on how to read XML from a clob, with data inside the tags or as tag property                   |
| Author: Cesar Castro                                                                                          |
+---------------------------------------------------------------------------------------------------------------+
*/
declare
v_xml XMLType := XMLType('<?xml version="1.0" encoding="UTF-8"?>
                  <courses>
                    <course>
                      <id>01</id>
                      <name>PL/SQL</name>
                      <duration>6</duration>
                    </course>
                    <course>
                      <id>02</id>
                      <name>JAVA</name>
                      <duration>8</duration>
                    </course>
                    <course>
                      <id>03</id>
                      <name>Algoritmos</name>
                      <duration>2</duration>
                    </course>
                  </courses>');


begin
  for r1 in (
            select ExtractValue(Value(x), '/course/id/text()') as id,
                   ExtractValue(Value(x), '/course/name/text()') as name,
                   ExtractValue(Value(x), '/course/duration/text()') as duration
              from table(XMLSequence(Extract(v_xml, '/courses/course'))) x
            ) loop
            dbms_output.put_line('ID: ' || r1.id || chr(10) || 'name: ' || r1.name || chr(10) || 'Duração: ' || r1.duration || chr(10));
            
  end loop;
end;  



declare
v_xml XMLType := XMLType('<?xml version="1.0" encoding="UTF-8"?>
                          <courses>
                            <course id="01" name="PL/SQL" duration="6" />
                            <course id="02" name="JAVA" duration="8" />
                            <course id="03" name="Algoritmos" duration="2" />
                          </courses>');


begin
  */
  for r1 in (
            select ExtractValue(Value(x), '/course/@id') as id,
                   ExtractValue(Value(x), '/course/@name') as name,
                   ExtractValue(Value(x), '/course/@duration') as duration
              from table(XMLSequence(Extract(v_xml, '/courses/course'))) x
            ) loop
            dbms_output.put_line('ID: ' || r1.id || chr(10) || 'name: ' || r1.name || chr(10) || 'Duração: ' || r1.duration || chr(10));
            
  end loop;
end;              
