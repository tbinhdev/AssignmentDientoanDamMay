-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:14:31.597




-- tables
-- Table: TNhanVien
CREATE TABLE TNhanVien (
    MaNV int  NOT NULL,
    Ma_Phong int  NOT NULL,
    Ten_NV varchar(255)  NOT NULL,
    Ngay_Sinh varchar(255)  NOT NULL,
    Gioi_Tinh varchar(255)  NOT NULL,
    Email varchar(255)  NOT NULL,
    Muc_luong int  NOT NULL,
    CONSTRAINT TNhanVien_pk PRIMARY KEY (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Ma_Phong int  NOT NULL,
    Ten_Phong varchar(255)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (Ma_Phong)
)
;









-- foreign keys
-- Reference:  test (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT test 
    FOREIGN KEY (Ma_Phong)
    REFERENCES TNhanVien (MaNV)
;





-- End of file.

