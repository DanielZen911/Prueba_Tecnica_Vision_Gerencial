-- Table: public.cartera

-- DROP TABLE IF EXISTS public.cartera;

CREATE TABLE IF NOT EXISTS public.cartera
(
    tipo_entidad text COLLATE pg_catalog."default",
    codigo_entidad text COLLATE pg_catalog."default",
    nombreentidad text COLLATE pg_catalog."default",
    fecha_corte text COLLATE pg_catalog."default",
    unicap text COLLATE pg_catalog."default",
    descrip_uc text COLLATE pg_catalog."default",
    renglon text COLLATE pg_catalog."default",
    desc_renglon text COLLATE pg_catalog."default",
    _1_saldo_de_la_cartera_a text COLLATE pg_catalog."default",
    _2_vigente text COLLATE pg_catalog."default",
    _3_vencida_1_2_meses text COLLATE pg_catalog."default",
    _4_vencida_2_3_meses text COLLATE pg_catalog."default",
    _5_vencida_1_3_meses text COLLATE pg_catalog."default",
    _6_vencida_3_4_meses text COLLATE pg_catalog."default",
    _7_vencida_de_4_meses text COLLATE pg_catalog."default",
    _8_vencida_3_6_meses text COLLATE pg_catalog."default",
    _9_vencida_6_meses text COLLATE pg_catalog."default",
    _10_vencida_1_4_meses text COLLATE pg_catalog."default",
    _11_vencida_4_6_meses text COLLATE pg_catalog."default",
    _12_vencida_6_12_meses text COLLATE pg_catalog."default",
    _13_vencida_12_18_meses text COLLATE pg_catalog."default",
    _14_vencida_12_meses text COLLATE pg_catalog."default",
    _15_vencida_18_meses text COLLATE pg_catalog."default",
    _16_n_mero_de_clientes_mora text COLLATE pg_catalog."default",
    _17_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _18_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _19_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _20_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _21_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _22_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _23_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _24_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _25_calificaci_n_de_riesgo text COLLATE pg_catalog."default",
    _26_calificaci_n_de_riesgo text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cartera
    OWNER to postgres;