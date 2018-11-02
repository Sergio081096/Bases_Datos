/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     03/12/2017 04:05:59 a. m.                    */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_AVIONVUE_AVIONVUEL_VUELO') then
    alter table AVIONVUELO
       delete foreign key FK_AVIONVUE_AVIONVUEL_VUELO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AVIONVUE_AVIONVUEL_AVION') then
    alter table AVIONVUELO
       delete foreign key FK_AVIONVUE_AVIONVUEL_AVION
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESERVAC_RESERVACI_ASIENTO') then
    alter table RESERVACION
       delete foreign key FK_RESERVAC_RESERVACI_ASIENTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_RESERVAC_RESERVACI_VUELO') then
    alter table RESERVACION
       delete foreign key FK_RESERVAC_RESERVACI_VUELO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRIPULAC_TRABAJA_CARGO') then
    alter table TRIPULACION
       delete foreign key FK_TRIPULAC_TRABAJA_CARGO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRIPVUEL_TRIPVUELO_VUELO') then
    alter table TRIPVUELO
       delete foreign key FK_TRIPVUEL_TRIPVUELO_VUELO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRIPVUEL_TRIPVUELO_TRIPULAC') then
    alter table TRIPVUELO
       delete foreign key FK_TRIPVUEL_TRIPVUELO_TRIPULAC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VUELO_DESTINO_CIUDAD') then
    alter table VUELO
       delete foreign key FK_VUELO_DESTINO_CIUDAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_VUELO_ORIGEN_CIUDAD') then
    alter table VUELO
       delete foreign key FK_VUELO_ORIGEN_CIUDAD
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ASIENTO_PK'
     and t.table_name='ASIENTO'
) then
   drop index ASIENTO.ASIENTO_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ASIENTO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ASIENTO
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='AVION_PK'
     and t.table_name='AVION'
) then
   drop index AVION.AVION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AVION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AVION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='AVIONVUELO_FK'
     and t.table_name='AVIONVUELO'
) then
   drop index AVIONVUELO.AVIONVUELO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='AVIONVUELO2_FK'
     and t.table_name='AVIONVUELO'
) then
   drop index AVIONVUELO.AVIONVUELO2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='AVIONVUELO_PK'
     and t.table_name='AVIONVUELO'
) then
   drop index AVIONVUELO.AVIONVUELO_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AVIONVUELO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AVIONVUELO
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CARGO_PK'
     and t.table_name='CARGO'
) then
   drop index CARGO.CARGO_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CARGO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CARGO
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CIUDAD_PK'
     and t.table_name='CIUDAD'
) then
   drop index CIUDAD.CIUDAD_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CIUDAD'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CIUDAD
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RESERVACION_FK'
     and t.table_name='RESERVACION'
) then
   drop index RESERVACION.RESERVACION_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RESERVACION2_FK'
     and t.table_name='RESERVACION'
) then
   drop index RESERVACION.RESERVACION2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RESERVACION_PK'
     and t.table_name='RESERVACION'
) then
   drop index RESERVACION.RESERVACION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='RESERVACION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table RESERVACION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TRABAJA_FK'
     and t.table_name='TRIPULACION'
) then
   drop index TRIPULACION.TRABAJA_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TRIPULACION_PK'
     and t.table_name='TRIPULACION'
) then
   drop index TRIPULACION.TRIPULACION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TRIPULACION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TRIPULACION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TRIPVUELO_FK'
     and t.table_name='TRIPVUELO'
) then
   drop index TRIPVUELO.TRIPVUELO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TRIPVUELO2_FK'
     and t.table_name='TRIPVUELO'
) then
   drop index TRIPVUELO.TRIPVUELO2_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TRIPVUELO_PK'
     and t.table_name='TRIPVUELO'
) then
   drop index TRIPVUELO.TRIPVUELO_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TRIPVUELO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TRIPVUELO
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ORIGEN_FK'
     and t.table_name='VUELO'
) then
   drop index VUELO.ORIGEN_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='DESTINO_FK'
     and t.table_name='VUELO'
) then
   drop index VUELO.DESTINO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='VUELO_PK'
     and t.table_name='VUELO'
) then
   drop index VUELO.VUELO_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='VUELO'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table VUELO
