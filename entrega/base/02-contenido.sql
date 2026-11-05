--
-- PostgreSQL database dump
--

\restrict oF0xEuvCIILHqHmBoVooBKjJimIHQjHOuvjVxlfpyM0OTGlNbCYPsCwdVqTWemY

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

--
-- Data for Name: salas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.salas (id, nombre, direccion, latitud, longitud, filas, columnas, pasillo) FROM stdin;
1	Sala principal	Centro histórico	\N	\N	10	12	0
\.


--
-- Data for Name: asientos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.asientos (id, sala_id, fila, numero, tipo, habilitado) FROM stdin;
241	1	A	1	normal	t
242	1	A	2	normal	t
243	1	A	3	normal	t
244	1	A	4	normal	t
245	1	A	5	normal	t
246	1	A	6	normal	t
247	1	A	7	normal	t
248	1	A	8	normal	t
249	1	A	9	normal	t
250	1	A	10	normal	t
251	1	A	11	normal	t
252	1	A	12	normal	t
253	1	B	1	normal	t
254	1	B	2	normal	t
255	1	B	3	normal	t
256	1	B	4	normal	t
257	1	B	5	normal	t
258	1	B	6	normal	t
259	1	B	7	normal	t
260	1	B	8	normal	t
261	1	B	9	normal	t
262	1	B	10	normal	t
263	1	B	11	normal	t
264	1	B	12	normal	t
265	1	C	1	normal	t
266	1	C	2	normal	t
267	1	C	3	normal	t
268	1	C	4	normal	t
269	1	C	5	normal	t
270	1	C	6	normal	t
271	1	C	7	normal	t
272	1	C	8	normal	t
273	1	C	9	normal	t
274	1	C	10	normal	t
275	1	C	11	normal	t
276	1	C	12	normal	t
277	1	D	1	normal	t
278	1	D	2	normal	t
279	1	D	3	normal	t
280	1	D	4	normal	t
281	1	D	5	normal	t
282	1	D	6	normal	t
283	1	D	7	normal	t
284	1	D	8	normal	t
285	1	D	9	normal	t
286	1	D	10	normal	t
287	1	D	11	normal	t
288	1	D	12	normal	t
289	1	E	1	normal	t
290	1	E	2	normal	t
291	1	E	3	normal	t
292	1	E	4	normal	t
293	1	E	5	normal	t
294	1	E	6	normal	t
295	1	E	7	normal	t
296	1	E	8	normal	t
297	1	E	9	normal	t
298	1	E	10	normal	t
299	1	E	11	normal	t
300	1	E	12	normal	t
301	1	F	1	normal	t
302	1	F	2	normal	t
303	1	F	3	normal	t
304	1	F	4	normal	t
305	1	F	5	normal	t
306	1	F	6	normal	t
307	1	F	7	normal	t
308	1	F	8	normal	t
309	1	F	9	normal	t
310	1	F	10	normal	t
311	1	F	11	normal	t
312	1	F	12	normal	t
313	1	G	1	normal	t
314	1	G	2	normal	t
315	1	G	3	normal	t
316	1	G	4	normal	t
317	1	G	5	normal	t
318	1	G	6	normal	t
319	1	G	7	normal	t
320	1	G	8	normal	t
321	1	G	9	normal	t
322	1	G	10	normal	t
323	1	G	11	normal	t
324	1	G	12	normal	t
325	1	H	1	normal	t
326	1	H	2	normal	t
327	1	H	3	normal	t
328	1	H	4	normal	t
329	1	H	5	normal	t
330	1	H	6	normal	t
331	1	H	7	normal	t
332	1	H	8	normal	t
333	1	H	9	normal	t
334	1	H	10	normal	t
335	1	H	11	normal	t
336	1	H	12	normal	t
337	1	I	1	normal	t
338	1	I	2	normal	t
339	1	I	3	normal	t
340	1	I	4	normal	t
341	1	I	5	normal	t
342	1	I	6	normal	t
343	1	I	7	normal	t
344	1	I	8	normal	t
345	1	I	9	normal	t
346	1	I	10	normal	t
347	1	I	11	normal	t
348	1	I	12	normal	t
349	1	J	1	normal	t
350	1	J	2	normal	t
351	1	J	3	normal	t
352	1	J	4	normal	t
353	1	J	5	normal	t
354	1	J	6	normal	t
355	1	J	7	normal	t
356	1	J	8	normal	t
357	1	J	9	normal	t
358	1	J	10	normal	t
359	1	J	11	normal	t
360	1	J	12	normal	t
\.


