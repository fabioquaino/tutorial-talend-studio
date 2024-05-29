BEGIN;

-- Script para crear las tablas y los inserts en PostgreSQL

-- Tabla provincia
CREATE TABLE IF NOT EXISTS provincia (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Tabla ciudad
CREATE TABLE IF NOT EXISTS ciudad (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    provincia_id INTEGER,
    FOREIGN KEY (provincia_id) REFERENCES provincia (id)
);

-- Tabla persona
CREATE TABLE IF NOT EXISTS persona (
    dni VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    fecha_nac DATE,
    ciudad_id INTEGER,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad (id)
);

-- Inserts para provincia
INSERT INTO provincia (nombre) VALUES 
    ('Buenos Aires'),
    ('Córdoba'),
    ('Santa Fe'),
    ('Mendoza'),
    ('Tucumán');

-- Inserts para ciudad
INSERT INTO ciudad (nombre, provincia_id) VALUES 
    ('La Plata', 1),
    ('Mar del Plata', 1),
    ('Bahía Blanca', 1),
    ('Córdoba', 2),
    ('Villa María', 2),
    ('Río Cuarto', 2),
    ('Rosario', 3);

-- Inserts para persona
INSERT INTO persona (dni, nombre, apellido, fecha_nac, ciudad_id) VALUES 
    ('11111111', 'Juan', 'Pérez', '1990-05-15', 1),
    ('22222222', 'María', 'González', '1985-08-20', 4),
    ('33333333', 'Carlos', 'López', '1992-12-10', 7),
    ('44444444', 'Laura', 'Rodríguez', '1988-04-25', 3),
    ('55555555', 'Ana', 'Martínez', '1995-10-30', 2),
    ('66666666', 'Pedro', 'Sánchez', '1993-07-18', 5),
    ('77777777', 'Lucía', 'Fernández', '1991-01-05', 4),
    ('88888888', 'Diego', 'Díaz', '1987-09-12', 7),
    ('99999999', 'Carolina', 'Torres', '1994-06-28', 6),
    ('10101010', 'Luis', 'Ramírez', '1996-03-08', 6),
    ('12121212', 'Martina', 'Suárez', '1990-07-22', 1),
    ('13131313', 'Javier', 'Gómez', '1986-11-17', 4),
    ('14141414', 'Andrea', 'Alvarez', '1993-09-03', 7),
    ('15151515', 'Fernando', 'Mendoza', '1989-02-14', 2),
    ('16161616', 'Valentina', 'Paz', '1997-08-07', 3),
    ('17171717', 'Nicolás', 'Acosta', '1992-12-01', 1),
    ('18181818', 'Sofía', 'Rojas', '1988-05-18', 4),
    ('19191919', 'Gabriel', 'Luna', '1995-11-11', 7),
    ('20202020', 'Camila', 'Moreno', '1991-04-29', 2),
    ('21212121', 'Facundo', 'Vega', '1996-10-12', 3);

COMMIT;
