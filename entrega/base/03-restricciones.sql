--
-- PostgreSQL database dump
--

\restrict sV5PdTcr4EOvD4eqULqiinYifUpvmihcuc4fK4CvNuuR4FZBIumYhjrlYO7P2kH

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

--
-- Name: asientos asientos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.asientos
    ADD CONSTRAINT asientos_pkey PRIMARY KEY (id);


--
-- Name: asientos asientos_sala_id_fila_numero_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.asientos
    ADD CONSTRAINT asientos_sala_id_fila_numero_key UNIQUE (sala_id, fila, numero);


--
-- Name: aulas aulas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.aulas
    ADD CONSTRAINT aulas_pkey PRIMARY KEY (id);


--
-- Name: comentarios comentarios_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_pkey PRIMARY KEY (id);


--
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);


--
-- Name: descargas descargas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.descargas
    ADD CONSTRAINT descargas_pkey PRIMARY KEY (id);


--
-- Name: documentos_legales documentos_legales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.documentos_legales
    ADD CONSTRAINT documentos_legales_pkey PRIMARY KEY (id);


--
-- Name: equipo_miembros equipo_miembros_demo_clave_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipo_miembros
    ADD CONSTRAINT equipo_miembros_demo_clave_key UNIQUE (demo_clave);


--
-- Name: equipo_miembros equipo_miembros_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.equipo_miembros
    ADD CONSTRAINT equipo_miembros_pkey PRIMARY KEY (id);


--
-- Name: eventos_inscripciones eventos_inscripciones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventos_inscripciones
    ADD CONSTRAINT eventos_inscripciones_pkey PRIMARY KEY (usuario_id, evento_id);


--
-- Name: eventos eventos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT eventos_pkey PRIMARY KEY (id);


--
-- Name: favoritos favoritos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favoritos
    ADD CONSTRAINT favoritos_pkey PRIMARY KEY (usuario_id, obra_id);


--
-- Name: funciones funciones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.funciones
    ADD CONSTRAINT funciones_pkey PRIMARY KEY (id);


--
-- Name: generos generos_nombre_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_nombre_key UNIQUE (nombre);


--
-- Name: generos generos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.generos
    ADD CONSTRAINT generos_pkey PRIMARY KEY (id);


--
-- Name: inscripciones inscripciones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_pkey PRIMARY KEY (id);


--
-- Name: inscripciones inscripciones_usuario_id_curso_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_usuario_id_curso_id_key UNIQUE (usuario_id, curso_id);


--
-- Name: logs_transcodificacion logs_transcodificacion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logs_transcodificacion
    ADD CONSTRAINT logs_transcodificacion_pkey PRIMARY KEY (id);


--
-- Name: lsc_videos lsc_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lsc_videos
    ADD CONSTRAINT lsc_videos_pkey PRIMARY KEY (id);


--
-- Name: modulos modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);


--
-- Name: obras_generos obras_generos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras_generos
    ADD CONSTRAINT obras_generos_pkey PRIMARY KEY (obra_id, genero_id);


--
-- Name: obras_personas obras_personas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras_personas
    ADD CONSTRAINT obras_personas_pkey PRIMARY KEY (obra_id, persona_id, rol);


--
-- Name: obras obras_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras
    ADD CONSTRAINT obras_pkey PRIMARY KEY (id);


--
-- Name: pagos pagos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id);


--
-- Name: pagos pagos_referencia_externa_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_referencia_externa_key UNIQUE (referencia_externa);


--
-- Name: pagos pagos_reserva_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_reserva_id_key UNIQUE (reserva_id);


--
-- Name: password_tokens password_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_tokens
    ADD CONSTRAINT password_tokens_pkey PRIMARY KEY (token_hash);


--
-- Name: personas personas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);


--
-- Name: progreso_modulos progreso_modulos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.progreso_modulos
    ADD CONSTRAINT progreso_modulos_pkey PRIMARY KEY (usuario_id, modulo_id);