--
-- Data for Name: aulas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.aulas (id, nombre, descripcion, horarios, direccion, latitud, longitud, imagen) FROM stdin;
4	Aula 4	Creación colectiva y proyectos del territorio. Aula flexible propuesta para talleres de documental, conversaciones con comunidades y acompañamiento de proyectos. Permite organizar mesas de ideas, ensayos de presentación y ejercicios de escritura colaborativa. Distribución sugerida para 20 participantes. Información de ejemplo para la demostración; actividades y disponibilidad por confirmar.	Horario de ejemplo: miércoles y viernes, de 2:00 p. m. a 6:00 p. m.; sábados de 9:00 a. m. a 1:00 p. m.	Plaza de Bolívar, Cra. 8 #18-56, Tunja, Boyacá, Colombia	5.5326944	-73.3615833	/programas/talleres-iniciacion.png
3	Aula 3	Edición, sonido y medios interactivos. Espacio propuesto para organizar material audiovisual, construir secuencias y experimentar con el montaje y la narración sonora. Las actividades sugeridas incluyen edición de cortometrajes, mezcla básica y prototipos de relatos digitales. Distribución sugerida para 12 participantes. Información de ejemplo para la demostración; estaciones de trabajo y software por confirmar.	Horario de ejemplo: martes a viernes, de 9:00 a. m. a 1:00 p. m.; sábados de 8:00 a. m. a 12:00 m.	Plaza de Bolívar, Cra. 8 #18-56, Tunja, Boyacá, Colombia	5.5326944	-73.3615833	/programas/diplomados-especializados.png
2	Aula 2	Laboratorio de producción y fotografía. Aula propuesta para practicar encuadre, composición, iluminación y manejo de cámara mediante ejercicios colectivos. Pensada para equipos pequeños que quieran planear y realizar escenas, entrevistas y piezas breves. Distribución sugerida para 16 participantes. Información de ejemplo para la demostración; equipos y acompañamiento por confirmar.	Horario de ejemplo: lunes a viernes, de 2:00 p. m. a 6:00 p. m. Prácticas mediante programación previa.	Plaza de Bolívar, Cra. 8 #18-56, Tunja, Boyacá, Colombia	5.5326944	-73.3615833	/programas/laboratorios-creativos.png
1	Aula 1	Lenguaje cinematográfico y apreciación audiovisual. Espacio propuesto para explorar la historia del cine, analizar películas y conversar sobre las historias de nuestro territorio. Incluye ejercicios de guion, construcción de personajes y lectura de imágenes. Distribución sugerida para 24 participantes, con proyección y mesas de trabajo en grupo. Información de ejemplo para la demostración; equipamiento y disponibilidad por confirmar.	Horario de ejemplo: lunes a viernes, de 8:00 a. m. a 12:00 m. Sujeto a programación académica.	Plaza de Bolívar, Cra. 8 #18-56, Tunja, Boyacá, Colombia	5.5326944	-73.3615833	/eventos/festival-cine-campesino.png
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.cursos (id, titulo, descripcion, categoria, duracion, poster, certificacion, estado, requisitos, involucrados, inicio, direccion, latitud, longitud, modalidad) FROM stdin;
1	Talleres de iniciación	Programa introductorio diseñado para acercar a los participantes al lenguaje audiovisual. Se exploran fundamentos de dirección, guion, fotografía, edición y sonido mediante ejercicios prácticos.	Principiante	4–8 semanas	/api/v1/posters/08aa8d25-519b-4137-bcef-b77970a587c5.png	f	t	Ser mayor de 16 años y tener interés en aprender sobre creación y producción audiovisual.\nNo es necesario contar con experiencia previa; se requiere disponibilidad para asistir a las sesiones y participar activamente en los ejercicios prácticos.	\N	2026-10-05 15:00:00+00	\N	\N	\N	presencial
2	Diplomados Especializados	Espacios intensivos de experimentación y creación colectiva en los que los participantes desarrollan proyectos audiovisuales a partir de la exploración de diferentes lenguajes, técnicas y nuevas formas de narrar.	Intermedio	6–12 meses	/api/v1/posters/46f08d39-e1ac-4070-b786-04f09940ed32.png	f	t	Ser mayor de 18 años y contar con conocimientos básicos o experiencia previa relacionada con el área audiovisual.\nPresentar una breve descripción de su experiencia, intereses o proyecto audiovisual y disponer del tiempo necesario para cumplir con las actividades.	\N	2026-10-02 15:00:00+00	\N	\N	\N	presencial
3	Laboratorios creativos	Programa introductorio diseñado para acercar a los participantes al lenguaje audiovisual. Se exploran fundamentos de dirección, guion, fotografía, edición y sonido mediante ejercicios prácticos.	Todos los niveles	2 semanas	/api/v1/posters/ad17e5a1-00ba-4788-ae9c-b967b8d60a1c.png	f	t	Ser mayor de 16 años y tener interés en aprender sobre creación y producción audiovisual.\nNo es necesario contar con experiencia previa; se requiere disponibilidad para asistir a las sesiones y participar activamente en los ejercicios prácticos.	\N	2026-10-05 15:00:00+00	\N	\N	\N	presencial
\.


