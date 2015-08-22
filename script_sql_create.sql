-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-08-22 01:23:32.354




-- tables
-- Table: TN_Nhanvien
CREATE TABLE TN_Nhanvien (
    Ma_NV varchar(5)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    NgaySinh date  NOT NULL,
    GioiTinh varchar(5)  NOT NULL,
    Email nvarchar(50)  NOT NULL,
    MucLuong nvarchar(15)  NOT NULL,
    MaPhong varchar(5)  NULL,
    CONSTRAINT TN_Nhanvien_pk PRIMARY KEY  (Ma_NV)
)
;





-- Table: TP_PhongBan
CREATE TABLE TP_PhongBan (
    MaPhong varchar(5)  NOT NULL,
    TenPhong nvarchar(10)  NOT NULL,
    TN_Nhanvien_Ma_NV varchar(5)  NOT NULL,
    CONSTRAINT TP_PhongBan_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TP_PhongBan_TN_Nhanvien (table: TP_PhongBan)


ALTER TABLE TP_PhongBan ADD CONSTRAINT TP_PhongBan_TN_Nhanvien 
    FOREIGN KEY (TN_Nhanvien_Ma_NV)
    REFERENCES TN_Nhanvien (Ma_NV)
;





-- End of file.

