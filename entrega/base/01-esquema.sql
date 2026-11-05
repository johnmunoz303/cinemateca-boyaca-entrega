--
-- PostgreSQL database dump
--

\restrict s3JEMio3js04sevgwjEppTtbeCkeXR48006v6Q6FdGgcEerx6ff7F55vQkbj2o3

-- Dumped from database version 17.11
-- Dumped by pg_dump version 17.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asientos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.asientos (
    id integer NOT NULL,
    sala_id integer NOT NULL,
    fila character varying(5) NOT NULL,
    numero integer NOT NULL,
    tipo character varying(50) DEFAULT 'normal'::character varying NOT NULL,
    habilitado boolean DEFAULT true NOT NULL,
    CONSTRAINT asientos_numero_check CHECK ((numero > 0))
);


--
-- Name: asientos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.asientos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.asientos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: aulas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.aulas (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text NOT NULL,
    horarios text,
    direccion text NOT NULL,
    latitud numeric(10,7),
    longitud numeric(10,7),
    imagen text
);


--
-- Name: aulas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.aulas ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.aulas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: comentarios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comentarios (
    id integer NOT NULL,
    obra_id integer,
    usuario_id integer,
    contenido text NOT NULL,
    estado character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT comentarios_contenido_check CHECK (((length(contenido) >= 1) AND (length(contenido) <= 2000))),
    CONSTRAINT comentarios_estado_check CHECK (((estado)::text = ANY ((ARRAY['pendiente'::character varying, 'aprobado'::character varying, 'rechazado'::character varying])::text[])))
);


--
-- Name: comentarios_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.comentarios ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.comentarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: cursos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cursos (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion text NOT NULL,
    categoria character varying(100),
    duracion character varying(100),
    poster text,
    certificacion boolean DEFAULT false,
    estado boolean DEFAULT true,
    requisitos text,
    involucrados text,
    inicio timestamp with time zone,
    direccion text,
    latitud numeric(10,7),
    longitud numeric(10,7),
    modalidad character varying(30)
);


--
-- Name: cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.cursos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cursos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: descargas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.descargas (
    id bigint NOT NULL,
    sesion_id uuid,
    usuario_id integer,
    video_id integer,
    fecha timestamp with time zone DEFAULT now()
);


--
-- Name: descargas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.descargas ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.descargas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: documentos_legales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.documentos_legales (
    id integer NOT NULL,
    titulo text NOT NULL,
    contenido text NOT NULL,
    publicado boolean DEFAULT false,
    fuente_url text,
    entidad character varying(255),
    fecha_documento date,
    archivo_pdf text
);


--
-- Name: documentos_legales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.documentos_legales ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.documentos_legales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: equipo_miembros; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.equipo_miembros (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    cargo character varying(150) NOT NULL,
    biografia text NOT NULL,
    foto text,
    orden integer DEFAULT 1 NOT NULL,
    estado boolean DEFAULT false NOT NULL,
    demostracion boolean DEFAULT false NOT NULL,
    demo_clave character varying(50),
    eliminado_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    actualizado_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT equipo_miembros_biografia_check CHECK ((length(TRIM(BOTH FROM biografia)) > 0)),
    CONSTRAINT equipo_miembros_cargo_check CHECK ((length(TRIM(BOTH FROM cargo)) > 0)),
    CONSTRAINT equipo_miembros_nombre_check CHECK ((length(TRIM(BOTH FROM nombre)) > 0)),
    CONSTRAINT equipo_miembros_orden_check CHECK (((orden >= 1) AND (orden <= 999)))
);


--
-- Name: equipo_miembros_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.equipo_miembros ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.equipo_miembros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: eventos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eventos (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    descripcion text NOT NULL,
    categoria character varying(30),
    inicio timestamp with time zone NOT NULL,
    direccion text,
    latitud numeric(10,7),
    longitud numeric(10,7),
    imagen text,
    estado character varying(30) DEFAULT 'publicado'::character varying,
    cupo integer,
    requisitos text,
    involucrados text,
    tipo_evento character varying(100),
    fases text,
    CONSTRAINT eventos_categoria_check CHECK (((categoria)::text = ANY ((ARRAY['presencial'::character varying, 'virtual'::character varying, 'convocatoria'::character varying])::text[]))),
    CONSTRAINT eventos_cupo_check CHECK ((cupo > 0))
);


--
-- Name: eventos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.eventos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.eventos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: eventos_inscripciones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eventos_inscripciones (
    usuario_id integer NOT NULL,
    evento_id integer NOT NULL,
    estado character varying(30) DEFAULT 'inscrito'::character varying,
    created_at timestamp with time zone DEFAULT now(),
    datos_inscripcion jsonb
);


--
-- Name: favoritos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.favoritos (
    usuario_id integer NOT NULL,
    obra_id integer NOT NULL
);