--
-- Data for Name: documentos_legales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.documentos_legales (id, titulo, contenido, publicado, fuente_url, entidad, fecha_documento, archivo_pdf) FROM stdin;
1	Ordenanza 045 de 2024	Política pública de cinematografía, medios audiovisuales e interactivos de Boyacá 2025–2036\n\nPor la cual se adopta la política pública que establece el marco estratégico para el desarrollo del ecosistema audiovisual del departamento de Boyacá, promoviendo la creación, producción, distribución y exhibición de contenidos cinematográficos y audiovisuales.\n\nEsta política fue formulada con el apoyo académico de la Universidad de Bogotá Jorge Tadeo Lozano, a través de su Maestría en Gestión y Producción Cultural y Audiovisual, garantizando una visión especializada y sostenible para el desarrollo del sector.\n\nVigencia 2025–2036	t	\N	\N	2024-12-19	\N
\.


--
-- Data for Name: equipo_miembros; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.equipo_miembros (id, nombre, cargo, biografia, foto, orden, estado, demostracion, demo_clave, eliminado_at, created_at, actualizado_at) FROM stdin;
1	Valentina Rojas	Directora Académica	Realizadora audiovisual y docente especializada en dirección cinematográfica y desarrollo de proyectos audiovisuales.	/escuela/equipo-demostracion.png?panel=0	1	t	t	ejemplo-valentina	\N	2026-11-04 16:47:57.091812+00	2026-11-04 16:47:57.091812+00
2	Santiago Mendoza	Coordinador de Producción	Productor audiovisual con experiencia en gestión de proyectos, producción cinematográfica y acompañamiento de nuevos talentos.	/escuela/equipo-demostracion.png?panel=1	2	t	t	ejemplo-santiago	\N	2026-11-04 16:47:57.091812+00	2026-11-04 16:47:57.091812+00
3	Camila Torres	Mentora de Creación Audiovisual	Guionista y realizadora enfocada en narrativas contemporáneas, cine documental y procesos de creación colectiva.	/escuela/equipo-demostracion.png?panel=2	3	t	t	ejemplo-camila	\N	2026-11-04 16:47:57.091812+00	2026-11-04 16:47:57.091812+00
\.