--
-- Name: rate_limits rate_limits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rate_limits
    ADD CONSTRAINT rate_limits_pkey PRIMARY KEY (clave);


--
-- Name: ratings ratings_obra_id_usuario_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_obra_id_usuario_id_key UNIQUE (obra_id, usuario_id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: reservas_asientos reservas_asientos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas_asientos
    ADD CONSTRAINT reservas_asientos_pkey PRIMARY KEY (reserva_id, asiento_id);


--
-- Name: reservas reservas_codigo_ticket_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_codigo_ticket_key UNIQUE (codigo_ticket);


--
-- Name: reservas reservas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_pkey PRIMARY KEY (id);


--
-- Name: roles roles_nombre_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_nombre_key UNIQUE (nombre);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: rutas_cnrod rutas_cnrod_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rutas_cnrod
    ADD CONSTRAINT rutas_cnrod_pkey PRIMARY KEY (id);


--
-- Name: salas salas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.salas
    ADD CONSTRAINT salas_pkey PRIMARY KEY (id);


--
-- Name: sesiones_streaming sesiones_streaming_codigo_rastreo_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sesiones_streaming
    ADD CONSTRAINT sesiones_streaming_codigo_rastreo_key UNIQUE (codigo_rastreo);


--
-- Name: sesiones_streaming sesiones_streaming_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sesiones_streaming
    ADD CONSTRAINT sesiones_streaming_pkey PRIMARY KEY (id);


--
-- Name: subtitulos subtitulos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subtitulos
    ADD CONSTRAINT subtitulos_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: videos videos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (id);


--
-- Name: asiento_por_funcion_activo; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX asiento_por_funcion_activo ON public.reservas_asientos USING btree (funcion_id, asiento_id) WHERE activo;


--
-- Name: equipo_miembros_visibles_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX equipo_miembros_visibles_idx ON public.equipo_miembros USING btree (orden, id) WHERE (estado AND (eliminado_at IS NULL));


--
-- Name: funciones_fecha_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX funciones_fecha_idx ON public.funciones USING btree (inicio);


--
-- Name: obras_titulo_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX obras_titulo_idx ON public.obras USING btree (lower((titulo)::text));


--
-- Name: sesiones_usuario_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sesiones_usuario_idx ON public.sesiones_streaming USING btree (usuario_id, fecha_ini DESC);


--
-- Name: videos_obra_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX videos_obra_idx ON public.videos USING btree (obra_id);


--
-- Name: asientos asientos_sala_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.asientos
    ADD CONSTRAINT asientos_sala_id_fkey FOREIGN KEY (sala_id) REFERENCES public.salas(id);


--
-- Name: comentarios comentarios_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: comentarios comentarios_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT comentarios_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: descargas descargas_sesion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.descargas
    ADD CONSTRAINT descargas_sesion_id_fkey FOREIGN KEY (sesion_id) REFERENCES public.sesiones_streaming(id);


--
-- Name: descargas descargas_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.descargas
    ADD CONSTRAINT descargas_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: descargas descargas_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.descargas
    ADD CONSTRAINT descargas_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.videos(id);


--
-- Name: eventos_inscripciones eventos_inscripciones_evento_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventos_inscripciones
    ADD CONSTRAINT eventos_inscripciones_evento_id_fkey FOREIGN KEY (evento_id) REFERENCES public.eventos(id);


--
-- Name: eventos_inscripciones eventos_inscripciones_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventos_inscripciones
    ADD CONSTRAINT eventos_inscripciones_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: favoritos favoritos_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favoritos
    ADD CONSTRAINT favoritos_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: favoritos favoritos_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.favoritos
    ADD CONSTRAINT favoritos_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: funciones funciones_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.funciones
    ADD CONSTRAINT funciones_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: funciones funciones_sala_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.funciones
    ADD CONSTRAINT funciones_sala_id_fkey FOREIGN KEY (sala_id) REFERENCES public.salas(id);


--
-- Name: inscripciones inscripciones_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(id);


--
-- Name: inscripciones inscripciones_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT inscripciones_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: logs_transcodificacion logs_transcodificacion_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logs_transcodificacion
    ADD CONSTRAINT logs_transcodificacion_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: logs_transcodificacion logs_transcodificacion_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.logs_transcodificacion
    ADD CONSTRAINT logs_transcodificacion_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.videos(id);


--
-- Name: lsc_videos lsc_videos_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lsc_videos
    ADD CONSTRAINT lsc_videos_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: modulos modulos_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(id);


--
-- Name: modulos modulos_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: obras_generos obras_generos_genero_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras_generos
    ADD CONSTRAINT obras_generos_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.generos(id);


--
-- Name: obras_generos obras_generos_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras_generos
    ADD CONSTRAINT obras_generos_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id) ON DELETE CASCADE;