--
-- Name: funciones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.funciones (
    id integer NOT NULL,
    titulo_manual character varying(255),
    obra_id integer,
    sala_id integer NOT NULL,
    inicio timestamp with time zone NOT NULL,
    precio numeric(10,2) NOT NULL,
    estado character varying(30) DEFAULT 'publicada'::character varying NOT NULL,
    duracion_minutos integer DEFAULT 120 NOT NULL,
    intervalo_minutos integer DEFAULT 15 NOT NULL,
    descripcion text,
    imagen character varying(2048),
    eliminado_at timestamp with time zone,
    CONSTRAINT funciones_estado_check CHECK (((estado)::text = ANY ((ARRAY['publicada'::character varying, 'cancelada'::character varying, 'finalizada'::character varying])::text[]))),
    CONSTRAINT funciones_precio_check CHECK ((precio >= (0)::numeric))
);


--
-- Name: funciones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.funciones ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.funciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: generos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.generos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


--
-- Name: generos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.generos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.generos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: inscripciones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.inscripciones (
    id integer NOT NULL,
    usuario_id integer,
    curso_id integer,
    fecha_inscripcion timestamp with time zone DEFAULT now(),
    progreso_porcentaje integer DEFAULT 0,
    datos_inscripcion jsonb,
    CONSTRAINT inscripciones_progreso_porcentaje_check CHECK (((progreso_porcentaje >= 0) AND (progreso_porcentaje <= 100)))
);


--
-- Name: inscripciones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.inscripciones ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.inscripciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: logs_transcodificacion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.logs_transcodificacion (
    id bigint NOT NULL,
    video_id integer,
    obra_id integer,
    fecha_evnt timestamp with time zone DEFAULT now(),
    estado character varying(30),
    detalle_error text,
    perfil_intentado character varying(20)
);


--
-- Name: logs_transcodificacion_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.logs_transcodificacion ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.logs_transcodificacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: lsc_videos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lsc_videos (
    id integer NOT NULL,
    obra_id integer,
    ruta_archivo text,
    tipo_integracion character varying(50)
);


--
-- Name: lsc_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.lsc_videos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lsc_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: modulos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.modulos (
    id integer NOT NULL,
    curso_id integer,
    titulo character varying(255) NOT NULL,
    ruta text,
    orden integer DEFAULT 1 NOT NULL,
    obra_id integer
);


--
-- Name: modulos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.modulos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.modulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: obras; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.obras (
    id integer NOT NULL,
    titulo character varying(255) NOT NULL,
    sinopsis text NOT NULL,
    duracion integer,
    anio integer,
    pais character varying(100) DEFAULT 'Colombia'::character varying,
    idioma_ori character varying(50) DEFAULT 'Español'::character varying,
    clasificacion character varying(20) DEFAULT 'Todos'::character varying,
    tipo character varying(20) NOT NULL,
    estado_publicacion boolean DEFAULT false NOT NULL,
    dominio_publico boolean DEFAULT false NOT NULL,
    acceso_tipo character varying(30) DEFAULT 'registrado'::character varying,
    poster text,
    permitir_descarga boolean DEFAULT false NOT NULL,
    fecha_ini_lic date,
    fecha_fin_lic date,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    eliminado_at timestamp with time zone,
    destacada_inicio boolean DEFAULT false NOT NULL,
    orden_destacada integer DEFAULT 1 NOT NULL,
    CONSTRAINT obras_anio_check CHECK (((anio >= 1888) AND (anio <= 2200))),
    CONSTRAINT obras_check CHECK (((fecha_fin_lic IS NULL) OR (fecha_ini_lic IS NULL) OR (fecha_fin_lic >= fecha_ini_lic))),
    CONSTRAINT obras_duracion_check CHECK ((duracion > 0)),
    CONSTRAINT obras_orden_destacada_check CHECK (((orden_destacada >= 1) AND (orden_destacada <= 999))),
    CONSTRAINT obras_tipo_check CHECK (((tipo)::text = ANY ((ARRAY['pelicula'::character varying, 'corto'::character varying, 'documental'::character varying])::text[])))
);


--
-- Name: obras_generos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.obras_generos (
    obra_id integer NOT NULL,
    genero_id integer NOT NULL
);


--
-- Name: obras_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.obras ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.obras_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: obras_personas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.obras_personas (
    obra_id integer NOT NULL,
    persona_id integer NOT NULL,
    rol character varying(50) NOT NULL
);


--
-- Name: pagos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pagos (
    id uuid NOT NULL,
    reserva_id uuid NOT NULL,
    metodo_pago character varying(50) DEFAULT 'simulado'::character varying NOT NULL,
    estado character varying(30) NOT NULL,
    referencia_externa character varying(255),
    monto numeric(10,2) NOT NULL,
    fecha_pago timestamp with time zone DEFAULT now(),
    CONSTRAINT pagos_monto_check CHECK ((monto >= (0)::numeric))
);


--
-- Name: password_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.password_tokens (
    token_hash character varying(64) NOT NULL,
    usuario_id integer,
    expires_at timestamp with time zone NOT NULL,
    used_at timestamp with time zone
);


--
-- Name: personas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.personas (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    tipo_persona character varying(50),
    fecha_nac date,
    pais character varying(100)
);


--
-- Name: personas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.personas ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.personas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: progreso_modulos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.progreso_modulos (
    usuario_id integer NOT NULL,
    modulo_id integer NOT NULL,
    completed_at timestamp with time zone DEFAULT now()
);