--
-- Data for Name: eventos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.eventos (id, titulo, descripcion, categoria, inicio, direccion, latitud, longitud, imagen, estado, cupo, requisitos, involucrados, tipo_evento, fases) FROM stdin;
2	Festival de Cine Campesino	Con el propósito de visibilizar las realidades, saberes, prácticas, historias y expresiones culturales de las comunidades rurales de Boyacá, la Gobernación de Boyacá presenta el primer Festival de Cine Campesino.	presencial	2026-11-14 23:00:00+00	Plaza de Bolívar, Cra. 8 #18-56, Tunja, Boyacá, Colombia	5.5326944	-73.3615833	/api/v1/posters/567837e4-3123-462a-9599-3ab770372404.png	publicado	\N	Tener entre 12 y 28 años de edad\nResidir en zona rural de Boyacá\nProducir un cortometraje de 2 a 3 minutos	Gobernación de Boyacá\nComunidades rurales de Boyacá	Primer Festival	\N
1	CuentaMundos	El Festival Escolar Audiovisual más grande de Colombia, ahora internacional. CuentaMundos promueve la creatividad y la innovación en las aulas mediante producción de contenidos transmedia por parte de estudiantes y docentes.	virtual	2026-11-07 15:00:00+00	Plaza de Bolívar, Cra. 8 #18-56, Tunja, Boyacá, Colombia	5.5326944	-73.3615833	/api/v1/posters/776c04ea-8ace-46d8-a5ff-cc3f4c2dcfc2.png	publicado	20	\N	Estudiantes y docentes participantes.	Festival escolar	A — Corto o Pódcast: 1 producto con base histórica\nB — Expansión Transmedia: 5 productos en diferentes formatos\nC — Convergencia: 1 producto final complementario
\.


--
-- Data for Name: obras; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.obras (id, titulo, sinopsis, duracion, anio, pais, idioma_ori, clasificacion, tipo, estado_publicacion, dominio_publico, acceso_tipo, poster, permitir_descarga, fecha_ini_lic, fecha_fin_lic, created_at, updated_at, eliminado_at, destacada_inicio, orden_destacada) FROM stdin;
8	Liebres	Valentina y Elisa viven y trabajan en una hacienda familiar. Elsa pertenece a un linaje de mujeres con conocimientos relacionados con la brujería y comienza a transmitirlos a su nieta. Mientras las jóvenes tienen sueños que anticipan un peligro, empiezan a descubrir una conexión con el poder y la historia de sus antepasadas.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	\N	Colombia	Español	Todos	pelicula	t	f	registrado	/api/v1/posters/66546e99-31fc-4b50-9917-0fa142640c5d.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.760436+00	2026-11-04 14:15:39.760436+00	\N	f	1
3	Champiñón	En el Boyacá de los años 80, José, un niño campesino apasionado por el ciclismo, tiene la oportunidad de ver de cerca a su corredor favorito durante una competencia. Cuando faltan pocos kilómetros para terminar la etapa, José debe superar diferentes obstáculos con su vieja bicicleta para poder llegar a la celebración.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	1998	Colombia	Español	Todos	corto	t	f	registrado	/api/v1/posters/4845ff7b-b8c9-48fa-82e0-1d18c678b722.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.101653+00	2026-11-04 14:15:39.101653+00	\N	f	1
4	Otra historia de amor	Una historia de amor construida alrededor de un particular triángulo amoroso. El cortometraje juega con los elementos tradicionales de las historias románticas y melodramáticas para presentar una relación marcada por las expectativas que el cine, la televisión y los libros han creado alrededor del amor.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	\N	Colombia	Español	Todos	pelicula	t	f	registrado	/api/v1/posters/ce1414be-7778-4393-9f50-eddac58c35cf.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.248181+00	2026-11-04 14:15:39.248181+00	\N	f	1
5	Luminaria	El documental acompaña la vida cotidiana de Alba, Víctor y Félix, habitantes de diferentes veredas de Garagoa. A través de su trabajo con la tierra, los cultivos y el paisaje del Valle de Tenza, la película retrata la relación de estas personas con el territorio y la vida campesina.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	\N	Colombia	Español	Todos	pelicula	t	f	registrado	/api/v1/posters/4f45c48a-d3b5-4df0-9f16-0f34b2c39cd2.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.373358+00	2026-11-04 14:15:39.373358+00	\N	f	1
9	Starman	Un cosmonauta extraterrestre llega accidentalmente a una Tierra devastada después de un escenario apocalíptico. Allí encuentra a un único sobreviviente: un niño campesino. Cuando el niño intenta impedir que el cosmonauta se vaya, descubre que su vida está en peligro y debe encontrar una manera de salvarlo.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	\N	Colombia	Español	Todos	pelicula	t	f	registrado	/api/v1/posters/0f933380-2840-4305-aacc-0239348b3750.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.870494+00	2026-11-04 14:15:39.870494+00	\N	f	2
6	Pájaros azules	Durante el confinamiento, Miller vive solo en una zona rural y pasa sus días acompañado por sus botas, su celular y un televisor. La aparición de unas extrañas aves azules despierta en él una serie de pensamientos y lo lleva a cometer una sucesión de asesinatos.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	\N	Colombia	Español	Todos	corto	t	f	registrado	/api/v1/posters/4857ad0b-2c1d-451a-8a20-2cccc2d28f4e.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.52284+00	2026-11-04 14:15:39.52284+00	\N	f	1
1	Tundama	A comienzos del siglo XVI, el cacique muisca Tundama enfrenta la llegada de los españoles a sus territorios y lucha por defender a su pueblo y su cultura. En medio del conflicto, dos niños buscan a su hermana raptada y quedan atrapados entre ambos mundos, mientras la guerra desencadena historias de valentía, amor, traición y codicia.	1	2026	Colombia	Español	Todos	pelicula	t	f	registrado	/api/v1/posters/8f47d7e4-4a8d-4590-b41d-c46da4991021.webp	f	2026-10-08	2029-07-26	2026-10-08 13:39:09.867305+00	2026-10-08 13:39:09.867305+00	\N	t	1
7	Zapatillas	Harold recibe unas zapatillas nuevas para montar bicicleta. Sin embargo, su bicicleta está dañada y debe decidir entre repararla para poder salir a una excursión o encontrar otra manera de asistir, especialmente porque allí estará la niña que le gusta.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	1	\N	Colombia	Español	Todos	corto	t	f	registrado	/api/v1/posters/489e5ea5-953c-42d0-9cbc-a908d7d49abc.webp	f	2026-11-03	2027-11-04	2026-11-04 14:15:39.668527+00	2026-11-04 14:15:39.668527+00	\N	f	1
2	Thor	Historia	3	2024	Colombia	Español	Todos	pelicula	f	f	registrado	/api/v1/posters/92308232-a2b9-44fa-9adf-1fda63ec0b2b.jpg	f	2026-10-09	2027-09-01	2026-10-09 22:40:57.706382+00	2026-10-09 22:40:57.706382+00	2026-11-05 14:14:27.33616+00	f	2
\.


