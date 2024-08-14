

-- Membuat tabel buku
CREATE TABLE buku (
    id INT PRIMARY KEY AUTO_INCREMENT,
    judul VARCHAR(255) NOT NULL,
    halaman INT NOT NULL,
    harga DECIMAL(10,2) NOT NULL
);

-- Menambahkan 16 buku
INSERT INTO buku (judul, halaman, harga) VALUES
    ('One Hundred Years of Solitude' , 417, 150000),
    ('The Great Gatsby', 218, 120000),
    ('War and Peace', 1225, 250000),
    ('Don Quixote', 928, 200000),
    ('Crime and Punishment', 545, 180000),
    ('Hamlet', 400, 130000),
    ('The Odyssey', 442, 140000),
    ('The Lord of the Rings', 1178, 300000),
    ('The Catcher in the Rye', 277, 110000),
    ('The Adventures of Huckleberry Finn', 366, 125000),
    ('Moby *****', 635, 190000),
    ('Pride and Prejudice', 432, 145000),
    ('The Book Thief', 552, 175000),
    ('The Alchemist', 197, 100000),
    ('The Kite Runner', 372, 135000),
    ('To Kill a Mockingbird', 281, 115000);

-- Mengubah harga buku dengan id = 1
UPDATE buku SET harga = 160000 WHERE id = 1;

-- Menghapus buku dengan id = 2
DELETE FROM buku WHERE id = 2;

-- Menampilkan total baris data
SELECT COUNT(*) AS total_buku FROM buku;

-- Menampilkan harga buku paling mahal
SELECT judul, harga FROM buku ORDER BY harga DESC LIMIT 1;

-- Menampilkan halaman buku paling tebal
SELECT judul, halaman FROM buku ORDER BY halaman DESC LIMIT 1;

