/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      NYC_Parking_ViolationsDM.DM1
 *
 * Date Created : Monday, December 07, 2020 06:31:47
 * Target DBMS : Microsoft SQL Server 2017
 */

/* 
 * TABLE: Dim_Date 
 */

CREATE TABLE Dim_Date(
    DateKey_SK          int             IDENTITY(1,1),
    FullDateKey         date            NOT NULL,
    Year                int             NOT NULL,
    Quarter             int             NOT NULL,
    Month               int             NOT NULL,
    Day                 int             NOT NULL,
    SOR_ID              int             NULL,
    SOR_LoadDate        datetime        NULL,
    SOR_UpdateDate      datetime        NULL,
    DI_Job_ID           nvarchar(20)    NULL,
    DI_Create_Date      datetime        NOT NULL,
    DI_Modified_Date    datetime        NOT NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (DateKey_SK)
)
go



IF OBJECT_ID('Dim_Date') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Date >>>'
go

/* 
 * TABLE: Dim_IssuingAgency 
 */

CREATE TABLE Dim_IssuingAgency(
    IssuingAgency_SK             int             IDENTITY(1,1),
    IssuingAgency                varchar(255)    NULL,
    IssuingAgency_Description    varchar(80)     NOT NULL,
    Issuer_Precint               int             NULL,
    Issuer_code                  int             NULL,
    Issuer_Command               varchar(255)    NULL,
    Issuer_Squad                 varchar(255)    NULL,
    SOR_ID                       int             NULL,
    SOR_LoadDate                 datetime        NULL,
    SOR_UpdateDate               datetime        NULL,
    DI_Job_ID                    nvarchar(20)    NULL,
    DI_Create_Date               datetime        NOT NULL,
    DI_Modified_Date             datetime        NOT NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (IssuingAgency_SK)
)
go



IF OBJECT_ID('Dim_IssuingAgency') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_IssuingAgency >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_IssuingAgency >>>'
go

/* 
 * TABLE: Dim_license 
 */

CREATE TABLE Dim_license(
    License_SK                int             IDENTITY(1,1),
    License_Type              varchar(20)     NULL,
    License_SK_Description    varchar(80)     NULL,
    SOR_ID                    int             NULL,
    SOR_LoadDate              datetime        NULL,
    SOR_UpdateDate            datetime        NULL,
    DI_Job_ID                 nvarchar(20)    NULL,
    DI_Create_Date            datetime        NOT NULL,
    DI_Modified_Date          datetime        NOT NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (License_SK)
)
go



IF OBJECT_ID('Dim_license') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_license >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_license >>>'
go

/* 
 * TABLE: Dim_Plate 
 */

CREATE TABLE Dim_Plate(
    PlateID_SK             int             IDENTITY(1,1),
    PlateID_NK             varchar(80)     NOT NULL,
    PlateID_Description    varchar(80)     NULL,
    SOR_ID                 int             NULL,
    SOR_LoadDate           datetime        NULL,
    SOR_UpdateDate         datetime        NULL,
    DI_Job_ID              nvarchar(20)    NULL,
    DI_Create_Date         datetime        NOT NULL,
    DI_Modified_Date       datetime        NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (PlateID_SK)
)
go



IF OBJECT_ID('Dim_Plate') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Plate >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Plate >>>'
go

/* 
 * TABLE: Dim_RegistrationState 
 */

CREATE TABLE Dim_RegistrationState(
    RegistrationState_SK             int             IDENTITY(1,1),
    RegistrationState_NK             varchar(80)     NOT NULL,
    RegistrationState_Description    varchar(80)     NULL,
    SOR_ID                           int             NULL,
    SOR_LoadDate                     datetime        NULL,
    SOR_UpdateDate                   datetime        NULL,
    DI_Job_ID                        nvarchar(20)    NULL,
    DI_Create_Date                   datetime        NOT NULL,
    DI_Modified_Date                 datetime        NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (RegistrationState_SK)
)
go