--
-- Data for Name: funciones; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.funciones (id, titulo_manual, obra_id, sala_id, inicio, precio, estado, duracion_minutos, intervalo_minutos, descripcion, imagen, eliminado_at) FROM stdin;
4	Luminaria	\N	1	2026-11-14 22:00:00+00	0.00	publicada	120	15	El documental acompaña la vida cotidiana de Alba, Víctor y Félix, habitantes de diferentes veredas de Garagoa. A través de su trabajo con la tierra, los cultivos y el paisaje del Valle de Tenza, la película retrata la relación de estas personas con el territorio y la vida campesina.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	/api/v1/posters/5bdc94a3-2eee-499d-9e63-592138e5699a.webp	\N
5	Starman	\N	1	2026-11-21 22:00:00+00	0.00	publicada	120	15	Un cosmonauta extraterrestre llega accidentalmente a una Tierra devastada después de un escenario apocalíptico. Allí encuentra a un único sobreviviente: un niño campesino. Cuando el niño intenta impedir que el cosmonauta se vaya, descubre que su vida está en peligro y debe encontrar una manera de salvarlo.\n\nDemostración técnica: el video disponible es una prueba de 12 segundos y no corresponde a la obra original. El afiche es una adaptación visual del mockup. La duración mostrada corresponde al video de prueba.	/api/v1/posters/115ff336-d04e-4e3c-925d-d8269a6a9be1.webp	\N
3	Tundama	\N	1	2026-12-17 22:47:00+00	0.00	publicada	71	15	Género: Animación, aventura e historia.\n\nPaís: Colombia.\n\nAño: 2020.\nDescripción para cartelera\nTundama es una película animada colombiana que cuenta la historia de un valiente cacique muisca que lucha por defender a su pueblo y sus tierras frente a la llegada de los conquistadores españoles. Ambientada en la época de la conquista, esta emocionante aventura destaca el valor, la resistencia y la riqueza cultural de nuestros antepasados indígenas.\n\nDirector: Diego Yaya y Edison Yaya.	/api/v1/posters/63695b43-c636-4bb2-b4ea-81b2e4fead8b.jpg	\N
1	Tundama	\N	1	2026-10-09 00:28:00+00	12000.00	publicada	120	10	Año: 2020\n\nDirección: Diego Yaya y Edison Yaya\n\nPaís: Colombia\n\nSinopsis:\n\nA principios del siglo XVI, el heroico cacique Tundama lidera a su pueblo frente a la llegada de los conquistadores españoles a los territorios muiscas. En medio del conflicto, dos hermanos sufren la devastación de la guerra y quedan separados, obligando al más joven a emprender un viaje lleno de peligros para rescatar a su hermana. Tundama es una épica película de animación 3D colombiana que rinde homenaje a la resistencia indígena, la cultura milenaria de los Andes y las raíces históricas de la región.	/api/v1/posters/8487d725-b031-4bdb-a650-8e2edbe3a023.jpg	2026-10-28 03:37:45.554619+00
2	Thor	\N	1	2026-10-30 21:35:00+00	9000.00	publicada	30	15	Año: 2011\n\nDirección: Kenneth Branagh\n\nReparto principal: Chris Hemsworth, Natalie Portman, Tom Hiddleston, Anthony Hopkins\n\nSinopsis:\n\nThor, el poderoso pero arrogante guerrero del reino celestial de Asgard, desata una antigua guerra tras cometer un acto de imprudencia. Como castigo, su padre Odín lo despoja de sus poderes, le quita el martillo Mjolnir y lo desterra a la Tierra para que aprenda humildad. Mientras vive entre los humanos y conoce a la astrofísica Jane Foster, en Asgard su hermano Loki conspira para apoderarse del trono. Thor debe demostrar que es digno de su poder para salvar a ambos mundos de la destrucción.	/api/v1/posters/481de67e-3d8d-4e9c-b00f-1ae96343b92b.jpg	2026-10-28 03:37:58.662999+00
\.