--
-- Name: rate_limits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rate_limits (
    clave character varying(128) NOT NULL,
    hits integer NOT NULL,
    reset_at timestamp with time zone NOT NULL
);


--
-- Name: ratings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    obra_id integer,
    usuario_id integer,
    puntuacion integer NOT NULL,
    CONSTRAINT ratings_puntuacion_check CHECK (((puntuacion >= 1) AND (puntuacion <= 5)))
);


--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.ratings ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: relation_8; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.relation_8 AS
 SELECT obra_id AS obras_ob_id,
    genero_id AS generos_gen_id
   FROM public.obras_generos;


--
-- Name: reservas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reservas (
    id uuid NOT NULL,
    usuario_id integer NOT NULL,
    funcion_id integer NOT NULL,
    estado character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    fecha_reserva timestamp with time zone DEFAULT now() NOT NULL,
    expiracion timestamp with time zone DEFAULT (now() + '00:10:00'::interval) NOT NULL,
    codigo_ticket text,
    ingreso_at timestamp with time zone,
    ingreso_por integer,
    CONSTRAINT reservas_estado_check CHECK (((estado)::text = ANY ((ARRAY['pendiente'::character varying, 'confirmada'::character varying, 'expirada'::character varying, 'cancelada'::character varying])::text[])))
);


--
-- Name: reservas_asientos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reservas_asientos (
    reserva_id uuid NOT NULL,
    funcion_id integer NOT NULL,
    asiento_id integer NOT NULL,
    activo boolean DEFAULT true NOT NULL
);


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.roles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rutas_cnrod; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rutas_cnrod (
    id integer NOT NULL,
    municipio character varying(100) NOT NULL,
    ubicacion text NOT NULL,
    fecha_evento timestamp with time zone NOT NULL,
    descripcion text NOT NULL,
    obra_id integer,
    latitud numeric(10,7),
    longitud numeric(10,7)
);


--
-- Name: rutas_cnrod_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.rutas_cnrod ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rutas_cnrod_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: salas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.salas (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    direccion text NOT NULL,
    latitud numeric(10,7),
    longitud numeric(10,7),
    filas integer DEFAULT 6 NOT NULL,
    columnas integer DEFAULT 8 NOT NULL,
    pasillo integer DEFAULT 0 NOT NULL
);


--
-- Name: salas_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.salas ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.salas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: sesiones_streaming; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sesiones_streaming (
    id uuid NOT NULL,
    usuario_id integer NOT NULL,
    video_id integer NOT NULL,
    ip_usuario inet NOT NULL,
    dispositivo character varying(512) NOT NULL,
    fecha_ini timestamp with time zone DEFAULT now() NOT NULL,
    fecha_fin timestamp with time zone,
    estado character varying(30) DEFAULT 'activa'::character varying NOT NULL,
    codigo_rastreo character varying(64) NOT NULL,
    ultimo_heartbeat timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: subtitulos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subtitulos (
    id integer NOT NULL,
    obra_id integer NOT NULL,
    idioma character varying(50) NOT NULL,
    ruta_archivo text NOT NULL
);


--
-- Name: subtitulos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.subtitulos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.subtitulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombres character varying(100) NOT NULL,
    apellidos character varying(100) DEFAULT ''::character varying NOT NULL,
    email character varying(254) NOT NULL,
    password_hash text NOT NULL,
    rol_id integer NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    fecha_registro timestamp with time zone DEFAULT now() NOT NULL,
    ultimo_acceso timestamp with time zone,
    token_version integer DEFAULT 0 NOT NULL,
    notificaciones boolean DEFAULT true NOT NULL,
    CONSTRAINT usuarios_email_check CHECK (((email)::text = lower((email)::text)))
);


--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.usuarios ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: videos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.videos (
    id integer NOT NULL,
    obra_id integer NOT NULL,
    tipo character varying(50) DEFAULT 'hls'::character varying,
    ruta_archivo text NOT NULL,
    resolucion character varying(20),
    formato character varying(20),
    checksum character varying(128) NOT NULL,
    tamano_bytes bigint NOT NULL,
    bitrate integer,
    codec_video character varying(50),
    codec_audio character varying(50),
    duracion_real integer,
    is_master boolean DEFAULT true,
    profile_type character varying(20) DEFAULT '720p'::character varying,
    estado_transcodificacion character varying(30) DEFAULT 'pendiente'::character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    eliminado_at timestamp with time zone,
    etapa character varying(100) DEFAULT 'En espera'::character varying NOT NULL,
    CONSTRAINT videos_estado_transcodificacion_check CHECK (((estado_transcodificacion)::text = ANY ((ARRAY['pendiente'::character varying, 'procesando'::character varying, 'listo'::character varying, 'error'::character varying])::text[]))),
    CONSTRAINT videos_tamano_bytes_check CHECK ((tamano_bytes >= 0))
);


--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.videos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- PostgreSQL database dump complete
--

\unrestrict s3JEMio3js04sevgwjEppTtbeCkeXR48006v6Q6FdGgcEerx6ff7F55vQkbj2o3