--
-- Name: obras_personas obras_personas_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras_personas
    ADD CONSTRAINT obras_personas_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id) ON DELETE CASCADE;


--
-- Name: obras_personas obras_personas_persona_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.obras_personas
    ADD CONSTRAINT obras_personas_persona_id_fkey FOREIGN KEY (persona_id) REFERENCES public.personas(id);


--
-- Name: pagos pagos_reserva_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_reserva_id_fkey FOREIGN KEY (reserva_id) REFERENCES public.reservas(id);


--
-- Name: password_tokens password_tokens_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.password_tokens
    ADD CONSTRAINT password_tokens_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: progreso_modulos progreso_modulos_modulo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.progreso_modulos
    ADD CONSTRAINT progreso_modulos_modulo_id_fkey FOREIGN KEY (modulo_id) REFERENCES public.modulos(id);


--
-- Name: progreso_modulos progreso_modulos_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.progreso_modulos
    ADD CONSTRAINT progreso_modulos_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: ratings ratings_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: ratings ratings_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: reservas_asientos reservas_asientos_asiento_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas_asientos
    ADD CONSTRAINT reservas_asientos_asiento_id_fkey FOREIGN KEY (asiento_id) REFERENCES public.asientos(id);


--
-- Name: reservas_asientos reservas_asientos_funcion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas_asientos
    ADD CONSTRAINT reservas_asientos_funcion_id_fkey FOREIGN KEY (funcion_id) REFERENCES public.funciones(id);


--
-- Name: reservas_asientos reservas_asientos_reserva_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas_asientos
    ADD CONSTRAINT reservas_asientos_reserva_id_fkey FOREIGN KEY (reserva_id) REFERENCES public.reservas(id);


--
-- Name: reservas reservas_funcion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_funcion_id_fkey FOREIGN KEY (funcion_id) REFERENCES public.funciones(id);


--
-- Name: reservas reservas_ingreso_por_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_ingreso_por_fkey FOREIGN KEY (ingreso_por) REFERENCES public.usuarios(id);


--
-- Name: reservas reservas_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservas
    ADD CONSTRAINT reservas_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: rutas_cnrod rutas_cnrod_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rutas_cnrod
    ADD CONSTRAINT rutas_cnrod_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: sesiones_streaming sesiones_streaming_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sesiones_streaming
    ADD CONSTRAINT sesiones_streaming_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: sesiones_streaming sesiones_streaming_video_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sesiones_streaming
    ADD CONSTRAINT sesiones_streaming_video_id_fkey FOREIGN KEY (video_id) REFERENCES public.videos(id);


--
-- Name: subtitulos subtitulos_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subtitulos
    ADD CONSTRAINT subtitulos_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- Name: usuarios usuarios_rol_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_rol_id_fkey FOREIGN KEY (rol_id) REFERENCES public.roles(id);


--
-- Name: videos videos_obra_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_obra_id_fkey FOREIGN KEY (obra_id) REFERENCES public.obras(id);


--
-- PostgreSQL database dump complete
--

\unrestrict sV5PdTcr4EOvD4eqULqiinYifUpvmihcuc4fK4CvNuuR4FZBIumYhjrlYO7P2kH