--
-- Data for Name: generos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.generos (id, nombre) FROM stdin;
1	Drama
2	Animación
3	Comedia
4	Documental
5	Suspenso
6	Ficción
7	Romance
\.


--
-- Data for Name: lsc_videos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.lsc_videos (id, obra_id, ruta_archivo, tipo_integracion) FROM stdin;
\.


--
-- Data for Name: modulos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.modulos (id, curso_id, titulo, ruta, orden, obra_id) FROM stdin;
\.


--
-- Data for Name: obras_generos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.obras_generos (obra_id, genero_id) FROM stdin;
4	7
5	4
6	5
7	6
8	6
3	6
9	6
1	1
2	1
\.


--
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.personas (id, nombre, tipo_persona, fecha_nac, pais) FROM stdin;
1	Geezye	\N	\N	Colombia
2	Pablo Sánchez	\N	\N	Colombia
3	Laura Carvajal	\N	\N	Colombia
4	Mónica Juanita Hernández Duquino	\N	\N	Colombia
5	Los Señores Rodríguez	\N	\N	Colombia
6	Jefferson Jiménez Díaz	\N	\N	Colombia
7	José Miguel Martínez Rojas	\N	\N	Colombia
8	Luber Yesid Zúñiga Ordóñez	\N	\N	Colombia
9	Diego Yaya	\N	\N	Colombia
10	Edison Yaya	\N	\N	Colombia
\.


--
-- Data for Name: obras_personas; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.obras_personas (obra_id, persona_id, rol) FROM stdin;
9	2	Director
8	3	Director
7	4	Director
6	5	Director
5	6	Director
4	7	Director
3	8	Director
1	9	Director
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roles (id, nombre, descripcion, created_at) FROM stdin;
1	espectador	\N	2026-10-08 13:35:14.624271+00
2	administrador	\N	2026-10-08 13:35:14.624271+00
3	programador	Consulta y gestiona la programación de funciones	2026-10-08 13:35:15.053138+00
\.