end if;

/*==============================================================*/
/* Table: ASIENTO                                               */
/*==============================================================*/
create table ASIENTO 
(
   NUMASIENTO           integer                        not null,
   constraint PK_ASIENTO primary key (NUMASIENTO)
);

/*==============================================================*/
/* Index: ASIENTO_PK                                            */
/*==============================================================*/
create unique index ASIENTO_PK on ASIENTO (
NUMASIENTO ASC
);

/*==============================================================*/
/* Table: AVION                                                 */
/*==============================================================*/
create table AVION 
(
   IDAVION              varchar(10)                    not null,
   MODELO               varchar(20)                    not null,
   ASIENTOS             integer                        not null,
   constraint PK_AVION primary key (IDAVION)
);

/*==============================================================*/
/* Index: AVION_PK                                              */
/*==============================================================*/
create unique index AVION_PK on AVION (
IDAVION ASC
);

/*==============================================================*/
/* Table: AVIONVUELO                                            */
/*==============================================================*/
create table AVIONVUELO 
(
   NUMVUELO             integer                        not null,
   IDAVION              varchar(10)                    not null,
   DIA                  integer                        not null,
   constraint PK_AVIONVUELO primary key (NUMVUELO, IDAVION)
);

/*==============================================================*/
/* Index: AVIONVUELO_PK                                         */
/*==============================================================*/
create unique index AVIONVUELO_PK on AVIONVUELO (
NUMVUELO ASC,
IDAVION ASC
);

/*==============================================================*/
/* Index: AVIONVUELO2_FK                                        */
/*==============================================================*/
create index AVIONVUELO2_FK on AVIONVUELO (
IDAVION ASC
);