IF OBJECT_ID('Dim_RegistrationState') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_RegistrationState >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_RegistrationState >>>'
go

/* 
 * TABLE: Dim_VehicleBodyType 
 */

CREATE TABLE Dim_VehicleBodyType(
    VehicleBodyType_SK     int             IDENTITY(1,1),
    VehicleBodyType_NK     varchar(80)     NOT NULL,
    Vehicle_Description    varchar(80)     NULL,
    SOR_ID                 int             NULL,
    SOR_LoadDate           datetime        NULL,
    SOR_UpdateDate         datetime        NULL,
    DI_Job_ID              nvarchar(20)    NULL,
    DI_Create_Date         datetime        NOT NULL,
    DI_Modified_Date       datetime        NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (VehicleBodyType_SK)
)
go



IF OBJECT_ID('Dim_VehicleBodyType') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VehicleBodyType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VehicleBodyType >>>'
go

/* 
 * TABLE: Dim_VehicleMake 
 */

CREATE TABLE Dim_VehicleMake(
    VehicleMake_SK             int             IDENTITY(1,1),
    VehicleBodyType_SK         int             NOT NULL,
    VehicleMake_NK             varchar(80)     NOT NULL,
    VehicleMake_Description    varchar(80)     NULL,
    SOR_ID                     int             NULL,
    SOR_LoadDate               datetime        NULL,
    SOR_UpdateDate             datetime        NULL,
    DI_Job_ID                  nvarchar(20)    NULL,
    DI_Create_Date             datetime        NOT NULL,
    DI_Modified_Date           datetime        NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (VehicleMake_SK, VehicleBodyType_SK)
)
go



IF OBJECT_ID('Dim_VehicleMake') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_VehicleMake >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_VehicleMake >>>'
go

/* 
 * TABLE: Dim_ViolationCode 
 */

CREATE TABLE Dim_ViolationCode(
    ViolationCode_SK         int             IDENTITY(1,1),
    ViolationCode_NK         int             NOT NULL,
    Violation_Legal_Code     varchar(80)     NULL,
    Violation_description    varchar(255)    NULL,
    SOR_ID                   int             NULL,
    SOR_LoadDate             datetime        NULL,
    SOR_UpdateDate           datetime        NULL,
    DI_Job_ID                nvarchar(20)    NULL,
    DI_Create_Date           datetime        NOT NULL,
    DI_Modified_Date         datetime        NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (ViolationCode_SK)
)
go



IF OBJECT_ID('Dim_ViolationCode') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_ViolationCode >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_ViolationCode >>>'
go

/* 
 * TABLE: Dim_ViolationCounty 
 */

CREATE TABLE Dim_ViolationCounty(
    ViolationCounty_SK               int              IDENTITY(1,1),
    ViolationCounty_NK               nvarchar(255)    NULL,
    ViolationCounty_Description      nvarchar(80)     NULL,
    Violation_Infront_Or_Opposite    nvarchar(80)     NULL,
    Street_Code1                     int              NULL,
    Street_Code2                     int              NULL,
    Street_Code3                     int              NULL,
    House_Number                     nvarchar(80)     NULL,
    Street_Name                      nvarchar(255)    NULL,
    Intersecting_Street              nvarchar(255)    NULL,
    Violation_PostCode               nvarchar(20)     NULL,
    SOR_ID                           int              NULL,
    SOR_LoadDate                     datetime         NULL,
    SOR_UpdateDate                   datetime         NULL,
    DI_Job_ID                        nvarchar(20)     NULL,
    DI_Create_Date                   datetime         NOT NULL,
    DI_Modified_Date                 datetime         NOT NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (ViolationCounty_SK)
)
go



IF OBJECT_ID('Dim_ViolationCounty') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_ViolationCounty >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_ViolationCounty >>>'
go

/* 
 * TABLE: Dim_ViolationPrecint 
 */

