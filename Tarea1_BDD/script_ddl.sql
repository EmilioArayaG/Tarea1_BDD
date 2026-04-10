CREATE DATABASE ct_usm;
USE ct_usm;

CREATE TABLE region (
    id_region INT PRIMARY KEY,
    nombre_region VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE sede (
    id_sede INT PRIMARY KEY,
    nombre_sede VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE tamano_empresa (
    id_tamano INT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE tipo_iniciativa (
    id_tipo_ini INT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE tipo_persona (
    id_tipo_per INT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE estado_postulacion (
    id_estado INT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE persona (
    rut VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(20)
) ENGINE=InnoDB;

CREATE TABLE empresa_externa (
    rut_empresa VARCHAR(10) PRIMARY KEY,
    nom_empresa VARCHAR(100) NOT NULL,
    nom_representante VARCHAR(100) NOT NULL,
    mail_representante VARCHAR(100) NOT NULL,
    tel_representante VARCHAR(20),
    convenio_usm VARCHAR(2) NOT NULL, 
    id_tamano INT NOT NULL,
    FOREIGN KEY (id_tamano) REFERENCES tamano_empresa(id_tamano)
) ENGINE=InnoDB;

CREATE TABLE postulacion (
    postulacion_nro INT PRIMARY KEY,
    codigo_intr VARCHAR(20) UNIQUE NOT NULL,
    fecha_post DATE NOT NULL,
    nom_iniciativa VARCHAR(100) NOT NULL,
    objetivo VARCHAR(255) NOT NULL,
    descripcion_sol VARCHAR(255) NOT NULL,
    resultados_esperados VARCHAR(255) NOT NULL,
    presupuesto_total DECIMAL(12,2) NOT NULL,
    nom_responsable_1 VARCHAR(100) NOT NULL,
    nom_responsable_2 VARCHAR(100),
    documentos VARCHAR(255),
    rut_empresa VARCHAR(10) NOT NULL,
    id_sede INT NOT NULL,
    id_tipo_ini INT NOT NULL,
    id_estado INT NOT NULL,
    id_reg_ejecucion INT NOT NULL,
    id_reg_impacto INT NOT NULL,
    FOREIGN KEY (rut_empresa) REFERENCES empresa_externa(rut_empresa),
    FOREIGN KEY (id_sede) REFERENCES sede(id_sede),
    FOREIGN KEY (id_tipo_ini) REFERENCES tipo_iniciativa(id_tipo_ini),
    FOREIGN KEY (id_estado) REFERENCES estado_postulacion(id_estado),
    FOREIGN KEY (id_reg_ejecucion) REFERENCES region(id_region),
    FOREIGN KEY (id_reg_impacto) REFERENCES region(id_region)
) ENGINE=InnoDB;

CREATE TABLE etapa_cronograma (
    id_etapa INT PRIMARY KEY,
    nom_etapa VARCHAR(100) NOT NULL,
    plazo_semanas INT NOT NULL,
    entregable VARCHAR(255) NOT NULL,
    postulacion_nro INT NOT NULL,
    FOREIGN KEY (postulacion_nro) REFERENCES postulacion(postulacion_nro) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE equipo_trabajo (
    rut_persona VARCHAR(10),
    postulacion_nro INT,
    id_tipo_per INT NOT NULL,
    rol VARCHAR(50) NOT NULL,
    departamento_area VARCHAR(100) NOT NULL,
    PRIMARY KEY (rut_persona, postulacion_nro),
    FOREIGN KEY (rut_persona) REFERENCES persona(rut),
    FOREIGN KEY (postulacion_nro) REFERENCES postulacion(postulacion_nro),
    FOREIGN KEY (id_tipo_per) REFERENCES tipo_persona(id_tipo_per)
) ENGINE=InnoDB;