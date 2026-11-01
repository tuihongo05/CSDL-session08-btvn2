CREATE DATABASE session08_btvn2;
USE session08_btvn2;

CREATE TABLE products(
	MaSanPham INT AUTO_INCREMENT PRIMARY KEY,
    TenSanPham VARCHAR(255) NOT NULL UNIQUE,
	GiaBan DECIMAL(10,2),
    LoaiSanPham VARCHAR(100) NOT NULL
);

DELIMITER $$
CREATE PROCEDURE sp_get_products_by_category(IN p_LoaiSanPham VARCHAR(100))
BEGIN
	SELECT * FROM products WHERE p_LoaiSanPham = LoaiSanPham;
END $$
DELIMITER ;

CALL sp_get_products_by_category('');