CREATE TABLE Dim_ViolationPrecint(
    Violation_Precint_SK    int             IDENTITY(1,1),
    Violation_Precint       int             NULL,
    SOR_ID                  int             NULL,
    SOR_LoadDate            datetime        NULL,
    SOR_UpdateDate          datetime        NULL,
    DI_Job_ID               nvarchar(20)    NULL,
    DI_Create_Date          datetime        NOT NULL,
    DI_Modified_Date        datetime        NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (Violation_Precint_SK)
)
go



IF OBJECT_ID('Dim_ViolationPrecint') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_ViolationPrecint >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_ViolationPrecint >>>'
go

/* 
 * TABLE: Fact_OpenParking_CameraViolations 
 */

CREATE TABLE Fact_OpenParking_CameraViolations(
    SummonsNumber_SK           int               IDENTITY(1,1),
    SummonsNumber_NK           int               NULL,
    ViolationTime              datetime          NULL,
    Violation_Time_SK          int               NULL,
    Violation_Time_Char        nvarchar(20)      NULL,
    Issue_Date                 datetime          NULL,
    Violation_Precint_SK       int               NOT NULL,
    IssueDateKey               int               NOT NULL,
    PlateID_SK                 int               NOT NULL,
    RegistrationState_SK       int               NOT NULL,
    IssuingAgency_SK           int               NOT NULL,
    License_SK                 int               NOT NULL,
    Judgement_Entry_Date       datetime          NULL,
    Judgement_Entry_Date_SK    int               NULL,
    Fine_Amount                decimal(17, 2)    NULL,
    Penaulty_Amount            decimal(17, 2)    NULL,
    Interest_Amount            decimal(17, 2)    NULL,
    Reduction_Amount           decimal(17, 2)    NULL,
    Payment_Amount             decimal(17, 2)    NULL,
    Amount_Due                 decimal(17, 2)    NULL,
    SOR_ID                     int               NULL,
    SOR_LoadDate               datetime          NULL,
    SOR_UpdateDate             datetime          NULL,
    DI_Job_ID                  nvarchar(20)      NULL,
    DI_Create_Date             datetime          NOT NULL,
    DI_Modified_Date           datetime          NOT NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (SummonsNumber_SK)
)
go



IF OBJECT_ID('Fact_OpenParking_CameraViolations') IS NOT NULL
    PRINT '<<< CREATED TABLE Fact_OpenParking_CameraViolations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fact_OpenParking_CameraViolations >>>'
go

/* 
 * TABLE: Fact_ParkingViolations 
 */

CREATE TABLE Fact_ParkingViolations(
    SummonsNumber_SK            int             IDENTITY(1,1),
    SummonsNumber_NK            int             NOT NULL,
    ViolationTime               datetime        NULL,
    Violation_Time_SK           int             NULL,
    Violation_Time_Char         nvarchar(20)    NULL,
    Issue_Date                  datetime        NULL,
    IssueDateKey                int             NOT NULL,
    Violation_Precint_SK        int             NOT NULL,
    ViolationCode_SK            int             NOT NULL,
    VehicleBodyType_SK          int             NOT NULL,
    VehicleMake_SK              int             NOT NULL,
    PlateID_SK                  int             NOT NULL,
    RegistrationState_SK        int             NOT NULL,
    IssuingAgency_SK            int             NOT NULL,
    License_SK                  int             NOT NULL,
    ViolationCounty_SK          int             NOT NULL,
    Time_First_Observed         datetime        NULL,
    Time_First_Observed_SK      int             NULL,
    Time_First_Observed_Char    nvarchar(20)    NULL,
    Date_First_Observed         datetime        NULL,
    Date_First_Observed_SK      int             NULL,
    Law_Section                 int             NULL,
    SubDivision                 nvarchar(80)    NULL,
    VehicleExpirationDateKey    int             NULL,
    SOR_ID                      int             NULL,
    SOR_LoadDate                datetime        NULL,
    SOR_UpdateDate              datetime        NULL,
    DI_Job_ID                   nvarchar(20)    NULL,
    DI_Create_Date              datetime        NOT NULL,
    DI_Modified_Date            datetime        NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (SummonsNumber_SK)
)
go