--
-- Data for Name: rutas_cnrod; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.rutas_cnrod (id, municipio, ubicacion, fecha_evento, descripcion, obra_id, latitud, longitud) FROM stdin;
1	Cómbita	Parque principal, Cómbita, Boyacá, Colombia	2026-11-06 23:00:00+00	Película: Tundama\n\nA comienzos del siglo XVI, el cacique muisca Tundama enfrenta la llegada de los españoles a sus territorios y lucha por defender a su pueblo y su cultura. En medio del conflicto, dos niños buscan a su hermana raptada y quedan atrapados entre ambos mundos, mientras la guerra desencadena historias de valentía, amor, traición y codicia.\n\nEncuentro sobre memoria, identidad y la historia de los pueblos muiscas, con una conversación al finalizar la presentación.\n\nProgramación propuesta: fecha y espacio por confirmar con la organización.	1	\N	\N
2	Garagoa	Parque principal, Garagoa, Boyacá, Colombia	2026-11-08 21:00:00+00	Película: Luminaria\n\nEl documental acompaña la vida cotidiana de Alba, Víctor y Félix, habitantes de diferentes veredas de Garagoa. A través de su trabajo con la tierra, los cultivos y el paisaje del Valle de Tenza, la película retrata la relación de estas personas con el territorio y la vida campesina.\n\nEncuentro dedicado a la vida campesina y a los paisajes del Valle de Tenza. Conversación sobre los vínculos entre el cine documental, la tierra y la comunidad.\n\nProgramación propuesta: fecha y espacio por confirmar con la organización. Para la prueba de la aplicación está disponible un clip de demostración, no la película original.	5	\N	\N
3	Villa de Leyva	Plaza Mayor, Villa de Leyva, Boyacá, Colombia	2026-11-13 23:00:00+00	Película: Liebres\n\nValentina y Elisa viven y trabajan en una hacienda familiar. Elsa pertenece a un linaje de mujeres con conocimientos relacionados con la brujería y comienza a transmitirlos a su nieta. Mientras las jóvenes tienen sueños que anticipan un peligro, empiezan a descubrir una conexión con el poder y la historia de sus antepasadas.\n\nEncuentro sobre memoria familiar, relatos de tradición y creación de atmósferas en el cine. Espacio de conversación después de la presentación.\n\nProgramación propuesta: fecha y espacio por confirmar con la organización. Para la prueba de la aplicación está disponible un clip de demostración, no la película original.	8	\N	\N
4	Ráquira	Parque principal, Ráquira, Boyacá, Colombia	2026-11-15 21:00:00+00	Película: Pájaros azules\n\nDurante el confinamiento, Miller vive solo en una zona rural y pasa sus días acompañado por sus botas, su celular y un televisor. La aparición de unas extrañas aves azules despierta en él una serie de pensamientos y lo lleva a cometer una sucesión de asesinatos.\n\nEncuentro sobre las narrativas del suspenso y el territorio rural, con un diálogo sobre los personajes y el lenguaje visual de la obra.\n\nProgramación propuesta: fecha y espacio por confirmar con la organización. Para la prueba de la aplicación está disponible un clip de demostración, no la película original.	6	\N	\N
\.