/*==============================================================*/
/* Index: AVIONVUELO_FK                                         */
/*==============================================================*/
create index AVIONVUELO_FK on AVIONVUELO (
NUMVUELO ASC
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO 
(
   IDCARGO              integer                        not null,
   NOMCARGO             varchar(20)                    not null,
   constraint PK_CARGO primary key (IDCARGO)
);

/*==============================================================*/
/* Index: CARGO_PK                                              */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
IDCARGO ASC
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD 
(
   IDCIUDAD             varchar(5)                     not null,
   NOMCIUDAD            varchar(20)                    not null,
   constraint PK_CIUDAD primary key (IDCIUDAD)
);

/*==============================================================*/
/* Index: CIUDAD_PK                                             */
/*==============================================================*/
create unique index CIUDAD_PK on CIUDAD (
IDCIUDAD ASC
);

/*==============================================================*/
/* Table: RESERVACION                                           */
/*==============================================================*/
create table RESERVACION 
(
   NUMASIENTO           integer                        not null,
   NUMVUELO             integer                        not null,
   DIA                  integer                        not null,
   PERSONA              varchar(40)                    not null,
   constraint PK_RESERVACION primary key (NUMASIENTO, NUMVUELO)
);

/*==============================================================*/
/* Index: RESERVACION_PK                                        */
/*==============================================================*/
create unique index RESERVACION_PK on RESERVACION (
NUMASIENTO ASC,
NUMVUELO ASC
);

/*==============================================================*/
/* Index: RESERVACION2_FK                                       */
/*==============================================================*/
create index RESERVACION2_FK on RESERVACION (
NUMVUELO ASC
);

/*==============================================================*/
/* Index: RESERVACION_FK                                        */
/*==============================================================*/
create index RESERVACION_FK on RESERVACION (
NUMASIENTO ASC
);

/*==============================================================*/
/* Table: TRIPULACION                                           */
/*==============================================================*/
create table TRIPULACION 
(
   NUMTRIP              varchar(10)                    not null,
   IDCARGO              integer                        not null,
   NOMTRIP              varchar(20)                    not null,
   HORAS                decimal(2)                     not null,
   constraint PK_TRIPULACION primary key (NUMTRIP)
);

/*==============================================================*/
/* Index: TRIPULACION_PK                                        */
/*==============================================================*/
create unique index TRIPULACION_PK on TRIPULACION (
NUMTRIP ASC
);

/*==============================================================*/
/* Index: TRABAJA_FK                                            */
/*==============================================================*/
create index TRABAJA_FK on TRIPULACION (
IDCARGO ASC
);

/*==============================================================*/
/* Table: TRIPVUELO                                             */
/*==============================================================*/
create table TRIPVUELO 
(
   NUMVUELO             integer                        not null,
   NUMTRIP              varchar(10)                    not null,
   DIA                  integer                        not null,
   constraint PK_TRIPVUELO primary key (NUMVUELO, NUMTRIP)
);

/*==============================================================*/
/* Index: TRIPVUELO_PK                                          */
/*==============================================================*/
create unique index TRIPVUELO_PK on TRIPVUELO (
NUMVUELO ASC,
NUMTRIP ASC
);

/*==============================================================*/
/* Index: TRIPVUELO2_FK                                         */
/*==============================================================*/
create index TRIPVUELO2_FK on TRIPVUELO (
NUMTRIP ASC
);

/*==============================================================*/
/* Index: TRIPVUELO_FK                                          */
/*==============================================================*/
create index TRIPVUELO_FK on TRIPVUELO (
NUMVUELO ASC
);

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO 
(
   NUMVUELO             integer                        not null,
   CDDESTINO            varchar(5)                     not null,
   CDORIGEN             varchar(5)                     not null,
   TIEMPO               decimal(2)                     not null,
   FRECUENCIA           integer                        not null,
   HRSALIDA             time                           not null,
   HRLLEGADA            time                           not null,
   constraint PK_VUELO primary key (NUMVUELO)
);

/*==============================================================*/
/* Index: VUELO_PK                                              */
/*==============================================================*/
create unique index VUELO_PK on VUELO (
NUMVUELO ASC
);

/*==============================================================*/
/* Index: DESTINO_FK                                            */
/*==============================================================*/
create index DESTINO_FK on VUELO (
CDDESTINO ASC
);

/*==============================================================*/
/* Index: ORIGEN_FK                                             */
/*==============================================================*/
create index ORIGEN_FK on VUELO (
CDORIGEN ASC
);

alter table AVIONVUELO
   add constraint FK_AVIONVUE_AVIONVUEL_VUELO foreign key (NUMVUELO)
      references VUELO (NUMVUELO)
      on update restrict
      on delete restrict;

alter table AVIONVUELO
   add constraint FK_AVIONVUE_AVIONVUEL_AVION foreign key (IDAVION)
      references AVION (IDAVION)
      on update restrict
      on delete restrict;

alter table RESERVACION
   add constraint FK_RESERVAC_RESERVACI_ASIENTO foreign key (NUMASIENTO)
      references ASIENTO (NUMASIENTO)
      on update restrict
      on delete restrict;

alter table RESERVACION
   add constraint FK_RESERVAC_RESERVACI_VUELO foreign key (NUMVUELO)
      references VUELO (NUMVUELO)
      on update restrict
      on delete restrict;

alter table TRIPULACION
   add constraint FK_TRIPULAC_TRABAJA_CARGO foreign key (IDCARGO)
      references CARGO (IDCARGO)
      on update restrict
      on delete restrict;

alter table TRIPVUELO
   add constraint FK_TRIPVUEL_TRIPVUELO_VUELO foreign key (NUMVUELO)
      references VUELO (NUMVUELO)
      on update restrict
      on delete restrict;

alter table TRIPVUELO
   add constraint FK_TRIPVUEL_TRIPVUELO_TRIPULAC foreign key (NUMTRIP)
      references TRIPULACION (NUMTRIP)
      on update restrict
      on delete restrict;

alter table VUELO
   add constraint FK_VUELO_DESTINO_CIUDAD foreign key (CDDESTINO)
      references CIUDAD (IDCIUDAD)
      on update restrict
      on delete restrict;

alter table VUELO
   add constraint FK_VUELO_ORIGEN_CIUDAD foreign key (CDORIGEN)
      references CIUDAD (IDCIUDAD)
      on update restrict
      on delete restrict;

