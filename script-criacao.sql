-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-05-12 19:16:11 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE CONTATO 
    ( 
     id_contato  INTEGER  NOT NULL , 
     nome        VARCHAR2 (100)  NOT NULL , 
     email       VARCHAR2 (200) , 
     data_nasci  DATE , 
     foto_perfil VARCHAR2 (255) 
    ) 
;

ALTER TABLE CONTATO 
    ADD CONSTRAINT CONTATO_PK PRIMARY KEY ( id_contato ) ;

CREATE TABLE ENDEREÇO 
    ( 
     id_endereco        INTEGER  NOT NULL , 
     logradouro         VARCHAR2 (100)  NOT NULL , 
     numero             VARCHAR2 (10)  NOT NULL , 
     complemento        VARCHAR2 (50) , 
     bairro             VARCHAR2 (50)  NOT NULL , 
     cidade             VARCHAR2 (50)  NOT NULL , 
     estado             VARCHAR2 (50)  NOT NULL , 
     cep                VARCHAR2 (10)  NOT NULL , 
     pais               VARCHAR2 (50) , 
     CONTATO_id_contato INTEGER  NOT NULL 
    ) 
;

ALTER TABLE ENDEREÇO 
    ADD CONSTRAINT ENDEREÇO_PK PRIMARY KEY ( id_endereco ) ;

CREATE TABLE TELEFONE 
    ( 
     id_telefone        INTEGER  NOT NULL , 
     numero             VARCHAR2 (20)  NOT NULL , 
     tipo               VARCHAR2 (20) , 
     CONTATO_id_contato INTEGER  NOT NULL 
    ) 
;

ALTER TABLE TELEFONE 
    ADD CONSTRAINT TELEFONE_PK PRIMARY KEY ( id_telefone ) ;

ALTER TABLE ENDEREÇO 
    ADD CONSTRAINT ENDEREÇO_CONTATO_FK FOREIGN KEY 
    ( 
     CONTATO_id_contato
    ) 
    REFERENCES CONTATO 
    ( 
     id_contato
    ) 
;

ALTER TABLE TELEFONE 
    ADD CONSTRAINT TELEFONE_CONTATO_FK FOREIGN KEY 
    ( 
     CONTATO_id_contato
    ) 
    REFERENCES CONTATO 
    ( 
     id_contato
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