IF OBJECT_ID('Fact_ParkingViolations') IS NOT NULL
    PRINT '<<< CREATED TABLE Fact_ParkingViolations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fact_ParkingViolations >>>'
go

/* 
 * TABLE: Dim_VehicleMake 
 */

ALTER TABLE Dim_VehicleMake ADD CONSTRAINT RefDim_VehicleBodyType39 
    FOREIGN KEY (VehicleBodyType_SK)
    REFERENCES Dim_VehicleBodyType(VehicleBodyType_SK)
go


/* 
 * TABLE: Fact_OpenParking_CameraViolations 
 */

ALTER TABLE Fact_OpenParking_CameraViolations ADD CONSTRAINT RefDim_license17 
    FOREIGN KEY (License_SK)
    REFERENCES Dim_license(License_SK)
go

ALTER TABLE Fact_OpenParking_CameraViolations ADD CONSTRAINT RefDim_IssuingAgency27 
    FOREIGN KEY (IssuingAgency_SK)
    REFERENCES Dim_IssuingAgency(IssuingAgency_SK)
go

ALTER TABLE Fact_OpenParking_CameraViolations ADD CONSTRAINT RefDim_RegistrationState29 
    FOREIGN KEY (RegistrationState_SK)
    REFERENCES Dim_RegistrationState(RegistrationState_SK)
go

ALTER TABLE Fact_OpenParking_CameraViolations ADD CONSTRAINT RefDim_Plate31 
    FOREIGN KEY (PlateID_SK)
    REFERENCES Dim_Plate(PlateID_SK)
go

ALTER TABLE Fact_OpenParking_CameraViolations ADD CONSTRAINT RefDim_Date34 
    FOREIGN KEY (IssueDateKey)
    REFERENCES Dim_Date(DateKey_SK)
go

ALTER TABLE Fact_OpenParking_CameraViolations ADD CONSTRAINT RefDim_ViolationPrecint45 
    FOREIGN KEY (Violation_Precint_SK)
    REFERENCES Dim_ViolationPrecint(Violation_Precint_SK)
go


/* 
 * TABLE: Fact_ParkingViolations 
 */

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_ViolationCounty48 
    FOREIGN KEY (ViolationCounty_SK)
    REFERENCES Dim_ViolationCounty(ViolationCounty_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_license26 
    FOREIGN KEY (License_SK)
    REFERENCES Dim_license(License_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_IssuingAgency28 
    FOREIGN KEY (IssuingAgency_SK)
    REFERENCES Dim_IssuingAgency(IssuingAgency_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_RegistrationState30 
    FOREIGN KEY (RegistrationState_SK)
    REFERENCES Dim_RegistrationState(RegistrationState_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_Plate32 
    FOREIGN KEY (PlateID_SK)
    REFERENCES Dim_Plate(PlateID_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_Date33 
    FOREIGN KEY (IssueDateKey)
    REFERENCES Dim_Date(DateKey_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_VehicleMake40 
    FOREIGN KEY (VehicleMake_SK, VehicleBodyType_SK)
    REFERENCES Dim_VehicleMake(VehicleMake_SK, VehicleBodyType_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_VehicleBodyType41 
    FOREIGN KEY (VehicleBodyType_SK)
    REFERENCES Dim_VehicleBodyType(VehicleBodyType_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_ViolationCode43 
    FOREIGN KEY (ViolationCode_SK)
    REFERENCES Dim_ViolationCode(ViolationCode_SK)
go

ALTER TABLE Fact_ParkingViolations ADD CONSTRAINT RefDim_ViolationPrecint46 
    FOREIGN KEY (Violation_Precint_SK)
    REFERENCES Dim_ViolationPrecint(Violation_Precint_SK)
go