--
-- Data for Name: subtitulos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subtitulos (id, obra_id, idioma, ruta_archivo) FROM stdin;
\.


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.videos (id, obra_id, tipo, ruta_archivo, resolucion, formato, checksum, tamano_bytes, bitrate, codec_video, codec_audio, duracion_real, is_master, profile_type, estado_transcodificacion, created_at, eliminado_at, etapa) FROM stdin;
3	2	hls	231d0301-43e7-414a-9628-7980ec622ba3.source	720p	hls	6e3465c84dd8a296a61935e6fce48fb83afc96c3a626c55e93f5c6780e5bfe12	9621632	\N	h264	aac	10	t	720p	listo	2026-10-09 22:42:21.346004+00	2026-10-09 22:49:19.266622+00	Procesamiento completado
9	6	hls	1ff6dad5-99e8-4b8a-8bf8-a6bd25eb938a.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.648841+00	\N	Procesamiento completado
6	3	hls	2f980359-c00a-4484-966d-c7ac11cedf29.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.211714+00	\N	Procesamiento completado
13	2	hls	44949ed2-4df9-4f96-ba4d-0e6e7e5a6152.source	720p	hls	67447f41527fd8045ca59aa5fd6a6a46c30be70d68099e30c927627de149ec94	61012997	\N	h264	aac	152	t	720p	listo	2026-11-04 15:30:06.933215+00	\N	Procesamiento completado
10	7	hls	c2eff35f-9893-40ca-ab0e-132cc08cdfa8.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.74539+00	\N	Procesamiento completado
2	2	hls	e76fce9a-9838-4e0a-82aa-6ef0968de10c.source	720p	hls	718f15b739fd6862079ab824cdd5c8393404da622c39b88de9ed3785a277e29b	3788263	\N	h264	aac	4	t	720p	listo	2026-10-09 22:42:08.056676+00	2026-10-09 22:42:30.448771+00	Procesamiento completado
7	4	hls	914b0cba-49e2-427a-87a4-248b6a9ec6dd.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.355931+00	\N	Procesamiento completado
4	2	hls	fa4ee425-1b07-459a-8ee4-89792d8c446a.source	720p	hls	5ba6e6766eba34d9ca9941b5f43127404206348ca58aca155c468d82a1c73173	13962799	\N	h264	aac	152	t	720p	listo	2026-10-09 22:43:42.557127+00	\N	Procesamiento completado
11	8	hls	4a5bc303-5d1d-42eb-b55c-30e63ab24ab8.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.85381+00	\N	Procesamiento completado
1	1	hls	23bfabfb-e179-4b3d-b4da-fe085b3a5e5e.source	720p	hls	5ba6e6766eba34d9ca9941b5f43127404206348ca58aca155c468d82a1c73173	13962799	\N	h264	aac	152	t	720p	listo	2026-10-08 13:39:42.338442+00	2026-10-09 22:49:14.580663+00	Procesamiento completado
8	5	hls	04dd078f-d26a-4758-a269-2a1ff9242336.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.507225+00	\N	Procesamiento completado
12	9	hls	2eaeb300-b0a6-4797-8d65-1f26c94d3c8d.source	720p	hls	7e707e7d63ee45f5bcb8379cf06a6436d367911db93fabe8a07e6baec5f72ad8	1583917	\N	h264	aac	12	t	720p	listo	2026-11-04 14:15:39.940734+00	\N	Procesamiento completado
15	1	hls	85491e77-a419-4238-8534-ec6e5c4b2289.source	720p	hls	2d2390a12b790933340545cfccc9ce6165246e4e4fd9266b82fd9c1e252429a1	266990	\N	h264	aac	12	t	720p	listo	2026-11-05 14:14:27.317924+00	\N	Procesamiento completado
14	1	hls	8e96441a-2c1f-4e1e-a407-f77f5449edf0.source	720p	hls	67447f41527fd8045ca59aa5fd6a6a46c30be70d68099e30c927627de149ec94	61012997	\N	h264	aac	152	t	720p	listo	2026-11-04 15:30:48.495052+00	2026-11-05 14:14:35.221547+00	Procesamiento completado
5	1	hls	acb9196c-938c-42cf-b8ea-04c2171145ba.source	720p	hls	6e3465c84dd8a296a61935e6fce48fb83afc96c3a626c55e93f5c6780e5bfe12	9621632	\N	h264	aac	10	t	720p	listo	2026-10-09 22:47:57.436752+00	2026-11-05 14:14:35.244015+00	Procesamiento completado
\.


--
-- Name: asientos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.asientos_id_seq', 360, true);


--
-- Name: aulas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.aulas_id_seq', 4, true);


--
-- Name: cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cursos_id_seq', 3, true);


--
-- Name: documentos_legales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.documentos_legales_id_seq', 1, true);


--
-- Name: equipo_miembros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.equipo_miembros_id_seq', 45, true);


--
-- Name: eventos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.eventos_id_seq', 2, true);


--
-- Name: funciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.funciones_id_seq', 5, true);


--
-- Name: generos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.generos_id_seq', 7, true);


--
-- Name: lsc_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.lsc_videos_id_seq', 1, false);


--
-- Name: modulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.modulos_id_seq', 1, false);


--
-- Name: obras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.obras_id_seq', 9, true);


--
-- Name: personas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.personas_id_seq', 10, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.roles_id_seq', 270, true);


--
-- Name: rutas_cnrod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.rutas_cnrod_id_seq', 4, true);


--
-- Name: salas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.salas_id_seq', 1, true);


--
-- Name: subtitulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subtitulos_id_seq', 1, false);


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.videos_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--

\unrestrict oF0xEuvCIILHqHmBoVooBKjJimIHQjHOuvjVxlfpyM0OTGlNbCYPsCwdVqTWemY

