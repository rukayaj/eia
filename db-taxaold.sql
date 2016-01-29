PGDMP     
                     t            eia_tool    9.5beta1    9.5beta1 L   8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            :           1262    20974    eia_tool    DATABASE     �   CREATE DATABASE eia_tool WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE eia_tool;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ;           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            <           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5                       3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            =           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    258                       3079    20975    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                  false    5            >           0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                       false    259            �            1259    24514    account_emailaddress    TABLE     �   CREATE TABLE account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         postgres    false    5            �            1259    24512    account_emailaddress_id_seq    SEQUENCE     }   CREATE SEQUENCE account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public       postgres    false    241    5            ?           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE account_emailaddress_id_seq OWNED BY account_emailaddress.id;
            public       postgres    false    240            �            1259    24524    account_emailconfirmation    TABLE     �   CREATE TABLE account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         postgres    false    5            �            1259    24522     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public       postgres    false    243    5            @           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE account_emailconfirmation_id_seq OWNED BY account_emailconfirmation.id;
            public       postgres    false    242            �            1259    22374 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    5            �            1259    22372    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    5    202            A           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    201            �            1259    22384    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    5            �            1259    22382    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    204    5            B           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    203            �            1259    22364    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    5            �            1259    22362    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    5    200            C           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    199            �            1259    22394 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    5            �            1259    22404    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    5            �            1259    22402    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    208    5            D           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    207            �            1259    22392    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    206    5            E           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    205            �            1259    22414    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    5            �            1259    22412 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    210    5            F           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    209            �            1259    22492    core_developer    TABLE     �   CREATE TABLE core_developer (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(50) NOT NULL,
    phone character varying(15) NOT NULL
);
 "   DROP TABLE public.core_developer;
       public         postgres    false    5            �            1259    22490    core_developer_id_seq    SEQUENCE     w   CREATE SEQUENCE core_developer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_developer_id_seq;
       public       postgres    false    214    5            G           0    0    core_developer_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE core_developer_id_seq OWNED BY core_developer.id;
            public       postgres    false    213            �            1259    22500    core_documents    TABLE     �   CREATE TABLE core_documents (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    uploaded timestamp with time zone NOT NULL,
    document_type character varying(1) NOT NULL,
    project_id integer NOT NULL
);
 "   DROP TABLE public.core_documents;
       public         postgres    false    5            �            1259    22498    core_documents_id_seq    SEQUENCE     w   CREATE SEQUENCE core_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_documents_id_seq;
       public       postgres    false    5    216            H           0    0    core_documents_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE core_documents_id_seq OWNED BY core_documents.id;
            public       postgres    false    215            �            1259    22601    core_equipmentmake    TABLE     f   CREATE TABLE core_equipmentmake (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 &   DROP TABLE public.core_equipmentmake;
       public         postgres    false    5            �            1259    22508    core_fatalitydata    TABLE     �   CREATE TABLE core_fatalitydata (
    id integer NOT NULL,
    coordinates geometry(Point,4326) NOT NULL,
    cause_of_death character varying(1) NOT NULL,
    metadata_id integer NOT NULL,
    taxa_id integer NOT NULL
);
 %   DROP TABLE public.core_fatalitydata;
       public         postgres    false    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5            �            1259    22506    core_fatalitydata_id_seq    SEQUENCE     z   CREATE SEQUENCE core_fatalitydata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.core_fatalitydata_id_seq;
       public       postgres    false    5    218            I           0    0    core_fatalitydata_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE core_fatalitydata_id_seq OWNED BY core_fatalitydata.id;
            public       postgres    false    217            �            1259    22520    core_focalsite    TABLE     G  CREATE TABLE core_focalsite (
    id integer NOT NULL,
    location geometry(Polygon,4326) NOT NULL,
    name character varying(50) NOT NULL,
    sensitive boolean NOT NULL,
    activity character varying(1) NOT NULL,
    habitat character varying(2) NOT NULL,
    order_id integer NOT NULL,
    project_id integer NOT NULL
);
 "   DROP TABLE public.core_focalsite;
       public         postgres    false    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5            �            1259    22518    core_focalsite_id_seq    SEQUENCE     w   CREATE SEQUENCE core_focalsite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_focalsite_id_seq;
       public       postgres    false    5    220            J           0    0    core_focalsite_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE core_focalsite_id_seq OWNED BY core_focalsite.id;
            public       postgres    false    219            �            1259    22532    core_focalsitedata    TABLE       CREATE TABLE core_focalsitedata (
    id integer NOT NULL,
    count integer NOT NULL,
    life_stage character varying(1) NOT NULL,
    activity character varying(3),
    focal_site_id integer NOT NULL,
    metadata_id integer NOT NULL,
    taxa_id integer NOT NULL
);
 &   DROP TABLE public.core_focalsitedata;
       public         postgres    false    5            �            1259    22530    core_focalsitedata_id_seq    SEQUENCE     {   CREATE SEQUENCE core_focalsitedata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.core_focalsitedata_id_seq;
       public       postgres    false    222    5            K           0    0    core_focalsitedata_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE core_focalsitedata_id_seq OWNED BY core_focalsitedata.id;
            public       postgres    false    221            �            1259    22540    core_metadata    TABLE     c  CREATE TABLE core_metadata (
    id integer NOT NULL,
    collected_to timestamp with time zone NOT NULL,
    collected_from timestamp with time zone NOT NULL,
    flagged_for_query boolean NOT NULL,
    control_data boolean NOT NULL,
    project_id integer NOT NULL,
    uploader_id integer NOT NULL,
    uploaded_on timestamp with time zone NOT NULL
);
 !   DROP TABLE public.core_metadata;
       public         postgres    false    5            �            1259    22538    core_metadata_id_seq    SEQUENCE     v   CREATE SEQUENCE core_metadata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.core_metadata_id_seq;
       public       postgres    false    224    5            L           0    0    core_metadata_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE core_metadata_id_seq OWNED BY core_metadata.id;
            public       postgres    false    223            �            1259    22548    core_populationdata    TABLE       CREATE TABLE core_populationdata (
    id integer NOT NULL,
    count integer NOT NULL,
    collision_risk character varying(1) NOT NULL,
    density_km numeric(10,5) NOT NULL,
    passage_rate numeric(7,2) NOT NULL,
    metadata_id integer NOT NULL,
    taxa_id integer NOT NULL
);
 '   DROP TABLE public.core_populationdata;
       public         postgres    false    5            �            1259    22546    core_populationdata_id_seq    SEQUENCE     |   CREATE SEQUENCE core_populationdata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.core_populationdata_id_seq;
       public       postgres    false    5    226            M           0    0    core_populationdata_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE core_populationdata_id_seq OWNED BY core_populationdata.id;
            public       postgres    false    225            �            1259    22556    core_previousdevelopers    TABLE     �   CREATE TABLE core_previousdevelopers (
    id integer NOT NULL,
    stopped timestamp with time zone NOT NULL,
    developer_id integer NOT NULL,
    project_id integer NOT NULL
);
 +   DROP TABLE public.core_previousdevelopers;
       public         postgres    false    5            �            1259    22554    core_previousdevelopers_id_seq    SEQUENCE     �   CREATE SEQUENCE core_previousdevelopers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.core_previousdevelopers_id_seq;
       public       postgres    false    5    228            N           0    0    core_previousdevelopers_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE core_previousdevelopers_id_seq OWNED BY core_previousdevelopers.id;
            public       postgres    false    227            �            1259    22564    core_previousprojectnames    TABLE     �   CREATE TABLE core_previousprojectnames (
    id integer NOT NULL,
    previous_name character varying(50) NOT NULL,
    stopped timestamp with time zone NOT NULL,
    project_id integer NOT NULL
);
 -   DROP TABLE public.core_previousprojectnames;
       public         postgres    false    5            �            1259    22562     core_previousprojectnames_id_seq    SEQUENCE     �   CREATE SEQUENCE core_previousprojectnames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.core_previousprojectnames_id_seq;
       public       postgres    false    5    230            O           0    0     core_previousprojectnames_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE core_previousprojectnames_id_seq OWNED BY core_previousprojectnames.id;
            public       postgres    false    229            �            1259    24648    core_profile    TABLE     �   CREATE TABLE core_profile (
    id integer NOT NULL,
    phone character varying(100) NOT NULL,
    user_id integer NOT NULL,
    type character varying(2) NOT NULL
);
     DROP TABLE public.core_profile;
       public         postgres    false    5            �            1259    24646    core_profile_id_seq    SEQUENCE     u   CREATE SEQUENCE core_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_profile_id_seq;
       public       postgres    false    255    5            P           0    0    core_profile_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE core_profile_id_seq OWNED BY core_profile.id;
            public       postgres    false    254            �            1259    22572    core_project    TABLE       CREATE TABLE core_project (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    location geometry(Polygon,4326) NOT NULL,
    eia_number character varying(20) NOT NULL,
    energy_type character varying(1) NOT NULL,
    operational_date date,
    construction_date date,
    turbine_locations geometry(MultiPoint,4326),
    equipment_capacity integer,
    equipment_height integer,
    developer_id integer NOT NULL,
    equipment_make_id integer,
    solar_panel_locations geometry(Polygon,4326)
);
     DROP TABLE public.core_project;
       public         postgres    false    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5            �            1259    22570    core_project_id_seq    SEQUENCE     u   CREATE SEQUENCE core_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.core_project_id_seq;
       public       postgres    false    232    5            Q           0    0    core_project_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE core_project_id_seq OWNED BY core_project.id;
            public       postgres    false    231                       1259    24837    core_removalflag    TABLE     �   CREATE TABLE core_removalflag (
    id integer NOT NULL,
    reason text NOT NULL,
    requested_on timestamp with time zone NOT NULL,
    metadata_id integer NOT NULL,
    requested_by_id integer NOT NULL
);
 $   DROP TABLE public.core_removalflag;
       public         postgres    false    5                        1259    24835    core_removalflag_id_seq    SEQUENCE     y   CREATE SEQUENCE core_removalflag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_removalflag_id_seq;
       public       postgres    false    257    5            R           0    0    core_removalflag_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE core_removalflag_id_seq OWNED BY core_removalflag.id;
            public       postgres    false    256            �            1259    22585 	   core_taxa    TABLE     O  CREATE TABLE core_taxa (
    id integer NOT NULL,
    genus character varying(20) NOT NULL,
    species character varying(20) NOT NULL,
    updated timestamp with time zone NOT NULL,
    red_list character varying(1) NOT NULL,
    sensitive boolean NOT NULL,
    order_id integer NOT NULL,
    family character varying(20) NOT NULL
);
    DROP TABLE public.core_taxa;
       public         postgres    false    5            �            1259    22583    core_taxa_id_seq    SEQUENCE     r   CREATE SEQUENCE core_taxa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_taxa_id_seq;
       public       postgres    false    234    5            S           0    0    core_taxa_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE core_taxa_id_seq OWNED BY core_taxa.id;
            public       postgres    false    233            �            1259    22593    core_taxaorder    TABLE     e   CREATE TABLE core_taxaorder (
    id integer NOT NULL,
    "order" character varying(20) NOT NULL
);
 "   DROP TABLE public.core_taxaorder;
       public         postgres    false    5            �            1259    22591    core_taxaorder_id_seq    SEQUENCE     w   CREATE SEQUENCE core_taxaorder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_taxaorder_id_seq;
       public       postgres    false    5    236            T           0    0    core_taxaorder_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE core_taxaorder_id_seq OWNED BY core_taxaorder.id;
            public       postgres    false    235            �            1259    22599    core_turbinemake_id_seq    SEQUENCE     y   CREATE SEQUENCE core_turbinemake_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_turbinemake_id_seq;
       public       postgres    false    238    5            U           0    0    core_turbinemake_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE core_turbinemake_id_seq OWNED BY core_equipmentmake.id;
            public       postgres    false    237            �            1259    22468    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    5            �            1259    22466    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    212    5            V           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    211            �            1259    22354    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    5            �            1259    22352    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    5    198            W           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    197            �            1259    22343    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    5            �            1259    22341    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    5    196            X           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    195            �            1259    22703    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    5            �            1259    24551    django_site    TABLE     �   CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    5            �            1259    24549    django_site_id_seq    SEQUENCE     t   CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    5    245            Y           0    0    django_site_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;
            public       postgres    false    244            �            1259    24559    socialaccount_socialaccount    TABLE     =  CREATE TABLE socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         postgres    false    5            �            1259    24557 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public       postgres    false    5    247            Z           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE socialaccount_socialaccount_id_seq OWNED BY socialaccount_socialaccount.id;
            public       postgres    false    246            �            1259    24570    socialaccount_socialapp    TABLE       CREATE TABLE socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         postgres    false    5            �            1259    24568    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public       postgres    false    5    249            [           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE socialaccount_socialapp_id_seq OWNED BY socialaccount_socialapp.id;
            public       postgres    false    248            �            1259    24578    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         postgres    false    5            �            1259    24576 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public       postgres    false    251    5            \           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE socialaccount_socialapp_sites_id_seq OWNED BY socialaccount_socialapp_sites.id;
            public       postgres    false    250            �            1259    24588    socialaccount_socialtoken    TABLE     �   CREATE TABLE socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         postgres    false    5            �            1259    24586     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public       postgres    false    5    253            ]           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE socialaccount_socialtoken_id_seq OWNED BY socialaccount_socialtoken.id;
            public       postgres    false    252            �           2604    24517    id    DEFAULT     t   ALTER TABLE ONLY account_emailaddress ALTER COLUMN id SET DEFAULT nextval('account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            �           2604    24527    id    DEFAULT     ~   ALTER TABLE ONLY account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            �           2604    22377    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            �           2604    22387    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            �           2604    22367    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            �           2604    22397    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206            �           2604    22407    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207    208            �           2604    22417    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            �           2604    22495    id    DEFAULT     h   ALTER TABLE ONLY core_developer ALTER COLUMN id SET DEFAULT nextval('core_developer_id_seq'::regclass);
 @   ALTER TABLE public.core_developer ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    213    214            �           2604    22503    id    DEFAULT     h   ALTER TABLE ONLY core_documents ALTER COLUMN id SET DEFAULT nextval('core_documents_id_seq'::regclass);
 @   ALTER TABLE public.core_documents ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            �           2604    22604    id    DEFAULT     n   ALTER TABLE ONLY core_equipmentmake ALTER COLUMN id SET DEFAULT nextval('core_turbinemake_id_seq'::regclass);
 D   ALTER TABLE public.core_equipmentmake ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            �           2604    22511    id    DEFAULT     n   ALTER TABLE ONLY core_fatalitydata ALTER COLUMN id SET DEFAULT nextval('core_fatalitydata_id_seq'::regclass);
 C   ALTER TABLE public.core_fatalitydata ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            �           2604    22523    id    DEFAULT     h   ALTER TABLE ONLY core_focalsite ALTER COLUMN id SET DEFAULT nextval('core_focalsite_id_seq'::regclass);
 @   ALTER TABLE public.core_focalsite ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            �           2604    22535    id    DEFAULT     p   ALTER TABLE ONLY core_focalsitedata ALTER COLUMN id SET DEFAULT nextval('core_focalsitedata_id_seq'::regclass);
 D   ALTER TABLE public.core_focalsitedata ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222            �           2604    22543    id    DEFAULT     f   ALTER TABLE ONLY core_metadata ALTER COLUMN id SET DEFAULT nextval('core_metadata_id_seq'::regclass);
 ?   ALTER TABLE public.core_metadata ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            �           2604    22551    id    DEFAULT     r   ALTER TABLE ONLY core_populationdata ALTER COLUMN id SET DEFAULT nextval('core_populationdata_id_seq'::regclass);
 E   ALTER TABLE public.core_populationdata ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    226    226            �           2604    22559    id    DEFAULT     z   ALTER TABLE ONLY core_previousdevelopers ALTER COLUMN id SET DEFAULT nextval('core_previousdevelopers_id_seq'::regclass);
 I   ALTER TABLE public.core_previousdevelopers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227    228            �           2604    22567    id    DEFAULT     ~   ALTER TABLE ONLY core_previousprojectnames ALTER COLUMN id SET DEFAULT nextval('core_previousprojectnames_id_seq'::regclass);
 K   ALTER TABLE public.core_previousprojectnames ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            �           2604    24651    id    DEFAULT     d   ALTER TABLE ONLY core_profile ALTER COLUMN id SET DEFAULT nextval('core_profile_id_seq'::regclass);
 >   ALTER TABLE public.core_profile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    254    255    255            �           2604    22575    id    DEFAULT     d   ALTER TABLE ONLY core_project ALTER COLUMN id SET DEFAULT nextval('core_project_id_seq'::regclass);
 >   ALTER TABLE public.core_project ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    232    232            �           2604    24840    id    DEFAULT     l   ALTER TABLE ONLY core_removalflag ALTER COLUMN id SET DEFAULT nextval('core_removalflag_id_seq'::regclass);
 B   ALTER TABLE public.core_removalflag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    257    256    257            �           2604    22588    id    DEFAULT     ^   ALTER TABLE ONLY core_taxa ALTER COLUMN id SET DEFAULT nextval('core_taxa_id_seq'::regclass);
 ;   ALTER TABLE public.core_taxa ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    234    234            �           2604    22596    id    DEFAULT     h   ALTER TABLE ONLY core_taxaorder ALTER COLUMN id SET DEFAULT nextval('core_taxaorder_id_seq'::regclass);
 @   ALTER TABLE public.core_taxaorder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    236    236            �           2604    22471    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211    212            �           2604    22357    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            �           2604    22346    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    196    196            �           2604    24554    id    DEFAULT     b   ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244    245            �           2604    24562    id    DEFAULT     �   ALTER TABLE ONLY socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            �           2604    24573    id    DEFAULT     z   ALTER TABLE ONLY socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    249    249            �           2604    24581    id    DEFAULT     �   ALTER TABLE ONLY socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            �           2604    24591    id    DEFAULT     ~   ALTER TABLE ONLY socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    252    253    253            %          0    24514    account_emailaddress 
   TABLE DATA               P   COPY account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public       postgres    false    241   ��      ^           0    0    account_emailaddress_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('account_emailaddress_id_seq', 9, true);
            public       postgres    false    240            '          0    24524    account_emailconfirmation 
   TABLE DATA               V   COPY account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public       postgres    false    243   �      _           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('account_emailconfirmation_id_seq', 8, true);
            public       postgres    false    242            �          0    22374 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    202   Ӫ      `           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 5, true);
            public       postgres    false    201                       0    22384    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    204   '�      a           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 33, true);
            public       postgres    false    203            �          0    22364    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    200   ��      b           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 92, true);
            public       postgres    false    199                      0    22394 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    206   x�                0    22404    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    208   W�      c           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 31, true);
            public       postgres    false    207            d           0    0    auth_user_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_user_id_seq', 15, true);
            public       postgres    false    205                      0    22414    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    210   ��      e           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 72, true);
            public       postgres    false    209            
          0    22492    core_developer 
   TABLE DATA               9   COPY core_developer (id, name, email, phone) FROM stdin;
    public       postgres    false    214   ��      f           0    0    core_developer_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('core_developer_id_seq', 12, true);
            public       postgres    false    213                      0    22500    core_documents 
   TABLE DATA               P   COPY core_documents (id, name, uploaded, document_type, project_id) FROM stdin;
    public       postgres    false    216   =�      g           0    0    core_documents_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('core_documents_id_seq', 1, false);
            public       postgres    false    215            "          0    22601    core_equipmentmake 
   TABLE DATA               /   COPY core_equipmentmake (id, name) FROM stdin;
    public       postgres    false    238   Z�                0    22508    core_fatalitydata 
   TABLE DATA               [   COPY core_fatalitydata (id, coordinates, cause_of_death, metadata_id, taxa_id) FROM stdin;
    public       postgres    false    218   ��      h           0    0    core_fatalitydata_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('core_fatalitydata_id_seq', 9, true);
            public       postgres    false    217                      0    22520    core_focalsite 
   TABLE DATA               i   COPY core_focalsite (id, location, name, sensitive, activity, habitat, order_id, project_id) FROM stdin;
    public       postgres    false    220   }�      i           0    0    core_focalsite_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('core_focalsite_id_seq', 7, true);
            public       postgres    false    219                      0    22532    core_focalsitedata 
   TABLE DATA               k   COPY core_focalsitedata (id, count, life_stage, activity, focal_site_id, metadata_id, taxa_id) FROM stdin;
    public       postgres    false    222   f�      j           0    0    core_focalsitedata_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('core_focalsitedata_id_seq', 20, true);
            public       postgres    false    221                      0    22540    core_metadata 
   TABLE DATA               �   COPY core_metadata (id, collected_to, collected_from, flagged_for_query, control_data, project_id, uploader_id, uploaded_on) FROM stdin;
    public       postgres    false    224   	�      k           0    0    core_metadata_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('core_metadata_id_seq', 123, true);
            public       postgres    false    223                      0    22548    core_populationdata 
   TABLE DATA               q   COPY core_populationdata (id, count, collision_risk, density_km, passage_rate, metadata_id, taxa_id) FROM stdin;
    public       postgres    false    226   ��      l           0    0    core_populationdata_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('core_populationdata_id_seq', 18, true);
            public       postgres    false    225                      0    22556    core_previousdevelopers 
   TABLE DATA               Q   COPY core_previousdevelopers (id, stopped, developer_id, project_id) FROM stdin;
    public       postgres    false    228   �      m           0    0    core_previousdevelopers_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('core_previousdevelopers_id_seq', 1, false);
            public       postgres    false    227                      0    22564    core_previousprojectnames 
   TABLE DATA               T   COPY core_previousprojectnames (id, previous_name, stopped, project_id) FROM stdin;
    public       postgres    false    230   %�      n           0    0     core_previousprojectnames_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('core_previousprojectnames_id_seq', 1, false);
            public       postgres    false    229            3          0    24648    core_profile 
   TABLE DATA               9   COPY core_profile (id, phone, user_id, type) FROM stdin;
    public       postgres    false    255   B�      o           0    0    core_profile_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('core_profile_id_seq', 8, true);
            public       postgres    false    254                      0    22572    core_project 
   TABLE DATA               �   COPY core_project (id, name, location, eia_number, energy_type, operational_date, construction_date, turbine_locations, equipment_capacity, equipment_height, developer_id, equipment_make_id, solar_panel_locations) FROM stdin;
    public       postgres    false    232   �      p           0    0    core_project_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('core_project_id_seq', 5, true);
            public       postgres    false    231            5          0    24837    core_removalflag 
   TABLE DATA               [   COPY core_removalflag (id, reason, requested_on, metadata_id, requested_by_id) FROM stdin;
    public       postgres    false    257   �      q           0    0    core_removalflag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('core_removalflag_id_seq', 5, true);
            public       postgres    false    256                      0    22585 	   core_taxa 
   TABLE DATA               `   COPY core_taxa (id, genus, species, updated, red_list, sensitive, order_id, family) FROM stdin;
    public       postgres    false    234   �      r           0    0    core_taxa_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('core_taxa_id_seq', 1, false);
            public       postgres    false    233                       0    22593    core_taxaorder 
   TABLE DATA               .   COPY core_taxaorder (id, "order") FROM stdin;
    public       postgres    false    236   .�      s           0    0    core_taxaorder_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('core_taxaorder_id_seq', 2, true);
            public       postgres    false    235            t           0    0    core_turbinemake_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('core_turbinemake_id_seq', 9, true);
            public       postgres    false    237                      0    22468    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    212   f�      u           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 28, true);
            public       postgres    false    211            �          0    22354    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    198   ��      v           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 29, true);
            public       postgres    false    197            �          0    22343    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    196   ��      w           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 76, true);
            public       postgres    false    195            #          0    22703    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    239   ��      )          0    24551    django_site 
   TABLE DATA               0   COPY django_site (id, domain, name) FROM stdin;
    public       postgres    false    245   V�      x           0    0    django_site_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('django_site_id_seq', 2, true);
            public       postgres    false    244            +          0    24559    socialaccount_socialaccount 
   TABLE DATA               o   COPY socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public       postgres    false    247   ��      y           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('socialaccount_socialaccount_id_seq', 1, true);
            public       postgres    false    246            -          0    24570    socialaccount_socialapp 
   TABLE DATA               V   COPY socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public       postgres    false    249   ��      z           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('socialaccount_socialapp_id_seq', 2, true);
            public       postgres    false    248            /          0    24578    socialaccount_socialapp_sites 
   TABLE DATA               K   COPY socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public       postgres    false    251   N�      {           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('socialaccount_socialapp_sites_id_seq', 1, true);
            public       postgres    false    250            1          0    24588    socialaccount_socialtoken 
   TABLE DATA               e   COPY socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public       postgres    false    253   q�      |           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('socialaccount_socialtoken_id_seq', 1, true);
            public       postgres    false    252            �          0    21265    spatial_ref_sys 
   TABLE DATA               Q   COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public       postgres    false    181   ��      3           2606    24547    account_emailaddress_email_key 
   CONSTRAINT     h   ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public         postgres    false    241    241            5           2606    24519    account_emailaddress_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public         postgres    false    241    241            9           2606    24531 !   account_emailconfirmation_key_key 
   CONSTRAINT     n   ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public         postgres    false    243    243            ;           2606    24529    account_emailconfirmation_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public         postgres    false    243    243            �           2606    22381    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    202    202            �           2606    22391 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    204    204    204            �           2606    22389    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    204    204            �           2606    22379    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    202    202            �           2606    22371 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    200    200    200            �           2606    22369    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    200    200            �           2606    22409    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    208    208            �           2606    22411 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    208    208    208            �           2606    22399    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    206    206            �           2606    22419    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    210    210            �           2606    22421 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    210    210    210            �           2606    22401    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    206    206            �           2606    24700 !   core_developer_name_4f04e8cf_uniq 
   CONSTRAINT     d   ALTER TABLE ONLY core_developer
    ADD CONSTRAINT core_developer_name_4f04e8cf_uniq UNIQUE (name);
 Z   ALTER TABLE ONLY public.core_developer DROP CONSTRAINT core_developer_name_4f04e8cf_uniq;
       public         postgres    false    214    214            �           2606    22497    core_developer_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY core_developer
    ADD CONSTRAINT core_developer_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_developer DROP CONSTRAINT core_developer_pkey;
       public         postgres    false    214    214            �           2606    22505    core_documents_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY core_documents
    ADD CONSTRAINT core_documents_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_documents DROP CONSTRAINT core_documents_pkey;
       public         postgres    false    216    216            �           2606    22516    core_fatalitydata_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY core_fatalitydata
    ADD CONSTRAINT core_fatalitydata_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.core_fatalitydata DROP CONSTRAINT core_fatalitydata_pkey;
       public         postgres    false    218    218                       2606    22528    core_focalsite_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY core_focalsite
    ADD CONSTRAINT core_focalsite_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_focalsite DROP CONSTRAINT core_focalsite_pkey;
       public         postgres    false    220    220                       2606    22537    core_focalsitedata_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY core_focalsitedata
    ADD CONSTRAINT core_focalsitedata_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.core_focalsitedata DROP CONSTRAINT core_focalsitedata_pkey;
       public         postgres    false    222    222                       2606    22545    core_metadata_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY core_metadata
    ADD CONSTRAINT core_metadata_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.core_metadata DROP CONSTRAINT core_metadata_pkey;
       public         postgres    false    224    224                       2606    22553    core_populationdata_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY core_populationdata
    ADD CONSTRAINT core_populationdata_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.core_populationdata DROP CONSTRAINT core_populationdata_pkey;
       public         postgres    false    226    226                       2606    22561    core_previousdevelopers_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY core_previousdevelopers
    ADD CONSTRAINT core_previousdevelopers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.core_previousdevelopers DROP CONSTRAINT core_previousdevelopers_pkey;
       public         postgres    false    228    228                       2606    22569    core_previousprojectnames_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY core_previousprojectnames
    ADD CONSTRAINT core_previousprojectnames_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.core_previousprojectnames DROP CONSTRAINT core_previousprojectnames_pkey;
       public         postgres    false    230    230            R           2606    24653    core_profile_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY core_profile
    ADD CONSTRAINT core_profile_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_pkey;
       public         postgres    false    255    255            T           2606    24673    core_profile_user_id_key 
   CONSTRAINT     \   ALTER TABLE ONLY core_profile
    ADD CONSTRAINT core_profile_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_key;
       public         postgres    false    255    255                       2606    24702    core_project_name_4f300ace_uniq 
   CONSTRAINT     `   ALTER TABLE ONLY core_project
    ADD CONSTRAINT core_project_name_4f300ace_uniq UNIQUE (name);
 V   ALTER TABLE ONLY public.core_project DROP CONSTRAINT core_project_name_4f300ace_uniq;
       public         postgres    false    232    232                       2606    22580    core_project_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY core_project
    ADD CONSTRAINT core_project_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.core_project DROP CONSTRAINT core_project_pkey;
       public         postgres    false    232    232            X           2606    24845    core_removalflag_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY core_removalflag
    ADD CONSTRAINT core_removalflag_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.core_removalflag DROP CONSTRAINT core_removalflag_pkey;
       public         postgres    false    257    257            #           2606    24509    core_taxa_family_1420acd1_uniq 
   CONSTRAINT     n   ALTER TABLE ONLY core_taxa
    ADD CONSTRAINT core_taxa_family_1420acd1_uniq UNIQUE (family, genus, species);
 R   ALTER TABLE ONLY public.core_taxa DROP CONSTRAINT core_taxa_family_1420acd1_uniq;
       public         postgres    false    234    234    234    234            %           2606    22590    core_taxa_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY core_taxa
    ADD CONSTRAINT core_taxa_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_taxa DROP CONSTRAINT core_taxa_pkey;
       public         postgres    false    234    234            '           2606    22598    core_taxaorder_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY core_taxaorder
    ADD CONSTRAINT core_taxaorder_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_taxaorder DROP CONSTRAINT core_taxaorder_pkey;
       public         postgres    false    236    236            )           2606    24705    core_turbinemake_name_key 
   CONSTRAINT     `   ALTER TABLE ONLY core_equipmentmake
    ADD CONSTRAINT core_turbinemake_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.core_equipmentmake DROP CONSTRAINT core_turbinemake_name_key;
       public         postgres    false    238    238            +           2606    22606    core_turbinemake_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY core_equipmentmake
    ADD CONSTRAINT core_turbinemake_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.core_equipmentmake DROP CONSTRAINT core_turbinemake_pkey;
       public         postgres    false    238    238            �           2606    22477    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    212    212            �           2606    22361 +   django_content_type_app_label_554a5220_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_554a5220_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_554a5220_uniq;
       public         postgres    false    198    198    198            �           2606    22359    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    198    198            �           2606    22351    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    196    196            .           2606    22710    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    239    239            =           2606    24556    django_site_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    245    245            @           2606    24567     socialaccount_socialaccount_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public         postgres    false    247    247            B           2606    24632 1   socialaccount_socialaccount_provider_80aaa03_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_80aaa03_uniq UNIQUE (provider, uid);
 w   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_80aaa03_uniq;
       public         postgres    false    247    247    247            D           2606    24575    socialaccount_socialapp_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public         postgres    false    249    249            H           2606    24583 "   socialaccount_socialapp_sites_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public         postgres    false    251    251            J           2606    24585 6   socialaccount_socialapp_sites_socialapp_id_site_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_socialapp_id_site_id_key UNIQUE (socialapp_id, site_id);
 ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_socialapp_id_site_id_key;
       public         postgres    false    251    251    251            M           2606    24598 .   socialaccount_socialtoken_app_id_3aec2981_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_3aec2981_uniq UNIQUE (app_id, account_id);
 r   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_3aec2981_uniq;
       public         postgres    false    253    253    253            P           2606    24596    socialaccount_socialtoken_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public         postgres    false    253    253            0           1259    24537    account_emailaddress_e8701ad4    INDEX     Z   CREATE INDEX account_emailaddress_e8701ad4 ON account_emailaddress USING btree (user_id);
 1   DROP INDEX public.account_emailaddress_e8701ad4;
       public         postgres    false    241            1           1259    24548 (   account_emailaddress_email_783b31cc_like    INDEX     w   CREATE INDEX account_emailaddress_email_783b31cc_like ON account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_783b31cc_like;
       public         postgres    false    241            6           1259    24544 "   account_emailconfirmation_6f1edeac    INDEX     m   CREATE INDEX account_emailconfirmation_6f1edeac ON account_emailconfirmation USING btree (email_address_id);
 6   DROP INDEX public.account_emailconfirmation_6f1edeac;
       public         postgres    false    243            7           1259    24545 +   account_emailconfirmation_key_3a801c9a_like    INDEX     }   CREATE INDEX account_emailconfirmation_key_3a801c9a_like ON account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_3a801c9a_like;
       public         postgres    false    243            �           1259    22428    auth_group_name_6b194e7_like    INDEX     `   CREATE INDEX auth_group_name_6b194e7_like ON auth_group USING btree (name varchar_pattern_ops);
 0   DROP INDEX public.auth_group_name_6b194e7_like;
       public         postgres    false    202            �           1259    22439    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    204            �           1259    22440    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    204            �           1259    22427    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    200            �           1259    22453    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    208            �           1259    22452    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    208            �           1259    22465 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    210            �           1259    22464 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    210            �           1259    22441     auth_user_username_4e56b79f_like    INDEX     g   CREATE INDEX auth_user_username_4e56b79f_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_4e56b79f_like;
       public         postgres    false    206            �           1259    22697    core_documents_b098ad43    INDEX     Q   CREATE INDEX core_documents_b098ad43 ON core_documents USING btree (project_id);
 +   DROP INDEX public.core_documents_b098ad43;
       public         postgres    false    216            �           1259    22517    core_fatalitydata_coordinate_id    INDEX     \   CREATE INDEX core_fatalitydata_coordinate_id ON core_fatalitydata USING gist (coordinates);
 3   DROP INDEX public.core_fatalitydata_coordinate_id;
       public         postgres    false    218    259    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5            �           1259    22691    core_fatalitydata_f48a24d3    INDEX     T   CREATE INDEX core_fatalitydata_f48a24d3 ON core_fatalitydata USING btree (taxa_id);
 .   DROP INDEX public.core_fatalitydata_f48a24d3;
       public         postgres    false    218            �           1259    22685    core_fatalitydata_ffe73c23    INDEX     X   CREATE INDEX core_fatalitydata_ffe73c23 ON core_fatalitydata USING btree (metadata_id);
 .   DROP INDEX public.core_fatalitydata_ffe73c23;
       public         postgres    false    218            �           1259    22673    core_focalsite_69dfcb07    INDEX     O   CREATE INDEX core_focalsite_69dfcb07 ON core_focalsite USING btree (order_id);
 +   DROP INDEX public.core_focalsite_69dfcb07;
       public         postgres    false    220                        1259    22679    core_focalsite_b098ad43    INDEX     Q   CREATE INDEX core_focalsite_b098ad43 ON core_focalsite USING btree (project_id);
 +   DROP INDEX public.core_focalsite_b098ad43;
       public         postgres    false    220                       1259    22529    core_focalsite_location_id    INDEX     Q   CREATE INDEX core_focalsite_location_id ON core_focalsite USING gist (location);
 .   DROP INDEX public.core_focalsite_location_id;
       public         postgres    false    259    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5    220                       1259    22612    core_focalsitedata_49578f01    INDEX     \   CREATE INDEX core_focalsitedata_49578f01 ON core_focalsitedata USING btree (focal_site_id);
 /   DROP INDEX public.core_focalsitedata_49578f01;
       public         postgres    false    222                       1259    22667    core_focalsitedata_f48a24d3    INDEX     V   CREATE INDEX core_focalsitedata_f48a24d3 ON core_focalsitedata USING btree (taxa_id);
 /   DROP INDEX public.core_focalsitedata_f48a24d3;
       public         postgres    false    222                       1259    22661    core_focalsitedata_ffe73c23    INDEX     Z   CREATE INDEX core_focalsitedata_ffe73c23 ON core_focalsitedata USING btree (metadata_id);
 /   DROP INDEX public.core_focalsitedata_ffe73c23;
       public         postgres    false    222            	           1259    24810    core_metadata_af76a535    INDEX     P   CREATE INDEX core_metadata_af76a535 ON core_metadata USING btree (uploader_id);
 *   DROP INDEX public.core_metadata_af76a535;
       public         postgres    false    224            
           1259    24491    core_metadata_b098ad43    INDEX     O   CREATE INDEX core_metadata_b098ad43 ON core_metadata USING btree (project_id);
 *   DROP INDEX public.core_metadata_b098ad43;
       public         postgres    false    224                       1259    22655    core_populationdata_f48a24d3    INDEX     X   CREATE INDEX core_populationdata_f48a24d3 ON core_populationdata USING btree (taxa_id);
 0   DROP INDEX public.core_populationdata_f48a24d3;
       public         postgres    false    226                       1259    22618    core_populationdata_ffe73c23    INDEX     \   CREATE INDEX core_populationdata_ffe73c23 ON core_populationdata USING btree (metadata_id);
 0   DROP INDEX public.core_populationdata_ffe73c23;
       public         postgres    false    226                       1259    22624     core_previousdevelopers_3fd1a723    INDEX     e   CREATE INDEX core_previousdevelopers_3fd1a723 ON core_previousdevelopers USING btree (developer_id);
 4   DROP INDEX public.core_previousdevelopers_3fd1a723;
       public         postgres    false    228                       1259    22649     core_previousdevelopers_b098ad43    INDEX     c   CREATE INDEX core_previousdevelopers_b098ad43 ON core_previousdevelopers USING btree (project_id);
 4   DROP INDEX public.core_previousdevelopers_b098ad43;
       public         postgres    false    228                       1259    22643 "   core_previousprojectnames_b098ad43    INDEX     g   CREATE INDEX core_previousprojectnames_b098ad43 ON core_previousprojectnames USING btree (project_id);
 6   DROP INDEX public.core_previousprojectnames_b098ad43;
       public         postgres    false    230                       1259    22637    core_project_3d6587d9    INDEX     T   CREATE INDEX core_project_3d6587d9 ON core_project USING btree (equipment_make_id);
 )   DROP INDEX public.core_project_3d6587d9;
       public         postgres    false    232                       1259    22630    core_project_ddc8c2f8    INDEX     O   CREATE INDEX core_project_ddc8c2f8 ON core_project USING btree (developer_id);
 )   DROP INDEX public.core_project_ddc8c2f8;
       public         postgres    false    232                       1259    22581    core_project_location_id    INDEX     M   CREATE INDEX core_project_location_id ON core_project USING gist (location);
 ,   DROP INDEX public.core_project_location_id;
       public         postgres    false    259    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5    232                       1259    24826 %   core_project_solar_panel_locations_id    INDEX     g   CREATE INDEX core_project_solar_panel_locations_id ON core_project USING gist (solar_panel_locations);
 9   DROP INDEX public.core_project_solar_panel_locations_id;
       public         postgres    false    232    259    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5                        1259    24790 !   core_project_turbine_locations_id    INDEX     _   CREATE INDEX core_project_turbine_locations_id ON core_project USING gist (turbine_locations);
 5   DROP INDEX public.core_project_turbine_locations_id;
       public         postgres    false    259    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    259    5    5    232            U           1259    24857    core_removalflag_0a0193c8    INDEX     Z   CREATE INDEX core_removalflag_0a0193c8 ON core_removalflag USING btree (requested_by_id);
 -   DROP INDEX public.core_removalflag_0a0193c8;
       public         postgres    false    257            V           1259    24856    core_removalflag_ffe73c23    INDEX     V   CREATE INDEX core_removalflag_ffe73c23 ON core_removalflag USING btree (metadata_id);
 -   DROP INDEX public.core_removalflag_ffe73c23;
       public         postgres    false    257            !           1259    22631    core_taxa_69dfcb07    INDEX     E   CREATE INDEX core_taxa_69dfcb07 ON core_taxa USING btree (order_id);
 &   DROP INDEX public.core_taxa_69dfcb07;
       public         postgres    false    234            �           1259    22488    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    212            �           1259    22489    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    212            ,           1259    22711    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    239            /           1259    22712 (   django_session_session_key_5ee1f6bd_like    INDEX     w   CREATE INDEX django_session_session_key_5ee1f6bd_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_5ee1f6bd_like;
       public         postgres    false    239            >           1259    24606 $   socialaccount_socialaccount_e8701ad4    INDEX     h   CREATE INDEX socialaccount_socialaccount_e8701ad4 ON socialaccount_socialaccount USING btree (user_id);
 8   DROP INDEX public.socialaccount_socialaccount_e8701ad4;
       public         postgres    false    247            E           1259    24618 &   socialaccount_socialapp_sites_9365d6e7    INDEX     l   CREATE INDEX socialaccount_socialapp_sites_9365d6e7 ON socialaccount_socialapp_sites USING btree (site_id);
 :   DROP INDEX public.socialaccount_socialapp_sites_9365d6e7;
       public         postgres    false    251            F           1259    24617 &   socialaccount_socialapp_sites_fe95b0a0    INDEX     q   CREATE INDEX socialaccount_socialapp_sites_fe95b0a0 ON socialaccount_socialapp_sites USING btree (socialapp_id);
 :   DROP INDEX public.socialaccount_socialapp_sites_fe95b0a0;
       public         postgres    false    251            K           1259    24629 "   socialaccount_socialtoken_8a089c2a    INDEX     g   CREATE INDEX socialaccount_socialtoken_8a089c2a ON socialaccount_socialtoken USING btree (account_id);
 6   DROP INDEX public.socialaccount_socialtoken_8a089c2a;
       public         postgres    false    253            N           1259    24630 "   socialaccount_socialtoken_f382adfe    INDEX     c   CREATE INDEX socialaccount_socialtoken_f382adfe ON socialaccount_socialtoken USING btree (app_id);
 6   DROP INDEX public.socialaccount_socialtoken_f382adfe;
       public         postgres    false    253            u           2606    24539 ?   account_em_email_address_id_2e80b083_fk_account_emailaddress_id    FK CONSTRAINT     �   ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_em_email_address_id_2e80b083_fk_account_emailaddress_id FOREIGN KEY (email_address_id) REFERENCES account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_em_email_address_id_2e80b083_fk_account_emailaddress_id;
       public       postgres    false    3637    243    241            t           2606    24532 5   account_emailaddress_user_id_3f78a587_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_3f78a587_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_3f78a587_fk_auth_user_id;
       public       postgres    false    206    3551    241            [           2606    22434 ?   auth_group_permissi_permission_id_da7f2fd_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissi_permission_id_da7f2fd_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissi_permission_id_da7f2fd_fk_auth_permission_id;
       public       postgres    false    3538    204    200            Z           2606    22429 6   auth_group_permissions_group_id_c4253_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_c4253_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_c4253_fk_auth_group_id;
       public       postgres    false    204    202    3543            Y           2606    22422 ?   auth_permiss_content_type_id_357acc01_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_357acc01_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_357acc01_fk_django_content_type_id;
       public       postgres    false    198    3533    200            ]           2606    22447 3   auth_user_groups_group_id_153dd68d_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_153dd68d_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_153dd68d_fk_auth_group_id;
       public       postgres    false    202    208    3543            \           2606    22442 1   auth_user_groups_user_id_4c13820e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4c13820e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4c13820e_fk_auth_user_id;
       public       postgres    false    206    208    3551            _           2606    22459 ?   auth_user_user_per_permission_id_38daece0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_38daece0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_38daece0_fk_auth_permission_id;
       public       postgres    false    200    210    3538            ^           2606    22454 ;   auth_user_user_permissions_user_id_7d6b2f95_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7d6b2f95_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7d6b2f95_fk_auth_user_id;
       public       postgres    false    206    210    3551            b           2606    22698 5   core_documents_project_id_70dfbe8f_fk_core_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_documents
    ADD CONSTRAINT core_documents_project_id_70dfbe8f_fk_core_project_id FOREIGN KEY (project_id) REFERENCES core_project(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_documents DROP CONSTRAINT core_documents_project_id_70dfbe8f_fk_core_project_id;
       public       postgres    false    232    216    3614            c           2606    22686 :   core_fatalitydata_metadata_id_75d37fec_fk_core_metadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_fatalitydata
    ADD CONSTRAINT core_fatalitydata_metadata_id_75d37fec_fk_core_metadata_id FOREIGN KEY (metadata_id) REFERENCES core_metadata(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.core_fatalitydata DROP CONSTRAINT core_fatalitydata_metadata_id_75d37fec_fk_core_metadata_id;
       public       postgres    false    3596    224    218            d           2606    22692 2   core_fatalitydata_taxa_id_109009e2_fk_core_taxa_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_fatalitydata
    ADD CONSTRAINT core_fatalitydata_taxa_id_109009e2_fk_core_taxa_id FOREIGN KEY (taxa_id) REFERENCES core_taxa(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_fatalitydata DROP CONSTRAINT core_fatalitydata_taxa_id_109009e2_fk_core_taxa_id;
       public       postgres    false    3621    218    234            e           2606    22674 5   core_focalsite_order_id_105bc06f_fk_core_taxaorder_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_focalsite
    ADD CONSTRAINT core_focalsite_order_id_105bc06f_fk_core_taxaorder_id FOREIGN KEY (order_id) REFERENCES core_taxaorder(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_focalsite DROP CONSTRAINT core_focalsite_order_id_105bc06f_fk_core_taxaorder_id;
       public       postgres    false    220    236    3623            f           2606    22680 5   core_focalsite_project_id_776cf1d5_fk_core_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_focalsite
    ADD CONSTRAINT core_focalsite_project_id_776cf1d5_fk_core_project_id FOREIGN KEY (project_id) REFERENCES core_project(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_focalsite DROP CONSTRAINT core_focalsite_project_id_776cf1d5_fk_core_project_id;
       public       postgres    false    232    3614    220            g           2606    22607 =   core_focalsitedata_focal_site_id_ec7bed7_fk_core_focalsite_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_focalsitedata
    ADD CONSTRAINT core_focalsitedata_focal_site_id_ec7bed7_fk_core_focalsite_id FOREIGN KEY (focal_site_id) REFERENCES core_focalsite(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.core_focalsitedata DROP CONSTRAINT core_focalsitedata_focal_site_id_ec7bed7_fk_core_focalsite_id;
       public       postgres    false    220    3587    222            h           2606    22662 ;   core_focalsitedata_metadata_id_726a9891_fk_core_metadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_focalsitedata
    ADD CONSTRAINT core_focalsitedata_metadata_id_726a9891_fk_core_metadata_id FOREIGN KEY (metadata_id) REFERENCES core_metadata(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.core_focalsitedata DROP CONSTRAINT core_focalsitedata_metadata_id_726a9891_fk_core_metadata_id;
       public       postgres    false    3596    222    224            i           2606    22668 3   core_focalsitedata_taxa_id_5a976887_fk_core_taxa_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_focalsitedata
    ADD CONSTRAINT core_focalsitedata_taxa_id_5a976887_fk_core_taxa_id FOREIGN KEY (taxa_id) REFERENCES core_taxa(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.core_focalsitedata DROP CONSTRAINT core_focalsitedata_taxa_id_5a976887_fk_core_taxa_id;
       public       postgres    false    234    222    3621            j           2606    24492 4   core_metadata_project_id_2a4ec6c4_fk_core_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_metadata
    ADD CONSTRAINT core_metadata_project_id_2a4ec6c4_fk_core_project_id FOREIGN KEY (project_id) REFERENCES core_project(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.core_metadata DROP CONSTRAINT core_metadata_project_id_2a4ec6c4_fk_core_project_id;
       public       postgres    false    3614    232    224            k           2606    24811 2   core_metadata_uploader_id_54b7d58a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_metadata
    ADD CONSTRAINT core_metadata_uploader_id_54b7d58a_fk_auth_user_id FOREIGN KEY (uploader_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.core_metadata DROP CONSTRAINT core_metadata_uploader_id_54b7d58a_fk_auth_user_id;
       public       postgres    false    206    224    3551            l           2606    22613 <   core_populationdata_metadata_id_746d2cb8_fk_core_metadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_populationdata
    ADD CONSTRAINT core_populationdata_metadata_id_746d2cb8_fk_core_metadata_id FOREIGN KEY (metadata_id) REFERENCES core_metadata(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.core_populationdata DROP CONSTRAINT core_populationdata_metadata_id_746d2cb8_fk_core_metadata_id;
       public       postgres    false    224    3596    226            m           2606    22656 4   core_populationdata_taxa_id_1b68dd3e_fk_core_taxa_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_populationdata
    ADD CONSTRAINT core_populationdata_taxa_id_1b68dd3e_fk_core_taxa_id FOREIGN KEY (taxa_id) REFERENCES core_taxa(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.core_populationdata DROP CONSTRAINT core_populationdata_taxa_id_1b68dd3e_fk_core_taxa_id;
       public       postgres    false    234    3621    226            n           2606    22619 ?   core_previousdevelop_developer_id_6f49e13d_fk_core_developer_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_previousdevelopers
    ADD CONSTRAINT core_previousdevelop_developer_id_6f49e13d_fk_core_developer_id FOREIGN KEY (developer_id) REFERENCES core_developer(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.core_previousdevelopers DROP CONSTRAINT core_previousdevelop_developer_id_6f49e13d_fk_core_developer_id;
       public       postgres    false    3574    214    228            o           2606    22650 >   core_previousdevelopers_project_id_7bc4f127_fk_core_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_previousdevelopers
    ADD CONSTRAINT core_previousdevelopers_project_id_7bc4f127_fk_core_project_id FOREIGN KEY (project_id) REFERENCES core_project(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.core_previousdevelopers DROP CONSTRAINT core_previousdevelopers_project_id_7bc4f127_fk_core_project_id;
       public       postgres    false    3614    228    232            p           2606    22644 ?   core_previousprojectname_project_id_22c4dcc3_fk_core_project_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_previousprojectnames
    ADD CONSTRAINT core_previousprojectname_project_id_22c4dcc3_fk_core_project_id FOREIGN KEY (project_id) REFERENCES core_project(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.core_previousprojectnames DROP CONSTRAINT core_previousprojectname_project_id_22c4dcc3_fk_core_project_id;
       public       postgres    false    3614    232    230            {           2606    24686 -   core_profile_user_id_76bc95aa_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_profile
    ADD CONSTRAINT core_profile_user_id_76bc95aa_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_profile DROP CONSTRAINT core_profile_user_id_76bc95aa_fk_auth_user_id;
       public       postgres    false    3551    255    206            r           2606    24821 ?   core_projec_equipment_make_id_70f23ee2_fk_core_equipmentmake_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_project
    ADD CONSTRAINT core_projec_equipment_make_id_70f23ee2_fk_core_equipmentmake_id FOREIGN KEY (equipment_make_id) REFERENCES core_equipmentmake(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.core_project DROP CONSTRAINT core_projec_equipment_make_id_70f23ee2_fk_core_equipmentmake_id;
       public       postgres    false    238    232    3627            q           2606    24692 7   core_project_developer_id_2ef4a4eb_fk_core_developer_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_project
    ADD CONSTRAINT core_project_developer_id_2ef4a4eb_fk_core_developer_id FOREIGN KEY (developer_id) REFERENCES core_developer(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_project DROP CONSTRAINT core_project_developer_id_2ef4a4eb_fk_core_developer_id;
       public       postgres    false    232    214    3574            }           2606    24909 9   core_removalflag_metadata_id_3de79675_fk_core_metadata_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_removalflag
    ADD CONSTRAINT core_removalflag_metadata_id_3de79675_fk_core_metadata_id FOREIGN KEY (metadata_id) REFERENCES core_metadata(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.core_removalflag DROP CONSTRAINT core_removalflag_metadata_id_3de79675_fk_core_metadata_id;
       public       postgres    false    224    3596    257            |           2606    24851 8   core_removalflag_requested_by_id_421f598_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_removalflag
    ADD CONSTRAINT core_removalflag_requested_by_id_421f598_fk_auth_user_id FOREIGN KEY (requested_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.core_removalflag DROP CONSTRAINT core_removalflag_requested_by_id_421f598_fk_auth_user_id;
       public       postgres    false    3551    206    257            s           2606    22632 0   core_taxa_order_id_499893d6_fk_core_taxaorder_id    FK CONSTRAINT     �   ALTER TABLE ONLY core_taxa
    ADD CONSTRAINT core_taxa_order_id_499893d6_fk_core_taxaorder_id FOREIGN KEY (order_id) REFERENCES core_taxaorder(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.core_taxa DROP CONSTRAINT core_taxa_order_id_499893d6_fk_core_taxaorder_id;
       public       postgres    false    236    234    3623            `           2606    22478 ?   django_admin_content_type_id_219a21eb_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_219a21eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_219a21eb_fk_django_content_type_id;
       public       postgres    false    3533    198    212            a           2606    22483 1   django_admin_log_user_id_592c9958_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_592c9958_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_592c9958_fk_auth_user_id;
       public       postgres    false    206    212    3551            y           2606    24619 ?   socialacc_account_id_6f8dcaac_fk_socialaccount_socialaccount_id    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialacc_account_id_6f8dcaac_fk_socialaccount_socialaccount_id FOREIGN KEY (account_id) REFERENCES socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialacc_account_id_6f8dcaac_fk_socialaccount_socialaccount_id;
       public       postgres    false    3648    253    247            w           2606    24607 ?   socialaccou_socialapp_id_2519e91a_fk_socialaccount_socialapp_id    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccou_socialapp_id_2519e91a_fk_socialaccount_socialapp_id FOREIGN KEY (socialapp_id) REFERENCES socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccou_socialapp_id_2519e91a_fk_socialaccount_socialapp_id;
       public       postgres    false    251    249    3652            z           2606    24624 ?   socialaccount_soci_app_id_d0c3db8_fk_socialaccount_socialapp_id    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_soci_app_id_d0c3db8_fk_socialaccount_socialapp_id FOREIGN KEY (app_id) REFERENCES socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_soci_app_id_d0c3db8_fk_socialaccount_socialapp_id;
       public       postgres    false    3652    249    253            v           2606    24601 <   socialaccount_socialaccount_user_id_3a08d721_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_3a08d721_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_3a08d721_fk_auth_user_id;
       public       postgres    false    3551    247    206            x           2606    24612 ?   socialaccount_socialapp_site_site_id_2844c721_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_site_site_id_2844c721_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_site_site_id_2844c721_fk_django_site_id;
       public       postgres    false    3645    251    245            %   Y   x�3�,*�N�L�rH�M���K���,BC#.sΤ�Լ��<�b����$i �\��z��%��IŉyI�z�E�zU�y�=... K�      '   �   x�m��n� ��\��!�|x-݈ڱ��īo�̤I�O��6���N蝴7J;J:F� �|��R �����u�P#?�m�c9L������K̮�y��p~ν	ϼT��N�j#�|O����'Xg��9�R�	�^�';ه��m�%�W?aŏ9~?w�W;e"��R�5}i}(V�bm���_RBI�      �   D   x�3�L��+)�L*-�/�2�,)*-.IM�2�,J-,M-.�G�7���ԙr'�%e��$��q��qqq ��          L   x��� 1B�33��$v/鿎��'�%�*:��1�h�'6��[ڢ�Q���5]���X��b�1|<�/�G�s��      �   �  x�}�˒�0E��W�L6S�i{�M>"U)��$���G��Zdv�u�n�/�d_�T�ۭ�k!'���������_��#�O1�JB���or�����`�Lg�<�5�ʻb���/�8c�ܚ���������uf�7���%���`�k�	0	DyJ��k���#/�|X��P�� ��N��j2�~�}���&Pr^6��O·����ߥN�w��M�/�yȀw�.�/b`��k��ɧ�=Qv���W��2��4C��6G�8C[��E���a�0��W���9�ؙLi��F����V�b����`Vaѯ��J{�����=�m�{�Ə�(��"�R�.�W�^W�_�j7�����w*�4��1�n�_vڭ"dS*�d�!K���qҐ�l2�(�r�#Y��r_�5�)J��Ģ04�ps"��Iּ)��n9��M��rDf������X��HV���W��.J�a��0xg0��CQ܄�M��rw��\�wDIz���ռ���\:���%iv������$ہ,N�FVh.�|_�Q�l*����J��&��^��yA�X0I��"��;I�H0���U!����$��r|�9�#	�����|�at��,dUHN_��Hf�xp���;	�B%ͦ%�:p���!VU�W���v��V�wH�ݾͭ81N��;jb�ǡe�հbxGb�XE$^�E�\��|�5��j�����P���1TЦ��:jE��(�?�c�Q���Bm֢/�s��C%i���wŤeg����0��9���K~�)�����&r�z8�I���{r�۲!&S�����^'��HJ�Eq�Cr���w�>�WV����+���--	ȭ �!�-�?��c��/>/�X�Q���hit!&�of�ߊ�g���j�p��A���&��W�g�&bІ_OpfY�}��kɾ
m���*]�Ȝ
m�Y��a�{�Ƶ�(a˽*z}{����E�         �  x�mR�n�0|6_�J�!\_b�"U*Є�V@���rȅ4$��$4_�@�*u��#k43�X{;t<�7�
�x���i�t���˵9U-ן*t�Ii���JŃ��Y�7��50_�ei��O�.za�A��i#MB�mD�2�	�j����6�`XWO��� &�+��{cB򅉨Eg�&�מ�S�N�'i����_H3ַ��p+�bI�{�N
5�s�&f�Q�B8W�ZT���S�if��	��k���G"��M��^�&�4��1EC��2ʯ���(�câ�s��O[o�NW��0f;���ߒ�L9ve�Ex�Ym�_�郙��Q"��X�d�!�Tbr-�N��1�}����m3�[�?(�a�j���-^��|�^�+���#���ϔd?_�`qz��E����͘�^����eM��P�(��?�DA|'{�q��~�z��&�PF�cvq�6����         *   x�3�44�4�2��44і ڈ�� Ds�hS�=... ���            x������ � �      
      x�34�t�IM.)J��K�LL���sH���E���s9��ML��-,�9]�r2��<�RRR�D^�B@~yj�B@Q~JirjԘ�B�p��8Cs�+\�R��+9KA�T�\1z\\\ ��2�            x������ � �      "   4   x�3�tLN���KTp�K-J���t�).��U��K��tt	w������ 1FS         �   x���AR!�u�0I�%������vZ�R�Jؐū�	�]������kΊ���SHp/D(�#��Yh�EG����y�T�迸$��n���)������K�}��w!����Eņ���l�,��f�+���nRnN|�@�u�փ���~ܩ+�?�C:&�.vo�4%�]�γow�S�],~dB��nZ��G}��l�� � hvr1         �  x���͎S1���S�	����Y�N�	�l��RU�u*��$h�����J�n���skh0�Bq�yy������A9������CtйÔ��뼎�Ջ�Ι���Y����������ۧ���r<�7%�(Tfc_S�g�4�:���X��r� ���K$���'�37ɗ1]�Z��μʭ�E�쒄��.8�4��e��{����~�;���۟��骮j�d�t���Mb�C��B�="�\3V���ޙ�D�sBJ�K�y�aix�+��δ��]��@�s�%���B(����c����?m��eyn���~�qoN=@��{�YH޳�w��q�Z�dLpZ̊S�oKp�S^�G�Շ��pڷ�����g��\�� n�o���� �lt���]o���rq�f.���ܤ���-�����E�Q,�u��Տ���=#����>�~9,�Æ��?�݊/�6��o�+�         �   x�]�1� E���T��Iƈ�C�*[U��?G� ��̓��;��8"EdT<_�1��@=N�Ҵ[�P�{����~�Ǌ�r@�zmC��6�o�6901{m��{;\��O'�8YMVȗ'[�`b=��i첬���f=�`=����FD_��AS         �  x���Mr�0����w��_���u��ʐ ��V��7�ӓ�3Ҍ��X�+��&�w�O���W=Q+�
�,gC�[S^�m�!.ĩ��U�N>`�c�c��$bt��{}i�qᄥN�Ū$wxc�-cl��%��I��X�.��p��Nc�XKrۺ�S���n7��U4�76��4��g�Ǘ����Xh�W�Qa�B��I��ؽ��3�Ac1F����������w�+Yb������ԟ�mu�K�(fV�a��A����i'���v�m��jbϤ��"�k�W�tS[e��!8�M�D�5|(+��dбt�8��pX}KgE�L;y�w#���3����~�?�c~�Th�?�s�x$�7���W�m����єe�a;���n��O`y�F���\�N�4�%92�         D   x�mͱ�0C��k��;�!`���@P���BIp͞�)�5��x�F��PQ��R�{����$��4Y            x������ � �            x������ � �      3   -   x�3�40426153���44��s�2���"@��	��+W� �S�         c  x�}�=��0�g���oJ�DIc�.�t8�@�E��IN�szI	C��H��-.o߿m��0����(����)�suO�+�r)�@U��=ۑ��{DR���[���r���w�?�C�����e=3y���?e!�ENeO
��&�ۅ��P|)�Z����X٢��,LR-R��JJW%@m��Y�r�� ^7'�F]~������?�������@���Ӈ\��G3+J]\�*Xj��܆��I���h���E+%��ܨ������dqh$ҥ(�t���%�����hg�3����L�����c����Ҝu�y|R�b��9��5��X	f{��I4��n��M��2���t:���%      5   }   x�=�A�  �3�b�dh��<�/PI�4���{��C��0!4�2!M�(�f�,z���p$�J+�)�\6���ṷs�P��
�}�¥��`T.���f�Y�3����YI)?Q�#�            x���[��6��5�b�g!�Q��{�ٵ=^�s�8�����i�LI՝��7������<�g���(Q�`D0Qd��a��~�۹v��2/Կ�������U��y���2�g���ݵ��2��u�<?e�}�dB��W��х���5ß�G(�}��k6nr�ݺ�"��~oZG��[�ٷ��co�_�ֽ[߶��=���=�t�4��quЃ�ٯ���f�6w��.h�"?��:ьO�l�m����cdy&{;�g���9H
y�������cߵP�_�y!�x�������݆p[6d�D��&<��~�ﴬi��v?d����4=6s�a��� }�g�,��ڌT����}����v�ъ��fh�#�����D�쏻m�4,�Ėf�p~J����c���l�؈���0����u��m�`����WzPK�
�ye��ʺ�U��V7�]�%U���ᓿ�uv�sZ�����7�v�Q�<8�"Ͼ�m����L�4/�\����#�}s��J�\��҂B&��x���ZBBm��>F��Wƅ�|��VY��mp(�..��x* �^��@J�v1l0������x�i�v[d��rz��v�&��ܹ��ؑ��@��2�{%k�L����n������'��'��=HUg�����DI;P������"��u[����pT�g��������I�)Ud����;�}�0{@l��N�ߎl7v�bV�8������)�$�iPo(u�61�]����n�����L���w�8��T�1O�f�ޖ�q�O����mg�\�q���z�$@��9�I�<�ֺήFÌI�.^���8Ѻ|���>�&�x`)��f���:�P��^|�{�j&��ls������&�d$��Zm��a��M����i$Z�.��4�m��_0�;̳?��q�����*v�e���*w�J�&�vV%v.m^+�s��d��~�Nn�v���ͻsB*�sdq,�`U��lk�H�]����+���i�}Ks����V��d���?�e<b�20��ד%���@��
۔/l����v';c:;��h�L�2dȈm;\Izhw#+	|_v�iuz��O��`����7(B�zr���%��y��%��:�~!�:�w�]�%`hM�Vېk�M�|�U�A�Z;�0���>��Nҧ���D��m��ЯZgݨ1T��z���hR�>�x�M(�;�N� ���l���2�!EP��gzĆ���e���;P ��+�+f�s�l'֏�/�O��y��)[zA߰��x���b'�K�����%w����:^υ	u5�\�شؐ�5��ּ:^p$�1�A���X���_��LO���P88ߡ�V|,��a�Ɖ�-
�����;��l3����I�F��B>aR����(t\2�ـ$��<�d�ݸ���/8���;�D�5'[dCOK]a����nS����nA�X�����~I�ZQL�Fߊ�d�H_c�l��a��$ڼ�j-f��|%�eD-��TX;�bP� �e�w4AdБ.q��$B���%O�4,8���7�1t��D�����t���	�,��j���Ѓ?D8�eB�/,�KR�4!_��=@?��l�c��/�A����7�	sVe��츞A�arIomNpK���$(�Xp�� {O�}s=8�̳_'?϶����`;t�e���܇evW��Ó������5�TM�:�f�4��E��#g2�`�HR\�q���m�e!�|{��ȍ��|���ԯ�u�d]�r!I���Ԉ>�YrB[��)Y��ņl��|���*�7z{󨜪re��&��J44hm*I�d�!?�v�v���:�ֿ��F>.|4��8Bf��yE�2��n���je�X2��BfJ����~:�lYo������'��γ?��~��t�I����1�Wv\A�#�#�	lTc�̾].�O�V()ŧ�z�HwΨ��9�g��̼���1�p�	��a���

���8��~�����R�U~F����"�2��OP�)Y����Xg��0X7W�����o؉oQ�81��R/�) ��T������VT���--*�9�	��s�����;���_E�~�Hs�����t[�\����1�@�l�LM�2�c���iy�����Lݸ��y	���W4Ya������FS�Ҵv�f_�||���paj΄��ݾ��4?�p��(��W;2?�1�P�k��\̦JPm���.p�ֶ��[K���1Y�w�յکv�~�7P�:�&\W�� ��u��D�J�b�D��c(Y�oaX�.��/�,�<�~�\�DG�����I��ʽ��?�ƺ��x�B����
�\f?�i�#�Gz˜l!̲%��͐��e��d1�j�:��٫��m��+��n.D��a��,��M����F����9kq�'g��7~�"?��
�ˢ8c��\�L���B���kL��2�Ͷk�6Q�9�9��lxzHw#a��l�jv��������yok�孵�<1���\�!|����	|���m"XI޺��<���w����p�=j�e���Hfvg��yN��"_���@��ace)^F���S������s����^�PJY�j��I[�:��ҲZH9w.9�4�А�o�b hN�m����?k}b/��}�j?���=��6��F��]�5*���d��Hڡ�ab�!�Ar�E�/�1�ǡ�9��hi�CJc��*�'hq;��s���3s��AΑ��w�ƍ�^�J*gI�d�.�d{A�5��j�p~H����}�?)wlh���+v��s�#TJ����o������ㅫ���0����8����?t^ȃ'�t�7�H`P=��'7ӫ&m�1Iz�Ѱcӣ7�� \J1+z��R�˘}�cG�6�@�?fFo�\R�W?ɋ�h��TՓK<�+�9Mm�MU���f֕�$=䭇�ƁJ�>�G�,IS��Mu�[��x�-�O4���P�ݷCgc�츐���R�� �&��u�_P�lh�Z[uV;��A%�B?ɷh���YW�o��c"_c��S)mX�|�c�ēꥮ��}Ñ��b,eE�u�C�jp�� �3�c��;����U�������}�l�ǉ�*�pǗ�A˽Rُ�������#��7�,as���x�
��N����@���9aס��V�'r��W@�pS�9p��w���lqf�����~�#M5�/�8����s�J#_FN8�.9Q����=���vΗ~���>N�>�CPu�Y�O��w2����+M��ړ�/	�u���ݶ�&�iJ����I����U�On���[*kq��a���4��C?O��h��h�GgG?�՚�n0Cpu�0CpI�M�]�
�I���P��݆5O'i�y��g&�ˊ�x��8����u	�e�l0',ͦ����	�2�=z0%r�D�!\i��vK������s��g�|[��X4P!rs�c� �J>��\���Y7�7�c�����b�j�>�-��MQ��o�V�����~�,��� ���@��PFm��-���D�7��!$�$����뱀C����/\� �޸�nl�2ߐя��?F5�ep$�?M�-�+���J�<՞�xI�r�K{'��Wk@H��]	n�(�'�3_��:Vh"���7	��;z���!E~����!��[��U��vi�P����sB.X�B����d�CV.�s0;m␗�8��1��p^�|w��/�a]	O[��S�k�u<^�)�3��	6�,�t�o��\�e`�ćs�Ɣb�Rc�B��WZ~�362,�9�ʾ�UK���}8!BH���������<^!+��;l�Tc�M�}���Sd�Sy���I3�=�r%_�����>4�Jd?<���]�_��qH��J2�~Ĕn�b��x�,!�]���	nH�����[�b�P?q�¹�L���U��dNEp�i��\�!�o�x�-�%b��߆~����pV��������%�
-Nlʉ���D�٩��Z}��)B��f2�وw)م���K�Ʊ}4� ��I2
t��w��?@�c�;D�犝7���    �8բ}\�����F]E%��e������z����`���;����:7[RG���ԓL��)*��n4�r+> ��t�L�vP4'�B6�����C:4:%L~"�w��o�8�|~�p�_������9��"�v�ݐ�/|Z�Rr��)��!1a���K���˙�z�3$8����υ��~Lq�L��������+��c��wŎ���]��{l]�`̢�3?E-vrMǓ�����Z��g{o�ߊq|1�u�fc�����̖�����@���a�[S�Ģ�$�;�1<6�@�_��y�/�7���b��E�����v�㠒��Ra�����x�`�D�r#m���K��\m�����-�鍣m���`��j��:�Q='s��`�൐d^o�k,�X���%���.+�r�DQ��4�;I)�?d����� �6���&���0�,v1�f���}�._�8/�9E����t�A�**��<ɘf�2jͩ ��y�.p�2�����r����w�u4Y��(�2�9Z�)��E5��L9�˧�x�/9���[}@|S�%߉��TB�z���c��i��M�B�8�S�_�J����K� ,�p�n\Nŋ���"
�̾�����NvV����B(�Nh�m)��O�͉�B�9}p1�Nؖ�z�"�|)�y�^�G����;�	d/��-TB��.QB�7ɑވ�Ȭ����me��������_�I� �Ql�`BI}��
�	�����Ji�B|��^8+u�˃�WE���U��0���Kj~����_�Kx�0i��E��LN��u�����5JE���%��4Z�K�5�R{��=�L9�k)���~��A��'n���R�,��	M��k7w��29�̗l׌��������O[�6]<WzFyڳ�X3 A�꒛ٸuS��t �@gI�L���'��~����T鵷�Z/��6?-���O������F��������E��+�F?5h�����l�?�ʳ�ǻG�,��z�TVE�S�<?�[�M�W���	���
������[Ⓔ���c��{g�5�ѕR�Fz��Vv`F;bw�dE6�r}�z�k]p�L����0ס�P��>޹����upC#Y�g�#Eƅ!�2y���K�ǟ`�`�@���Y�r�f���l���AN<��*�uid�マs=�����T�m�-�p�Z�H�_��������*�Γ�!辐�j_c���^.�)�oS�F��/���Ο�d�X=�������]������u�wJ�|�kb��K-^ɉ6s0=L��%O�����r�`%<Y�Wv�@��F^]}����x���|��~uJ�"Y�?X@�+�N���(*1A�37�vt���!���:F�kX����h%.ŕ�O�݂��G���[$[����f*?Dl`����r�}g�L��d��\*�.��ʮY�{�c�3ܺ	� ������q��[/����`�f�j�$��jB��2�i�єڵCB�*b�y����@x4Gq3��$�kLH7T{�E$�!U��$	�SP�~��6h�P�	(^K���=����V)�ol�@���k�����JF5�Q��Pqm��o ob"[������E6ο ���2�]�J����o��^ش�-�$�Z���~��f&�c�;FN�Ы������2C���;7��~CMN�������	r���q�^q�n��GW��Y�m֛֡���>Ɗ�2 �3s��5���W�����=�a�ª���`$O	s`���r%C����� '�'����mJO�^S�d��1�H�o�%u�Q\xÅq�ܫ��ŗI@Tf���_��J�����M�\�`��������d�zZe�}$��n�cS[���� �-g85T�� ��OS|˦�k�Hb�R��'��U�<�G�tTq~�9�v	������%�{�hG8�Š�贴o�x�>�T\�������s{�J�R����U��U�cC~�vB+�]@�|�Ҵő^�cO�v��+��� �o_�f���E�0KZd���Z���2J#7����*�U�mj�r�U�#�F{x�G�j�:��~xm6hb�C���b�<�w<&n=kX�NgP��릑l�+ڹ��C�\��Wb��� ��ALJ�JEъy�m�p}<�;6�Wpê����2��CU,���!^r�.e���ɴ��}~�ܲ��:��-���*��P��',$���Mw-���A.��ps���5�P��V�XA�_ɊAɵ��n,%c+S���G��a?~��@���BÌ�(u�!���c��=�X�$�-76z�i��_1������r����a�����,W��������"@���\l�x�.��j����Uߵ�2߸Ap��ُIӊFVu^X�ë��I;FB���ŁN�3�}�s��ꄀ������M�ѹ>�x�f�z>��1Mp'�����Σ�:�O\�Y�.��s%m�>j��x��
F�u��Ԇ�+�Bd�q�ON�]*�a�9�<q	>��ِ?�R�Gs�����W�6x��9���.Z����~4��ڤ���~�k&5xn�9��ɦؠ��=���ߍC���yY��Γ�������X�l���[�Ԅ]Ms����>qwN���.|0�K���3)M=u�>�����u��_�;��	������
�[���N
+����=�+;IS�A�ξo9���X�PE+�j�nI�,��i������28�$X#Zp��v��.e-��C<�P�g�<��\l�Ѿ��s�b�-ۮ9D}�������A�;͹��uQWf�������ʜ�)6���r~xH���hI����Z���6�@U�2�i 9�i��3��#\�ZK�}lL�b��b/�k��pͩ�'x�����R}���`�7�!���+Oq�2:z��7�0�1K�դ�8���3���s�g7�����L۵o7��������ЂG������-_Ƕ�6E���H�ů�f��`�P+ub�vS�4W�^18�ii��4'z�μGR��2���-�g/Z����B �a����:?Фc�c���ex�dy"�ʸi-Nl�������ZOS��ۣ뇛����'���m�
��jN2�eӍ�Â�Z�'7-�����t���]�$)�򝼰��1��4C�-`�]��S4���u%Nt�S��R"XssD��Ϟ �O(7'F�5n�x��·BQҜ����Q��$�A�\��z���O�?�|� �<Q7>.��8���s�ŎhЂc�ȅ"��՜�h�}��g)J���Y��ly�w9�%��o�m����oФ]����uAo}���}A[m��,L}�n:�Y�
�h���(Ӫ�jt�v,�p���\�=���E��v�{�|�&� ��Q���3���V�ӓ\l��!�g��[�t���]gÒ[��41u!�Ȯʹ�x��9����V�ع�I�:U.w*,W�ƨr�3���+�\����otb��tg���U�,X���E�ϰ{_�9`�T�׋媂o���"�i����+�S܂3�y�d���{���~�!v�4��QU���)P�඲ ���Y���~�:�j�*��:�*HRlv�3�k����zژbM��^p�2E�	��_Te��.K WQY~�����Ƶ�>c�t?�M%s���<��c�$����#���
&Ibtv}n<�'�&.�Gֻ�P3D1C��$�E�obK,s�UY��a�J�/|j[�J�<)����������p��� �y������	�~y� 0)HRqe���(�_�w.���#�^h܄&ƍ�MT\�z�_�2�6`M*Q�A�9�"a2?�o�r���Y��OOݐ�oT2��t�wgo���̈́�q���p�J���4���'VR�P�el��S%���� �gRq��LK����s�����N��9e}��[a�ʳ_'N��ZOV?im�g���x�y�Zt�R�&%JWJ�ܚ�Ad��\ό�r�7�����*�)��J����>�V'�o����2��Z��ݱ������x�[�^�y�sl&iG�Rӧ��	��+O\j��J�����7pY��/��i�����Ǿ�I	 �  �whba�u���������Ϗ�6�9����*���Ƒ��"�v���~��a���T�iz��K���������ݗ��DL�Ʉ^;U�����_s�7���oɱM��y�����1�\ÿ`�Ŋ���s��,�v�+BV��z����je^ٵG.����4���$�?�顋��/��U�rUL��xeʽ,V��7�~�p6����< _W>��++I�I�y���$�K��hw�?Y=�a��ccF�ǬO(�s�[������A!��Uל���.� �|G�3��jqb��#�|�|�3j2��s͑J��q����_`C^I���(]O��N�)���c d5��B@k�WJ��}`��釽�K��M����dr���q���2�\����+͵�0s�����w�>.T�&��8W����U�4�z�m��	}M�?�)��W�t���)Áv��mJ�o���b��;8��)Y����qG�X*!�ab�FrK�Qߗ���S�l)�{��:C<��V|�jIl:d
�$� �Qt�U��\���>�5�>���rq��a�����[]�xw��JʬA?�U����^ؼk���;�9`	S�.�m�������o�퍦,^��\S��ъ�#�s���.g��:�֔2��]W?���[��K��K���~HxX�$W=��Y���$��mJ�z��O@�G�w��sRA#�p}�c�??�f�����;���1/߱���3B��~Rtǈ��:����@�P̩J/Q�����/��
���1rN2�1׉����o$�7��x|K�}1��ˑ30[s���gV��|eg�����@��rb��ƥ$��n�������@n`LK�>rpr���`��B`d�����!H�� ���	=�*4�SO���j�~��<�ގ�Z�p���2��|<ȱ9��M^�v0)A�(�s�@W��_V<ʜ(�r�>`0�>���ft~��֣.�o�%�8���&�&4Z�G�/���<�-�a�:q�3�z(�c4g\��0��kb�d������ϋBnhl�_9]0%o�hN���|���sJ'S�<l���o�c�*:%�gb�iֻf�>UX���@����n��Ǎ'��q����`���`8'{m��;i������}���Sc�oW
��/����2O���W����]�8C��#�W3��"0���v=:r��'���h�a���pcD��c���o��ݰ�j�
*�	�h2�9P� s�y�=���`�> tñ#>�l���zAؼ�I��ԯ�ֱ�u���W>Ku���9�m�(��Z]��=��3�8�)�Z-���)���O�ڸ����zl��;����6pm8���1����n藬7d3> ����m�/��:/6n��������CG>�A����ǤιJO4�z����v�ΰګsu�����\���I����,5�^����5W�vsX��>�p6T�u�3ٚ��qfo����O\��]ŉ���3���98�@��T�	���s�� 9 ��?:7����r$q�?Ys*x,l����K�(W����a� 7�X���cP|�
���ł*�j�:k�)`˩�&Th������6ե�����ِʯKy�aRBE]�|�	����ǀm������M�I\�f�F��5$�����U�	�8�f�=��x
�}�8Df�t4S�C`�E�g�����a�0\�. ���]؊��	m��P6�r�:Ү9C�l���q7|��ބ�9�\�,��O-��ʟ|;�p-��P���	L-�T��<�Ҏw��y-�y��K�|Iy�W5Gyk�NpҨ�,��]ә�,X�sb�|-�25=���.I֒w6=Wtt�b1��V����ݎRO0iV�LA%Σ^�-������/����G�C          (   x�3�N,-�,N��L�2��r�3K2R��1z\\\ �R
�         D  x����r�@E��+�O<կyn��O����1V�%[��}f$@b���������wHw�%r�>�Sh��|*���IA��$VQRl�ͱX|��6NN��@[�����@� 
�''x/�K�*�F���޾9��T��n��b�=Tۧn���S�nb]��sմe��e[=G5��e�%H�����f�� w%��m ���~��E��U���yI�u�&(!�fߘ�Tj���Fu���2�$�w`��\ 9���kǾ�ߍ]�{��s3MצZr)��)	!=�4��s+�~7���J�c
�w�*2���P.����ø~�/>'�qi�Ӹ�/�=��@�e*Q$0*�z�u1ĺy��md������Id/9J�b�>�>ͭ�Ƹ��5m�Ռ6������
���X=>^@�%Z��<ҝ#�Lӎ|�O���s�	�m=%X�m�*6� 7�q��안�7�i�6�YC����ٵ�Ҥ��K�M��^.�v�e�Z��t3������颓Wγ�遥��q~Q�֛�9)�C-�p������m�]�0��G�1��$�_�Z��P����	~      �     x�m��r� E��c:��I�/�h��ҀEyx���bH�t�a�G��C+�[�癖�.`��"��rv����9q�ph�fJ0(�K��r���
8�L[u�}�$	��H+y{xk &�$[@�n�V�5w�`�Z?�.2ݘm�_Ⱦ����i�V��K@MLl�gW���@G,�҇���"�7����Ѿ�$»r٠٩kB�^0Z��\��(��8�I��<r9��R�:�٫�֡��t#���PS`����g�����2[_�����<�K%
���<��� ?]���      �   �  x����n�6��O��C�%��2�Z�.[�t�3lo?JJd[�]��;���Cv���4���߯�3��p8����C���+�}o�$�����o����ek#A������=��ئ<.����q�1�o���sܔ�8H��R/��4^����y�^�S���?�q<��_mJ1���\���������p�VE�%䋊]�ďT��k�nJ��P�E����u��]����� ֙E��8��_�å47u}�-��Τ��э���m��&����������N1� ��X���x��C�=8�,t�4@o�#�}�9P�i����~�_����4��j�G�	;c-rfma���2 [���{z&��Ds�yA+��1w�Fژ�rg��q�]�ݒ�01Th�rC�gA��V����o�i�Ӱ8�z\�8�%�?�����z��3e��;�fw=���(����3��<���a:�9�E_7U���^~�h��@�p���(�{d{K��J's�l�]���8��Zq�7>Z+�&���%�S��4udŧ���,05��V0�����1擋�Y +Z]m	gZ�	{�N#,��j�ƚfp+��x ]�g�BӒ�u����`���,���fa���vE�A�ϴ}U�pϮcR:UN%��k��h�ɧqБ��#�v5MV4��A���.&��`*Z}��g���oh���l/��*Vii�i��%��s*^Õ״���E�z������T����R�ғ���E�!��}�:���e&��Zx������3\�,�r+�c$ v�R$P������Tx��t�:P��Kw��P[��i�M�)��!�;����q�#b����HN�ɑ&���m��p6�Ӥ`=bD3���;Ѕ�e�-�>+Ա������p%���K������跳���v1.p��}j���%��������<h�.�='�RDhe�\�^���̖���5m��:�2���hɶL�!�1p7�	�L��D�P`lds�!��h�!���֪������p!��P���W�$�Zu1�2\oc�Ib�!ݩ�[�d4/y)�9oR�x�jR��kel-��)M��z5]V:ܚ��A2+�)�	�;Ub��ґ	m�g�!L���-�>A?�q�9��^�y�>A:ii%c�.���Ng���%�5/�πL`?��Wu.�C9>!�l�Wj1k�78�F#O(/��t��f�h�����|�r�g�<+���pv%]	+X�K8�UqzQ���l���RT�l��s!�:7��Mo�I���Y�g��|Gt%fi��5�c��8i����S�>+��;�[�"�2h�-�82H3�%%�/Z��z�
��[�0�ҷ麾O����KNj�/�O�vFV���;���1廌oCu}��v���ٰj�e�"����/$DFo�Q������?�3��      #   �  x��X�r�:]+_��TT H𡪻�M��*�J��(�fÇD$��(��I��܉�rSgfaK! }����V!N�*������]h�6
wƥؔ�b4�h�ZR�<�ۘ0�l8�f��JV��s*�qÝy˝I6s2xr0��Β�b��V�\O�a0�g�w��:_k��5~���uV��)�Ծ��<݊�
��dլ�sȥ����,r���������n~��>?ɀqC��5�����E��}�?#�b�vw�g�sgU����3w�3%4��r')���Y0�g���kR��ۡ?a����~��H3FT�6�L�D>��n/uV�q}�\���<�:�$u1���3G�R%�,�(�zw�kqzw=�U�s�1'�;H��0&���6Y֥�k���S qJ?%\ň����A����5�'�P%�q�q"t��w���� $��|����#�;/�BT����3}Y���E����TF��A�	�Ǿο�ӝ{��|MVz���O�`���X��as�[C�¦�;�ss{�oӪ���1-�MM-��5�g�x �!��<��hMӂ��L�^��G�ڬ
�W��#t��v�ߎ����^�ޝ'����4`̽%�}��~�k�>��[�Bn�R�������}������G�wkڈ�MC�06��F�V��qղMcXQx6v���@��Z������҉5�
���v��ʫ�;|���T�-��Iv�R)�k�x��y_�c�I�t��c���Y�E�QТ;o�j�,ߨ�ǉ����[Ƅ��>�l�F=�o�R�Y��_o���E&��٣[
K��4���a~Q_t�ܹ?��W���&�:-Y�=�o��;��;��70��5�ш�CrL��9�D�pw�7����j���I�Zq���A�Ϥ����]�1e>pV	$���;nf>���QAX#�
��1���{�qW�7b�K�+�jr�ĺB��&����/=�ۼ��tW����v��W����G�mBЋ��!+ӓ��N��F�n̻V����:�(����l���Q��m	�y.�h"�M�-`߲rwq�EU�g(���E����h�؅�_��|�֏_�����&CbPj�������֮�����:V8��԰�pSnN��d������xw�ƘU��䀯>k�|]���I	{�?��z�e\���+��6Fp����@:\ϊđv�l�E�b��^�C}���p:�Ou3`jQ�'�����s��z}b�e�ș+��=ʪq-�WZ�n�dj��)��x/�����}ڧ�4G�F��͋26z@ut��za�sH:�F�����8�ֲ���l��BVK8W�`Z��~'���x��1w���{:h[6��KU��������H�fgR�^�d���0�x�ѐ�&��X�M|�o�溿^�cY_��pVE���.��>�� �W�,����|�?Bn_��^x6��ײ�do�i�0�{���E%��t��
��͂b��;s��aV�zh!J� ��"�]�]n>=�]���㏰~�\���a� kCͶ1!�����0osJ*���qj&exn�w�بPH����;o}~�P��J͜Gx5x�)�q�,��������b��.���2�L`H�f��=��L7ˋ�i/���ԪQ���9���7�z0�У���y�0x���0w�k�a��	4�W=�*չ�������ߎ��k�6"��q���~���_����      )   *   x�3�L�L�+N�K���/J�t�tTHI,ILJ,N����� �	�      +   '  x�u��N�0����W-����I݃Y��1�T��@Y�1��]u�������?�^mL���$K8��<&,��"&y�1BSL(&<���i��0%�4M�s�c�0��<+H�$�3|C�JuXk�*tc!*	�h��H���
�&l�&���~܉��^�NKӺ*Y9��U�k����f��iʔ.�4����IGC��ė�z�Xcm7Qԩq?�ș�����Ҏ=��UM�U:ЗF[�v�������2�.���'^YƯ�Ǘ���6�cM���yM��>��{��ϡ��წ      -   w   x�3�L��O�I�t�P&���憆�F榖�����ƹ������yf)&EFƦ���%z��zJ�S����JR�J���s9M3Js�\�#��,=�"Ms���9�b���� �%�      /      x�3�4�4����� �Y      1   ~   x�3�L4�ԋt�2t	KI/,�,�.1-��(q���ȷ�H��O+�*����u�(����2
�Ju.w,�243�7p�������4204�50�50U04�26�22�35�45�60�4�4����� z3 V      �      x��[s�8�5|�~�B��7]mig�"�����qR��gz��R16ckG�<:t���� R)<�g)�TM3e��Z��g=� ��>���QW�W�/��~�������.��>�����z1_</6�ɭ�8]�W���ɧ�r�ytg�{ǟ~������߯�o� ���"�bgP�$Bpv��������+��_��b����;�����1��v�b��� ��O��?\�ox����_���W��۹p��?߼�����Q�.�9�a����2|T �G�������_���y3[�g�z�7�����1��������ovh��|1y��n�_]�����}1 \@=�K��h��z��7�w��P�͐`#@�q!�9��8�6?�X���ʡH�/�ǆB�Bu�x������r������{���=��7�[N���rz�͛��ko�vW�;�O'공umɂ茓B�S0�?#�<#�A��I�$��$��Ν���>���
=�"9�����r�S�i������M⓽��C�F4���3/��y��̿<���q(ܥԕ���BD�N~w���ɥ��<O䓉��^��-��Z�)r��@lp��?���ٛ�
f2:B��!�q9H歊ħx茠@g�ґ g���|Zga�OHq(�O�r =��;H �6ר{b#Ӷ澉���/�:��0@ ;Gs^zHv��p��U8�חo/���������'�������ܛ�,7��;s�'��-�'�v?��V6O 	�u�͓ϷW�"�d��6]=Mnܵ4�=x�I{�{o�n�>{�=�~�I�Sx�)�^^�cy��79��	x��Y��h�%'�uȈ���{RX��G0~u���T�|8��W3w����x�I�FˣM��G[�O���N8��J�C?���or`��O���^�[@��rW�����sy���4to�ˁ�>D��D��p~{}u�g����_��_ȅ��_x���%9L��j������������t�EF���d�b�Í�nZ�)��M�p_��\��ڝ�ʕE�&;n 9Z��,�a��09��3��8��q����83����֒����㏿�G���C�kXT�o�|r�|s�����m��{�^�cu�3�g%����A�=v�϶��{�]J�!����?���o_lw���L��S}�����j���Qb���'��Tt?�:�1	���A�x�X{/�6�H������h�/f�򛼝���w���#�<��
�C;V}�3Aφ�gO���$-u
�g�o�Fs�|����>���_6���B���L@�f���I��a*��=�
�F�pF�?%��%�"*�
�4Y�u��a�W�wl�>l�ޤ��g�	��Ĕ�ag�&�)Ë���r�������ߙ����w"������ؠ�P�QW����]��{�<wډjI����ˣ�l&/�-���;]y�nܾ������;Ѿ/�}],�K�q18���*��؉�o�7	ދ��|�-�[�Z����\N�YgI{B9��DI��k:_�vG��ьV���%��)����ir��-��s�e,*&&[���������{�B�:[H����C�F������!��9���L*/u���j=��4���ۙ-2������Z�����q'7�_���t�{�u�3���e�FI��������|1����S���ҕC?	^������Z-�Z}�.GoGb⏸��w�yI�!��l����/�0�����UU��S#33�og�!��Q�~�������.�_��z�����������p���K@c^�˷���z�m֫�'o��}�Ǆ� ȥ�H0޽�N3<�H0���\]i���2p��H��cb�w�G�i$E����<�ꁤ m]������__�5��gi��
hb@wO9m,���l����@��5��p�o��v���/M���tRGdy#�t�Վ�Hm#Y�:_@� Vf�z���!��B�����_r�Zq!2��עh��ډ��F0�� ��tnA��*�$!��po|?��_��ǷsCQ�!�K������Pj|?4;��[�j�_��7�:��wz����}dQ�!�����7R��F�%A�H)eu��� �2��/��[y͙0�!���� 3gk\�W�={y��[o�M.�s�YOܸ����I�P�F��˱��b�Q8��-�o�qb�8_,T,�f�Y;O>�xK�D��K��_���&��8��{�Ո�8Fx�����@_�Ǟ_�*,�����5��l���V�;o�,��4������%����2b����p����~�������;�$���H�_��n>���bz5��m�xo�6��z��yw���*����N~@�g�j�\�x��j����"g�&��t�ݛ٢%fK���*�-����+=E�9N��|5]O�.�ý�ZO�^�<%����d�&p�B�N�Q�W^L�ɜ�>'r�La��zN�/�6(�j��:9��YtS�F�D^~'��$!��,s�	'�8z�~q�k�'����-m���#�̴UH���'�@*�87P��s������.�\�m� ��Лـ���m7�n�Q�q̓�~�sjR�Lg.P�Pқ	*e�m�������Z���'�<�>]?m��v���6� X�3ڛ	*c�!�Ͻ�yb��|/Us�*���t�o���[?�����|;N!����݇�<�yg��>�����@}�6(ܛ�_�oo2��������~�t��&��[��X~k�p��-e.Pm.��\��W���b���J�n�d �bz3I�L�M�ۤ`�ͳ��,���\Ѧ�'������hd=�^]��Սy�n��h�&��ͽ��[nss��g��fnJy�6%XdJ�^�(mj�����z�������٬������`|���<	St��.ϵ�
��ݦ��0ba���
g���N��V%��Ӡ����i���an,ʗo2s��-{����r�+e�1m�1�ǖAu[	@�Nx��Ѻ�;�w�Y2��d�Y6��V�����2�6�Xdԍ�qu{�N���zP�ߌc��8��8�qx��|ps}#�yB������DH�λ
z�2U��6ĵ=����ͅ� E�����O���Ʌ;��o�5�YI).��Л�J���L�tik�Ǭ���w��ۨғ��g�F��p��t�"�cDO��� d6Ņ�Ö̰�fE�
�A{3g������h��7i��x}�F]��U�Y�)zJĎ.�r���]�h����;�x��6}6p�&�_E�����ffǮ��&��jQ�H�|Po��#r)k.��A��P#]j��������C�:�q�>���Wc�X���K��qX�ο�1��������l��$x��r%��?8^��Q�CO��g�i:w�!tp�X,�+ko&v*?�w'l���q�ZQ��m��;��Ϩ8Å���� ���}���X��X>Zs������F�������8�����Z��5��ѯi�T�׎s�g�?�������}�P1�1{��
Ճ{23<Å�53X�L̇3�Bz"-V���s���Z��aJh�fr��@�2�����;S��[>o��}��2V�Pof 3�'�[�9�3W~�S飑��\�p����q�~9�e�!BaG]���h47�X,g��C��Hw����>����VBK)�W/0���{���TmT���<����"��>�~�5�T�_��� {����Y��f"t�aZ8�R�iM��X���^]ܽ�x��W~���r�M>x�{w�X��w�ߞ��������\��i�.�N���t�J=a�r�U8�
xu���{U~�{�~��y�;��sW*;^}�8��p�|�\?�79� =�V̵������SN�7riP�:�d���������G�?�)R:���h�U�G�ߌo�z�eJ��jǴ�G^uk-�hKV�R�Ε�Z��n�4%-���W�#x���D]�_�A0�r#����\�����r���{�m!����v�T����V�ڮ�C����>������g9:r����    F����s�y5=�\��bwV�;7�j��׸����ؔ~���)�D��������U�	��haP��,^�#���r7)�p72'���/�D��i�����Q�iتBr�]���X�J~�^!��n���<���+�I�5��n�Q֤��>.��Mz b&}��*����bml<�:�}�6tJ�V�6�����iթ�DC��,�{mPڠh�\h�8�A]Ц��mh��{h��Іm@��Bơ�6��fFh#��C��6j�,�(mT���67B[h�ڸ4�q����qh㺠-4����B���&��Mڀ�ȅ6�C���0aֿ2A�Zh�ڴ4�iz��m�6��PC��-�{m^ڼh�\h�8�y]�֒7J6�J6��vi��!��\��%X�dõdÍ���MJK6�Ɇ�J6(.٠�$�%n�l��l��ҒjC�Ṓ�K6�&�F��!I��Q�k�k�<�`�x�X0`�X@���b5;�L�(c����)��6��N9�7��L���N������:��+?�~�(�>i�5p�GЫ�,���2C�*�b��T��mo�v�o��>��TEə]�wVn5JK�^���f��`c�u�VP����gk\Hh9	3����ٗ�J2����'i����|���O�N����_ܕ�޼,���7W�����Jr�#J�Y�'�wL�OOT��mg~n~.�2%�?����	ڃ _��@]�����</x��v�?�.ȇ \��U�|?�L��o�0 �f�����8�t��j倄%纊���g�
jmg��;4tͲ��HA���d�#ʊA��x��,����.k��\;���� (S3�Q9�K4�Fm3�4<j@��@9��s u�����`�~]�T��V���Q�l*@�G���y!׭o� p��� :x$��C��ș;�:i�5�І�>�'�k����D� _
����;a�ue?u,�{������_>�Y��ץ�`?�����'������5���Т�/�?i�G� ��6|tAZя,�{�~�F{�ύzQCP3��F?6�[���$+f�П���f��j�1{|,�����ķ@n����O5����c����?��fD�!��L����,����?��J]jjF���p#��EOЏN�ԛ�W���f���7�Y�Bo_П��t��Uz�ԋ~��^`�z��z{��>��\�WA���b/H{������>��j/������j/�roo��_P@�5|��{�Y�V�����>��z�S��h�0�}�u�����џ��au�_�}����ߧ'১���nZ��j�t��^)�6ѫ�D��>�f��3�0� �T0;�,�e���Æ��3���A�`�Y.t΅����R2��}C�`vY.tͅO�%drA'@l�91�r�k.�x� l(M �:M s�˅~rᴣ'`CI�\�I���H������R2��S��v�9��r�s.��ٹ���L.har#̺��B�\8���PzA&������b?�p����d�,. -;#�윒l`��9N���J=�$��Q��l��~���PC��d��32+�)����ᴏϨ���L2h���甴K���p�I
��$�L2h_2��R�,:&É�,�fR2��]I��JJIY�T�
'����I`Ƞ�����U������B����~�<w��[M����/��,6z39r�7`"j���{o75����&te)uN������1s�r��)(�/՛)�%���M��6���������|v���o�W���v�=d+Iv���^,�_r�g�jz?��O�[�j'��.&/��7f�l^�a>�;?9������i�" g�Έd�LM�V�� ?���*�Mbh�7��� ��:}H>�~�r��1'a$��J0������������e�Ic�{���wWm2�:�d���M��[�҂�F���������oP�T��f��Z���1�>7��6z�A�2@�,���@���=נ�����z~��u��A�O��pZ֠��zq��u���@Oð<u�z�X����>��{q�=иY��G�{p���S����=��=��?"��c�}n4�z��p�4�Q�����s��c4�{�q��p�-���p�[�E=Fc��-�h�Uh�	�� ��\�4��R���,�X���p*-�UiA�2-�2-͒i��i�	�� ��\�4��R���,�X���pZ-��jA�b-�b-�k�Uk�	�� ��\�4��2�ײ,�Z���p�A�e�z-lP�eZ�eYz-�z�1���Z�����Z��Z���B���A�e�z-lP�eZ�eYz-�z�1���Z�����Z��Z���B���A�e�z-lP�eZ�eYz-�z�1���Z�����Z��Z���B���A�e�z-lP�eZ�eYz-�z�1���Z�����Z��Z���B���A�e�z-lP�eZ�eYz-�z�1���Z�����Z��Z���"����1�<W�E���[?��������%�?G���������b�x^lV���|����ͣ��{[9p0��r@Q+ �j}_H>���_0�*���
�7��V�T0��YK�*����ĉ�8ɂ8��+�a�n.}�81B�V�8��Y��}�8�V��o�F��
��C�����b.!�t㭼������W���.������F,���󵷜˩[�ݙ�6����̈� 6!����#ӳ!���@D#���q�|������;T�8Yō��#��p(�����z��?����c��]j?��1���+z<��gSr0f�!wp�)1;�Xm���ԃ�Wg7�3mp����:��8i�[� "ԄB��m�LL@~G�n���CĄO��������-�����>�	"o�wr{��v��/���i�%��/Wj�B'����L넽&p�z��N��A�	uMA6�Ȇfd�����=�!�S�=�a{X?��Ƀ��D޽�y}sf;B��ٳ�	��d��
^�0�Ͽ�5Lb�b1߬�/r�w�`A����r	���f)�
:��x$��C��sS#d�f-Fl��4a��mQr�������st*I
@��$x?,�u�jo�b�woY����ܩ�Ot=7lXhKA�L�kC����+��l�%Am$A��_�w�K%���F�D/8K�(���Qg�=J�(�k�����ۛ�����C�6�e�(9r�Y���c�͍��k���6U ��SEK�z��JYˊ�3/�����f|;����"}��n�����E^��
�Sm�����,��%�P�	bu��$Ξ�;=e�s���BX�X@x���_�陝�,������(��"����יFzf;8��~#���*
a�Ho,SE�u�����"��H�n�BX.��M�]h�g6~�H�7��������ƲQ �n�����Y���G��Ma,�͵x�h�g�x�`�9��_&Pa,��	�j�g�u�`�9��_Pa,��i�g7s�`�9��_Pa,�U�k�gwp�`�9��_Pa,썕�^K� �m�{��~�)�M���&��VMAv�6����tS���6נM�y-���m�=�1H� _:m�+���Z;�]�,�{�cPOS�c`oP>Z>٭�,�{�cPA���\�5�VPav�5�~��z�)�傽��k��kf7]�`�9؏AA��
js����
*��f��s���
���ګ�?�T��^͂��`?�+���T�^+�0���{��~
*�WP�k�&��VPav#5����T���6�=M�y�����i�=�1(�0_Am�e���ZA��-�,�{�cPPa���\�4�終
���Y���Ǡ��|���h��kf7G�`�9؏AA��
js�@ZAE��,���#肦0��۠�mv��-��
�D"^��=w�֛�#��n��^����8��z��7 ��q�B$̅�/�    r�3����������d����OEe���L��2M3�Q,	ĠcP&;H��ŌYmzS��ً`�|�~��gcq�n3��W�-����lb٢,��0n�����}!�%������?�ɰ��Fwi��/M��+J�wی���Z�bhm�M���`%�Y]��*��_i-^��k��kxein�ŵ8^u(`�����5k��XE������V��d�������B�����y��"���_I^(���}ǣF�;}DS\_�NX5��5�(.�èp��ko��ez?�竳�w�Io���ֿ2�ëA�f�1�О�Ǹ��I�R��ӯS��tư��d�8P>d��~�I���9y�>S��R�F2�j�Y��u�ϑ�:- r�R7�u$#���z3p���di�%�]���t�#�y�6�-���8�;-�q�^����R�&���j���#v!�n`k=��驟�[Kdl�ܥ鑥N����+0.�dބ�B�j�|�xl���0� �����.��d!ؿA8r�L���j���Z����oŭ���v�E���}x���,ẁO��Y���3�Ed�ba%Э�\���p�Y��ཏK�E��bq	% �`�n��Y��<��p���p���CQ�E��ȿ�Q�E9ո�|	�j\>��7�qlE+�s�sd^��<�v	�����*^D6.SUb���1��Nq�Z�� �����AX%��dNr<�x�L�@�Qw ��Ed�4w �
q-'sZ�dQ�S�7yZ��Et��Re�k}��C�B��o����Tk�2ĵ��yk�¼�0o�$���T��"̡.Kce���_�ƿ^����O*�g���� �F=}���{5ڷ�C~���ܛ��	[�j���߼�x��&��k��ͧ��5�`�| \�1z�y6)8�q�m�����03CD��_(bH0�P��$��~�	���]���ݿ��5��A.�V��s����<,&��;p��WN�̛M�4��U��,�8�M����;$�����||����b@D�o�L�~����/%��^��7���J���ei"0$dh���_��|U�K!,҄�|���%Q��/����C���-�K�O��q���$�D�	���+��h������-�;T�[�\�R��^��� }��Ӊl���ۀ�kߦy㯹f�н���A���ܙ+�;^N���o��Zq̖
�B��W"_��U�#��3xb���٬�C��?[dt�0�+�3�ef{�����`rYcg�f��΁��CE�{G.IA��~(j��1ry! ��:�h|�r�
�D�#7��fP��NR'12��AҠ��71�~�"�I���Kc;G�H�f��7��B^�~������A��o�6r[�l5�="F�j&����C΃��G?���p�/'Ƕ��>�)}�!��j�U4͑�7 ��?$�J�s"z7�����B$v"	[����s�Ӊ�$��]I�Iӑ�9�l� ���0��ġ���I��L�� ��q���=o�q�b�x�����a�jδ��y��"��߼�Ș7/�1x��U�f^c}<fL�_\���;�>x}5����E��.����o��\,�_r�g�Jp�i��F��~��(��>b��
�Nt�UX�N�g3���f�[.�7�aހo��K�}��K����ﮘiF�����Ki�*�]n��t��v�1b`���cl����?���J��'��m[���8�&|�,$����/��6EvL�����*��B�pG������Ob�<JrM�����	p ��y(o���H�S�����#0�ƆLo��g��<I������Ϗ����ݑ+�M�wH�w����w�-O�W��]����):��E�����u,9��dT����#�E+
X��w�c�=�h"��k�[�Ǩ�ע���4��� ��'����qq���㴣~�c� ��w�P���qqL���\�0��X�]	3�XX�ǥ���qZc�c� ���17�C����gi��8-Pщb����8&���t�P8N+��ԏc�R�$��0�����Y���-7��2h�g�⻼?N� �Ծ;f���	�����G8���B���NS�O��cvօߩ:�u�D�yO������6@�V�����Su�Crx����� /������}2����T�ZgI!<�V��#�K{ j���0�N�A�Ur�Tɳ@�-�����A�� y���� �Su�k	�%%�,�[�aA^�wH �U�w���w�r�mrS��6��'w����k��z��5b(�S�r�����k�' %�k����t�ֽ@f�\<=m�=��-}e#R��\?�{��9V���fV\���ܒ�Ϥ�F��c�zh,b?�D%1��]Yz��B������{�H@sT��"���/�(}&
8�}�@%��V"~@s��QĂ�����FN�ʳ�-E��WҬ��H�ܰ�� 4G�,��.�Gwi��c��S6�rc��Yt$�f�|r�K��RE�fѩ�^���[9�#'CUWfzx�^=y3˒��D��'����H[,�% �%��k��3��\���xm����"������e�<�H���Io�"�U�Q_��i�/��@s�A�6)»���{��,r�uN�,E4x��`9ٺ�0�i;,��A��Vk���(̀޴�����#�-%hb�._l�]��4��N�[�r#(���O4[R"(�/O˖�����$;�CլH	��3�z�>�m��Đ�(vj���P�1�&FJ���r1�1w=f�~���'E~h�_-�)Np͉�h���tiw�~s��#?b �c��lI	�������|zZ<X���6;�91��I$�1� &R�$��T���>��U-P$\�%U�p	�.�'�ٞ�{Mg�O�.���h�.��"w�n���].v��}�8_L����0��4�,�'N>O��:Or=^C��,٣9��t_�u_����r�/hN�%���1ɿ����#�����OR�[>���r�l�_FK���L��sE�{���͂�-/`���_�~��ڇ�}��c��]��임��_�_����������������r�T_�W��!pbk��σ� �f�h��]���ߎ*L����4�Ʌ;w��O�/r��@����X�(`�B�Q�L��v4��0
�x?���V9����?#*mߏ��LN�jr�'�-�1i�|�L�1��b9J���d_161��<� �I�OT��>�7���B��#2�M ��a1ꠊ�P��ic�Q������7w�v��ts���_���ZRo���$x�};Χ��j���c�S�!�F�I+!�9��H*?�K�j�tF9>� s+�p�Z�I΍��8�1�׿1�o-<�N�>�e|G@@�����ѨZ���|Z�6hs�o�A�������3���T;T��Ls� ���/�o�'@��HpPt�y��?���H�97�w�d���|Pp6$�V�}��F��,545��<5�)�}�Aљ���j�.�ȑ�G�#|�Iz�F�L�S���l�8�o4q���	h�&�)@Ƈ�0���H�|��܆d�Wsc���;�OyF��FA�KN0#Li. �P�A�`�64f#L��cN��NK���-���fq�@���1�M�>���m��
xo��c�ج�B�O��8�3�bF<�y�8�s��q|}~���L��|�(G}:w��O�[4�?-V�{	to���_�j�?��w�}l�]sA�m�4Q�C�/v���|�y���J>Y$[�tW���<�:��\�C��㜖n��B3(��8�ɢUq��Z�Ż�,,'��%Yp��ll��K�X��1�]��]�z����j�i��X��(EUS�.�u���8���y�r�-��+��xA˚:w!�����X���NY��кKb�Ν�kjޅ����<����8'���h8O�΋��3�h]8�z;�8g��y���    ������<^��Մs�ϡ$:�~8������;����������ƽ��
�#u�h�NP�~���Sc���'y�@�>���r ,����,�Ѣ��P����\�A	�ZˁEy�P�i�-���5��r��h�4~{}>^<Mg^��I#>xq�}�m���QN��̵����r�k�S��rnQ��gV�;Z�C#�yu�k��F�ŭCTW�ۻN�S�^�x�X����vz�*�	�CZ�r�����2��9~��A�&= 4i�<�qd�WtU�	ͭq�g��y�[��}��  s�L��2}��੆w���ez�b���<^T�!�w�E���]�:>��|�C��~`�"Ƒ�:Ƶ!�c���jhoG*���m׬{L�D:�5��c��(����Z��<�l<x��,=9M��O���7�h��lnD6� i��s�ia��Q|��>.�`���Z�tϼVa$ΎuMֵOd\OU!W�r�?u'Q,�¯�1�������x��v+QֹO���4�)7�Qń�*���qL��x�X{/�6jqG�{Py �8P�׋x�w��F��$x=����]~S�=��CGX���TpT25b?�r�r&��P���u_J��Y4��P"]�D��pz� �oq�v~r]��V�
d@N�@�h�;����B�A
���7B���0~��ܖzD�.��!C"�ϖ�T�G��$NS��4Y1:�7KK���(rɇF4���A&8aD&3�O�d���!�\�CT&����޸ʪ�m�������%dyuZ!��j�v���;Ե���l1�K8��mҼ����_�a�azq�޶?Hzo3��/1Lq��1�m�!c]!Ka���fw�>�^@�V��B8�70"q9��S�(Ä�ar\4���|��m���G���Ѱ���J'��l0vg��e�l��ZWTC#�Sid2s�{�2'�2r���p���$Ѩ��xbT4�ol-I߻�����*sh΁��H�o�>n���G|��]��%!�]I�9Te"r� �Pk�q��q�1.�Ɩq��]�9�������9�9q���`�tC�,���W��8猎�e43n\4�o��a�= �n���2�f^,�����P���<�ލ�1%J$�!��wK.0ӯS�a+�Qg+�yFv�ІT�u�!v6D|D`�:�I��;���0L��hQx��Y�'��Xq�Th��^+a4�O�l����Qm#��w���k9�)�����b���c�a�|�n>�(&���ԡ�"*�G�ybf�ɍ�|��6���56r(�X���%Q$63�-���P>>�G�CFM7��aD#��9��a� M+Ô�hc�#/������x����@?�/�²�����i'!���s���䒤@2-x-�H����L�w&�;��%����kv���i&Ms�U�I{Ū��ș┌��&�����g�7�<s���|����6y�>1X�<����j�-}�O4l�s�0��B�N>��#�`p���t���໻|�I0�	
�l@�+���6/r�"
��%�n(�7����$ '��#D���
�����o⏳��y�h��^_n��>��b�B��w5�o��d칓[�q*��n/�NB�X�i��%�j�Ά�8��`�|6��F��d,H�x�^���SH��3�Ǽ�$*l{�]���q@���T9�����(ȵ��#��^X���k�Ff��ù�����6�o��:X�mܬ6%�*b���Dlwn�F�v�N��*|�"F�}�|�ߜ|����[�#���of�)9T��$���mP��|����R�rq�ݎ?�-���<S���X����q�<9]��·Rm+숝�Vjvˎ�K��X	R�{|�6l7��/�y'b����;G�#��<������n�
vJS������S��TO���;]y~�]���p 뾬�3�N�Di�j��Yn��IK���P�TWZ��z7�M�����O�[L��߈���*�o��0_����N��b�P1���M�ӵ7��]���2�6С�pq�虴i3�~�'�t����a~;��0W��$P�سv�R����O7�ܿ�ϛ��2|F�˵E�EE������6��Ѹc�@HB��f�?%�>~��:��q�s*IbR�7�ÝFo��$q�;{yr�$�m���~!����I��PkJ�4J��G�=YvZv�����%�`�kvr��([��=L�KO���}�_����?$"VAp�����`��d���b;�S�^���q ��^���;T�ϐͤP�j����y���v$�H�I��
P? ���5 #�B�@��@���ȧ���x���d��|f8",x�!X�?���`$F�g(Lk*�r2�H�_R1
@�L:�UH��_.U=|4�0�v7������[n�H#���59.��zu��&������қz��Vso�w��#p�Ј�a�GP=�����j4FX�F:bF� н�M���;���Z�.�ک�2Z]�/���A.�f�k/��A-M���~Y�w�1T��6�����K�z�z9Na�g�#�Gu{�n1�� �5j��� Xσ�2 X7p�-�iB1�5rv��_�����63���c�'��oU����34����醙���aݗ'�Jp١��ʋ��V�x��nõ4��Ɉ�OCD
�>0B?�~��}e����E��M���_]�:�f�aL�[k3�z��u����9�_��jA��G(���G�C��c.�id�}���9l��G�t��%6�l����h6�6ˆc`�	6v��4������e�_,�K�q18�),(���S���X�9��I��$x�M�������mț����ˈe���
cZ,w��<�{9�t3��#w/�ed��-�O�jlJ�8�f`Y�� Q��b�[,��!�ؓ(q�L�2Ѳ+�d�O7�B���~PW>�	���P7�Jt�l�ɍ���z3�{�~���E�y6�G�[�8��hrc�ه��Y7D˭�@�X���xb$F���;IJ@^k��@�Z������Ĩ���M�n�A
�����{R���ى�#�H�}v*Uo&�n:��M�|1n�Z$#�c���>���ߖ�܂�,~[����շx��@L����w�!9JkZU�?� ������ѕ�ـ`�)#3��f�pnVV�wg����xS ��;)8ׁ:�*�8'�}�y��"����Z��!�����Z��癆Rv��6p��p��yS�!���J��Y���Y��L��6pNrq.b8g�\���M����� �+��Ἴ}���B���P�j(+�rfQ�;����[@9;�8o�:Ԇ�"(GȢ�o(/o����"8fӼ!�k�~�cOʅEy�P^�2o�im̆y3(g:<�9&�g��a)�����~yk��S)�-Z�c�7t*e:R����-�{�~\���\���yC�ך)3j����F�3�h��Jj�+B�VR�QI�*��X���(�9FNW�6🫰"'^��i� ZbeF�5� ���(_������0��׬�� Z{eF�5� �����	 � @�&K��@���(�f Y�� �=� �A�\�v��~��	��Zf�k��,����^�*�|��X�U\fTqӱ�-����Ҿ�6�����>¾�v�Q�M�>���7����r��wt�{�P|U��c��k�w{��}�ߥ�i�Z���A��~����x6�+��Ϧ�~�ګ�O-�������6��+��:¾�z�Zo�i��k��9���Gxr��ᑟ���R5�kp��5x���W�㵷��K��iz?x�����o�w��J�����֊%�w(�������T�m��|���$4�CgPc�,�ok�d^�����b�~9r������T��g�����i������3�۶���D���nn�8����v��ȩ3�~��׋�*��j_����^�������ꍉ��$xÀn·�hD1�gD�(�ԡ�"*QF���<�r]��    `ZO�L�F�0��<�#����ҍi!`����O�x�	f��x8r����� ~&��)�7�Z���y����P<K�B(�r�ێr�0&F��sU�t�M�����	��
�(q��ȉ�~��	�#�HG~w�t����yO��r�ś�w"�m��T�ݷ�N���.��y�,9��4�-��W�ʉ��ٚ��'��/'}'��d�\"��ƹ4�874�>HLM��@=�5��Y�x��[�v��Բp&{C��W����x��,����7i�PGP@9�f���.��}���w1��g�A��5��Î�;�/��]z�j۬����X������apL�eK�l!�L�,��#�W�!�u��E��2DD�
���aѬ ���g7�>Ё�>�bVw�����t�B��.�:`�}��M,�^��ip�Y.^��Ι�|��k�3�@�P�z��BW���;4|���$j�%��q��܀=�1o(s���Э��I9H�ȵ�a���[�{� ���Y�s�����nu��ǆ5"�,O��N��'j
z {��O����+Cu�ک����2
�1ԕn��}[��Pj|M�O�*�p��jx'�?�ޘ�7&�Q[�4��4�� �=2*?3T��P�q��1V����?"�cf�ߡaf��jOȩ����
����"AM�X����s�K��~q1��_�75K�7��|�ج&�ޣ��Vjn?���<�i���o����?�pĦ����Vkw��.&/�d�̛M��3Dr�m.��a0�%��^�]��ی�,���X{D�+����>j߬�����n�Oyo,��X�9�:�$��$�O��� ��?���K�M�J��e���{r � �xpKe����37��h��V��x4k�)����W��7������з�C�ei5�w寞\�sw9uW��i˨�&��ᅛ����ܟ_{P1RĴ�[�T���ޓ��{���X�}��z��d�M����t�4��z:���[z�{o�n�>{��t��7��Q�L;�v�#���j�8��ck�����5=�p���y��i+��m͑��������[O�7Z����/?��\���v��ڮu*$L�5���a׮��onj��z��ą#�k����|<�f��]�Og-�DI	�m�|���'����3�[e��1�_��:����6�g�HIk�G�2�5�����A.H�a�eA�O�9\�:(|�T��hD�`PA"w�[�_�����Н��j_��;�bw������m��ݸy��k`^i��~��ި����H�;Mb�t���x�'�)dk} ���[w"�D,b�7��\y�&t}��F9�3W�:����-[�T`�m��C��$��ݱF�:�${�D%���4-͑��{���|=x�u�y����Q^����]�C�}T��U��a~�4ۿ�;M1䙀;�Q"u�7�8-)M�����D����F��$������X��qt2���<;����{7�.�+i��y˥��g�'���:�(ވ�yC:����;4]����j��^u_�`��U��:HXO]ePYj5@�lT{��� ��� I��\0�9�����}�f���%G��ѷ}Ä��jy��:���,�C���{V�A������y"wsRA	�k�,Ay���{���;�Ǆ�ܢxM�3�+J���/�7?�9���"��zm����ir~�Y���c����-���<���L*KF$Y�QE�I�GQ�}T�JI��ք���f|;����)��ܣ�����+�v�>�6���9���eW}�J-o���ϖĳ��ko��]NA勫��l�o���܍���cE �k��k�����#p6�B��	&/�H �
���
F��Hݧ5����3�1ŜD"�K8l8���l����d��]OfC��E�U@����U�<�d�蛫�<mk�X�� �g&��T�L��)3�v����i.3d<���}�W���-�Q�1���.�a�K
1�釒È���XbtG��Kr{L���`K�J���O�P�Ǣx��SG���O�S��5a�b
+��
Oc�?�F��;�$���H�_s�9����C{GO���c�h3�����������K}&Z��Ճ����]��z��'���l�Z���O ��i��D ��1?��cL���k�nm�-�.r��/����9Ɣ�ll����Z� m�7h�
U]n4�����	�4J�-���lߺo��[>����=~�;XtEwn����>o*A7���ݥ�L�o��ui�����f:Ԙ9Y^郌o��{�d�v���o���f:>�eV�>�跌�7�NǞb�����9���,ɩ�9f9�wN���r�Xq�sJ�#��x�@+*m�Y�����Yx��[x��T��Xf�AiK�2�CY�t,�܀��-����m;�*�ȯח�@R�W�ŝ>�\Ʌ[�~��73w9������/��t�?��1������Q�eД�
 ��4phV�?�y@�@u���QxJ�5������ �))9�^�˰�p���
��c�L����:>7�tHFl�����&��@K�ͅKo�^�?y��/��e���������[�]�
��H�3�F��9HCG��#)6�#,#1#c�h��6�<��ԭC�f�`Ջ^�ȊR�h� E�lI�{R��I:7$�$]�:��H�8"[R��'tx�>R�:~��h�8XXZ���s�wR�\�p� Z K���EV��LV��&$�7A1R�W +B
�s�H�|;	ZQt��?� ���4O��h4���|�/�����	�\�:��wȵ���AHO��-һ@�ɜ�y
s&ҵ���AHO�-һ@��vyJq&ֵ���AXO�v-�;��ɜ`y�Y�%`�XWW��ܿT��CM�*��6��Qa9�ɿ<WuL�:��#�������0և���iC���QCP����ڮ�B��__R*�~~q7o�s��G��o�x?߬�4�	؇;��ѝ����`���-���Ζ�ű?����φ��g�@#Ʊ_�O��bL��A�P���9�2�ߡ"=����� ���?�MѰ9��s����U�u�+0�|�Ж�#���k$GKo#����*����c{�^4���z2>���;�f��0hC]�\��{�$��o�)��n"���є�_�j�j�n�	�Z(;ĕ|plإ��`����!�꜆�;4�<�^��?V���isB,䃏���%�4�YԱc��c���ͱV��LP�N��HI��-7�(,v�ގ�P��l��y�
�X; ������c�
V�T�C�K]���ՠ�4���U��p���Y�S���u,�&�v_�H�.ݜǊ[��y	M5�����v�h��5�w�_^��O$�/���@���N���m�͎//&��-��{C�i��r򨐙�$)��q��9��3f��]�I��BR��/�x-�Oq�բ��t�m&�
���ɜ�l�a�0�:����ȎU>�l��qyG�C0����J���|x�=�9�&��=�&�I��:ߌ��͌l ܲ����u7�'��f1[������e��� ,���qWel0z,���ڏK)3[J�e�1��Zc㞲���T=�jf�vuƒf.��ŗj?lG[K;wiV��N�Wk�4�81�`����ZB:�圧;��b�کǊO�L2�DѾ���E,+f:�dK����>��Fo�������b��~1��Ƕ��h����9W���`��;��;,&/�ҝ��U���;�G
��t��"�D�\É�c�Τx�ˋ|��/I>I܅T��kˈG�ѝG���w���;����m�А��3����I5-�{s��v\�����z��y��4�|_A���"F���.�*/�U�������_�K�En+r�q���4Z����}y���G���y�z��}�~���/�J^o^������y|�V>��[M_V~L]��XO�/����G>��6g�Pĝ�o�V0�ۚO&0  "����7,��~���ag�w���9    �g�ͨ�R2c��z8h_�}a��$��p�+�s��8���(��}����/�P��csx��a�mu���[���\���c`���s`�� ��>����b�u�|�p�PV��?�z�������̛M�Pr�s��g�Đ1rT�
���&J��%f��=��$��oԖ�D?��LѾ,�Ӡ���h�b@K�#&j�LcU^�x�u�i�4-�A�@��Kd�I�GV��@�pR`M
|)�%��8�HX���B>쁴�m���N�<��赪=�����	b�D'i�Z�N0~�W;̈́��冋Z��YCh�������#���Qn��%	��)bٚEVwbW�#^��~WWwR���9�衚�Z����:i���h�Mdt�"Uكa�S���������"�Gb�y��&;� փt
9O��e<I\ӃD�I:z�G�WgG������z�N���Y��q�g��w��C�a��@�c9�#�z�8�#ԁ
기G�:鱟�c�ȥ%#� ���9��92w���� !?�P�h�tp:(����O� �r4G� ���Q�h�t�:(����O��r4G�`���q����=�+�����w��D���L�ɝ�\z��rW�~�t��:ܔ^M))_h��F�N��:�x'�����o�+c�� G��|��f�tD:("���ON`;�	2G������tPHÅ���=��bm8�e�':���6���7הBfR=�K�G����r����@.�����/�✖�%b�DW����[p��C\'����w�>X�wq�D ���S�u�J0���X�w�r�W��H@�9B5a\�	��8ii��~� ������!�V�7�:?N��o7���Z)����+Hu��J/���: N������Bw��;�0�QwiHkC&�W���Rw_�M���M
�p4���'d����O�}d"G��u��n��J'[�-9):�%1p:Ee|"��	d��U�Q�$���@3�2�l����2����|B��[��f����2�����������?\Q�:���������	5?a~B�����'��'t��ϔr.5���R���H������l���d+�@���9!F`�^�����	)
�OȔJ2f�œ��H��x�#D��5q"`��10;���S��Ta`�@�$����e��@���A��L�,R��`��A�^R�@��@lO�-2�H� ;؏��Q��$L�OnaO��C` n��y�K��?>��M�@\��L3�a ����m�B�O�UG)���
��^r�@^���2�c ��q?�W��A��z(4E.�[OL{<\�`k��� ��!�Fi�V�5�i��)E_Ҵ��8j~�Wd�n�
����?� L�n���MZ.u�&nS7˷��M�f�v*��I�C�h~H�\D�3�_Dq�"Zķ��"JSJո��pE5.���)�0%�iCp~�l~�`쀟怩:�	C~�z���h~�Bj��?�
�(Q.�+���<B�̾� $m������7� 1>Q���h��ie�(�%hC�4"���"1�0�U���ǻ�@^/uH���Cd����0; ����!Q�À�^�(�ņ���[c`�c!�;��|�"�Ab+��If�ZP����g`JE�������
�Od�n�ׂg7��@E�C�$��Gc ʔ�A�i4�DUb ��� ��@E�C��Jl����2r�������	r�6K�n��S�x��4GH��P�s5?��+�Z��ȫ����w�`VNf������X �r��j��Qm�ƕ���(�,nZ(̴�E��V�"��)��"*���y�Q��՝�="%C?���>�ѫ�r���uv��[rU��_Hx�������A�8U�����SsH\������[9{��`+�`/�q�Y�v��^d6��^��YJy�
����ī���t���w�9,?��g?r>���z����R��*�|�yǻ��3>��b�?���g��VvJV�H����U���~7�:?u(C�I�}�~�1�9;�����~,3K	ܪ/�9̧u�k�/�ø.�^d�k�[r�-$xw�ޔ����k����W����&s�g�6_<y�.�l.[�A��]�R�>�.A��ڽ��G��`/�ڱn�k�r�Թ&��V������]5rM �+� ��.��:oO3�m�OO��i�ϊ���UE��e���٤�{XZ��=6�ħ�&��U�"9����S�M|�7R�M:����c�l:96�7%�'�R�h*�	h�$+�'��cxZ�=>	˧��Ӟgq�O�la��r�i�����"�O:���|�;�ٖO'"z��������y�A)��r�qq6����	Z6��x�'���6�?��o=�\V;�M:V��bl�z��	8�	��E�yJ�G���m�2��瓎����&u�|�n`����S�.��)l`��!��|���H<���|:=>�L��g�07GPT�����9d8�O:f����Cl}'�'�ٖ��Qc09�z�e�:.��� V��Bn�w�B�n�!�<��W}!���̵�󹦣&x��	bu��k�����R�{��5fԀ�����Eb*�Հ ���p\k�s�0��Ź&t��(oA�X��:�@NM�~f]��;<]Ȝv��6�!�DcH��H��g[N�~fI���5]@Ϝ&��6�!�DkH�Y���-;
��A"R�7jd[�yH@��տ�g"kI��[$�`�>'#� �HH����"�#h�^ ��iEI�i����D|
��[߽tt�(%w/�q<��+[<��t9����Z,�s:vJD�S7���ߎ�㰟Rhs>�}@��}rV���+S5���+����;��~��&����tb���ᨁ�����,[G�.Acu�8�����b5���2y;`uJ�X����dWg��#�VS��,����~4(4[a,���~�R��V�C�������P�E���j��[jyky[j�E�:�mJ�[%ކ�-���VǾ	���IC#g��t�y����U��׶�
��9U)��qX?|�C�����ٺoXb�v߰��	*U�	Q���`[�vF�>��P�4n���h�G���\�Kp¨<uU��	+��9Nd���^��h�ǌ���4�Ơ(��N��q�4�E9�!�ٲo/�u�"X��	S�Rվ����� �2KUK��3n� ��j/��Ta�ȨNT��� j"H��'*�&j/K�J��OT*L�Չ�5Q�#�R���3�GD�G��<㷐����!�f��B�����
q��J4U�ä��j�M��{Tu�+"����}Tu�ɥT��TSu?�)���R�Ru���������|�L3@��������`�T��!�A�!j?��Ȍ6�e���@���l��k����\8�Iي8��9A�D�e"��@�D!�͙襉,4�GGI"[��9[���q/Sr%�ilN�-Kc�c�@��(Ic+ Yg��i���\I��i�Bך�+7yM�±Q�:��D�������E<Y���H�7����ɕU5� 
�F�!t,U-U�����/��~耪)��*Q�/�z����@��(IUh�j��{��ra��05��T����a�D��Q�pt�$����D=$���j��|�Dsx`�E+ бQ�H@`�0�b�zvO�BQ�T55�5U�\[j��.j
�_EZ ���}˦aSN�"���d�=��&]B�d�M E��ۼ��4̩�]�]K|j���.���@��"���ږϵ2��e �v[Q�/� /P����`a�A-��"���؆Ч�6��|	�gl�H�����d�V�a��c�mв���&M�씭"���RZ���^�e4,�7-��"�ǐ=��b�����l�� �� ����ֶa��H�6�<E>�u9�4V$�B5P�C�������"4���Ex����d��,b���(�A�������b��Ww�c.�y	8��i    F]m��ϝO���[���v�s��xHx�d��ᴳ2����[�o-��)�5�H�[���ݠ,� ���>�}؊i7��X�-%ڑ P��@�씨�Q��|����8��-���b�*�:N�6���޻3o�սW�^>�"�(V�K-���Gq��@U�{��m܄�,#Y�Z���������!,�r�$�H,������D����I�ɵ�x���5�T�$�`�݋���&��)�:��x$��C���P#���b�	��#̑��7BL�!�φl�)<�# MH:r0T) #	N�02����N��f � (v0#��A�|],��7#s3`-
7R��\��-�)�x�ԗ OȤ��]*i=Fz�x*W����j&��J����x��ח��[2��l?��щ�8��A�H�g��Sv6���e8B�������##�:�M0K��,��8�K�"'�HX�O8�����H�0�~�^���S�ᧈU�U b�vsJaU}V�ztkwD�= I4�����Wd��$5%��A�@0av��9!�DDl������X�#�M��(16�9�hxJb4�v�ua_+�����$�$��kI���b�|���e�t����{�@'"�|a�����Zy3���qRLeH� DΨ���\Z�ǹJ��⡃�0Ϧ��@ה��y;����2�6rP�c�B�����]����D�r#��&x��qO���� e�&�YP�!��2$�����c�u�?�@t7	�=�v�+�vL]���s7�_���d�&�j���$��:�(�]���д��;nwFwD��ePW���
i���� $N��� \�_���P,�I[Bi�P�f��S����0�D(��T� b�ZDH���/��PO���I����9����#�˘�|�i�/��uB8���q�p|R*��]K��7Ic��W�
���n�����ko9�i5y�t���m�]M�C��4Dǉ��N?��'1��G�[�ʘ+5��\=*�� �����%�dW�~�6C@O�K !hZn��F#���c	c�����Q_B������X�x�.W�ca�;���16���1�0���<�X�����0��`L��X;X�~�����q�`|R.%DM0fE`�4��{�%`�-��ctZG<f�1/c��G�~�����i��"�}���(׿��8>�3�9;��O��j8?]�����Ny؜�V a�� ��{A%�-�{�:�ac��$װ��J�חv׽�9�ܙ�}5u��X�G/�����X��Xq��
��ڻ��9�86j���Ȋ�ȊsEV`U־Y��	EVPDe�ZeŹ*+�2k�p|R'plTYA�k��ʬ��}��~��#ǱQfEtV�uV���+��ǧu�6ꬠ�Њ�Њs�V`�־ᘝ�9�(��"J+�J+�UZ��Z��czZ�<s��"R+�
IS�.��jp>�"'��,���ۖ���F����sT��bDr���]q^(xKUz{����1q�0�u����x�#�$�\v=7�ȣF(,£�!L��Q�1�����L�E�y�4�K��W.8��r�0��by`@���i��z�`��WM�c�i.l�֌H�fd�'������{�DE��t�Os��Z��Y�OJ�SKa$M
K��?k��?�S���#�fd���7��^� !i��4w�I�|��HPl�{]�8iqj���x&R�����["��d`J��J�@@K2Pˏ$M~<��_�gw����U7!rF��!'#��IC!��j�Mx��DȝBdj44���&��j�eQA+�$M����R�u*�K��nH����?��i�����)*����_��z�}4�Q|��wz��BOJ��~q+53�7�:	_m�V�S!,�����':�T�����ɼJ�ލ��a~|,���֓��f�`��<r�;~0}h9p���Q^��ꝀR)���S3���31$x��~��~�&�Iؼ�'jg�ϋ:�:ʅ�B��=C�IlQs��~��!��/�B8���O+e��C`�7O@T!��±Ex�~Z�<�\��|o��%\]� ����o�/�7���k@�꾸sO�Jc=݌05���j�'ULCB�cR�ӡ��)� � �kA>%$KJJ;��`:���B ���ie�1s���l�C ������<�nq��k�?�'����z������b<��}[�S���Z�C»45��&j���tW��_�o�%=��&�1�&��/{6d|DԳ���ψ!��1�5K����?�EȂ:j�<��guېO��)�D��C
����a�s��a��0�y��g��`\X���YF|�G�g�c\�s\��� ���½z����*T�i���]N
�X���Y���A���5r��i!�C򾁜��M�m�:��B G�}y���9�Y.�E� �("����ٝޯf��a5�%�r\�B����eL�>9�~�9q� ��ӽ�������?�������kR�����t�2I�N����b��9���됬��lEb8B�L��7ܴ�����\@ìx&as����z���o$Ғ��g�{o��6����ϧ���U��x! ^d��vW�*N�����9ky�l���-�%��ӟ� ��	� �D������(6�������c�p�9t����ս�� 9��0�yr�E��O��U�BiU�|H�1H��ٝ*��Z�`
�)�]`�Q���]��a�U����=.���d��̛X3�&ɿ'����y+G�`2G�C&���m�/����n���cT���z	F5]g��A!��V��rw=��eyTg߇�_>�/Kc��eL�}��3��$�y����§'�?SO,�ށX��Jl��V!��?�4<�N�T ����D��ggA�}v�t�,}t�^ut6	K���,��m�p��jv��
x�����t�$,�vƦ[���m�p�1�U��-�w�>:K�R(M��EK�{[:�nl-�uKw%��g�b�4�t���S/�6�^�[:w�>6KgߑR�k`�l�)0�޶z�~��Y���?��P}�՗�FO_n����ػ�e��
ϜĎ�.��4���u��e�)���m�r7:��{�ʉq�	S0quC��� [+�	�F�&~V@=�������z,�V�_�t�,ct��'~V@=�=����g�#`�5��ޙ�1�j�$_ʖּ˷����B�`U�jP����1װ/�_��/���4�vj��_���z!�
g�h;��KH��#4���K�Ȃ!lX@lS�f���\�3��h��X3�yf�������a�-�E+�e; ���{"���"������(I��AL?,X+�����a�֤���	�O�Hb�-U�/Ř  k�~���.2Jȼ��|}�D[?g���;����5�����l�#� ��~_|?4��F�o��O+���o��;Ҳz�^P����<DiL4*|���)���^֟匆�Y|�ҁ1Lz��9ny��y`�1�����4`PY���$5Z��4�i��4d��#0���-y �@V�G�<�&��ƭ���D��<�DA�?��6��?��3}��y���0
�P�P�U�C JT��)A�H}ޜ���*XIi�Y=�89�t��w�͘J@���-W�{������Gsi�� ~r����T���u}\��
fr�����1�(*�%6=ai��6���A6��E���f�\��4��ڽ&M5-��7��hT��[â4g�e3����T�&�Q/k��Qś��4�m�@��l��W�fȐV}i��>�-�v�W�HA�c������r����h���St=��6�� ����[F:�j�c>S��yq�[ZD*(�=7��˹���|��g�3���."A��l�"�� �P����-	"�4R��f')�y[WS��G-P?�����`
w�߅�녜Y	��� �?�M~~�O$Ӿ#�m8��p�:�j�&W+yF��q�5��>��U(    �M�Wd�
b1�9�i 1�{���z�Y���m�Pn�K���eq ��p�,>x��6����M�&o*A��c�{��آ���~B%i�I��Ժj�C���p4@��3�=�C�7�F�E�xc Xq4�o�W(�)�JP�P�ؚ|�H��ů�Pj'lS;�t儇�џS�2Ӧ ��Y#�����I>���8���7?X %��H�A��(��\t�5�nJA�͞B$(�pS唫C>�d.��;3�x��o�(���M.���Bz�!Ӭ�*+pY<M�#R�|�H3H3H��ZG�,�9K����a�Ə.SL�7;M�X��4�cP�ᦊ7�5�Wv�SZ�5pv�=-{@������jޯ\e��5�Z��߰д��_��
��,Lgz�	�s�W9Vώ��`iZ���c����	}���]iʾO�
Z+l�Zxs�agǎ4�S@9��UL���#�笄c�]�BNa�p*ӕ��
�W�:5�)-�^ٲ���f-Uix��� 6���[�$��"V�U�N4�'L�Ycupl{	�$W�*�J1v�m&'���\e�G�N;�O�&d�E�U��4U�����:D���j�rt� � =� kQs�~�,���U�Z.�����ٕ j�,'\7�r�\˫\�;a�x�U�U�U���z	��f�WiD��7(w\ 2�]�*=l*���$����X�_�.�:qؤ)�?l�4�fx&_�i���i�^E�១rb�nxv�R!jq��]����6��������X(~�<��4�N@�Cl�����M��f�8c�qׁ�L3���& �!6�̛G9����� ��B�vR�@��P��	�1[û�x )eh�߰ce�)[t\,�f�}8�5���L��bӠ�]����ޓ�q�z[�A���?d�t-h]÷?"��D+s���X(+s������ޥ�1��ARL�Rk����H9�����j��)�384�R+��D�����4���bbjc�0r+6G��d:`�o�ӱWw�"�8$h�m�i+R�\c�	l���ۢ���)l���rX@A�@mz�*�~X@I��t>,��2�6��e�Z?,���I���e����ȃ	��A<���w���G �Om|G�FB���֤t������
�ۏ���'1|��aM�{���	�6z@��2�:.z|,`0_ĝyG>l)�6�0h�+A��n> �Om�����'W3ff���1�Zh('��2�?|�e�M���JT۝˯ȃ�O�6�@
��R�90\L�v�ȕ*ed	�O�,Y�0�C�߷e���	���i�i�D��{�)�C@m�|H����~F�>�*8c?"��1��xzF���_�*�M�������,��·�fq'��6����>�7���9ǋ�|��Pg��˛��b��L�ʽ��iY@;3�"��r�P�X���] �}[n9q��LgB.�/��~���..V�F��l��*���R������͉=�ߐb�m)淏���j�q+�NFۖf�J�a��2���ok��Zx�49��'�p�r��hߖ�����7	N (�c���1�MC0�&���+���	rؾ-���$��)��y�Z5���mߚض2T�|�m�ۇd�oKv�hq��[�Fˀ��4:Y��{����Ur���V������='�0^߁Q�y�g����xW%H��kw(��jX�E\��g����0AZ J>{�(�qߚ��pA�b�`�5^	�a/�f��i� dK�w�� ��;=�%�V�� qά��fng4N��ܫ�Ѕ�`1��R�yl��ߌM�� Gά9r��!Fp�c�WC2� �lY�}I�u��;�]r���Ueٓ�=�9�X��g�%�[Ko@j�J4��(`�����K��fX$�'�t���5	c�s`V��悘��	t4��Ŀd��;(�Y̠|*�,(���YE
S��jH>Q�~uԛ�v��h�M�::��aì%����J����7 ������-�-bV�pIg�A��X��4��R_̦��1\n����	ڶ;�hݝU���T�X��-cF�J���4�t^-�L���V����ٴ:w.:�Z�R祏;��ȏ�'�o[�H��0�<dǪ�	���-OlT�v'6��^����>J��4T
3��1���f*�\"]���2}]1A��l:�B1��al3�>�#"k��6��K��*�|�^�=ިɒ�4;_nõ�
�f���_޾
��O�>�8���d��F.Ѵ��Ζ����H?�����Ww00���󠭟Uo��r^�}�-<�C��7L�(�5��v�A��m��<enQ�`k��WqK���Y�|���0�ۄQ����h����5��̜b�I�7Q�y�l7�ЉR	��
��Y0UV�Җ!�KX��M�;ʧ8ȧ�M>eb�M�f{4[ʪ��fA�1���U�4��U�&��0v��.ws6р\6�����1�?FH5�J�
d���:�~�
b,nc�It���a��p3�{n�pjVj�����f��\ܦ��i������ܩ� ���9yE�s��pMB̫����Wq���Ŋ!i��� �+�:EM�nq�t������&�����֢��Hý�6��	��2������>�v��b������f�΃�f>E*��.��˞xfY;3l�Y1���2���C�Mo� ���y���Eݍ�9����#\�XsrԴ&�Y_z����w��M�i�
0���cj���m��Zp0�eS
�M,�.\,��ō�b�:���`��k�^X0G��i��{�	k�#���|׬���a�a6S��]�!,?w���D��hл����8kG��xdL�_��D����C�&�1�
��	ܒ	.�5�21|��mL��H�x���}6�w�M��0����� �{��-�G@��mSq0��o%�]�[c �a�d����A�D��[�.�t�!#@�"l��� ���Ī�e/��S�k&:�ؚ0U.�lm.v-V|ml@"l��l�Ub�TP.�غ1&Cj�Bj�Bj���ǀ!�7��r��1?\�8>�x�X[M4O����]���.�'(�̩_�Xrɣ���\�W���$���<��vG#ӑ �r�[�1a`��%���P�H�uFwβb'pݩն��&�xn6�ݧ�M��nfo7.��Esڶ�-�c�[�����G^TC����ڶ�Q�*����5�bv)F�2�l�����F`.p�+��+j 	�BMu4�B��T�9kOeˢ��,�H)�^Շ@~�y���Mi5���lu�P��� o�5/ J`����s�ЁW�U���h�)�U-����2���QC`eL`U�H�^<�K'�L��|��9j�6%sb��\ �؏s��Y&����3�~i�4u)	���@��^�	@�XE9U�t�a�C0�{$����G=@�q�]q��;��v�����	W	W�%\?�wY��y���K�m�e���`�X���c�D{�|l j����J]�+92��l_�O���c9��U}r����<����Һ�V_�4f�6�C�u�N��h�lyW`�w��s�`+ 1��w��92�l��d1�:�\[�0�f�"?&��>)e��o��=G3P:2;���J�kt���KEB��	#^�,xi�����C�Oq��������:��.~_D����P�%�=kPoV�(�/�$hN��ex�Q�S��Bq|�p�ɛV9�fq�c��$t�U���S��䚻��5������������S����
�Z��VW�f��Yy'�<��������|:�%�Y�d���DJ9P�!w���i?O[�SA�X�O9��:ա��<-� ���7]�>���"��9�W���^�_��^��R�l�-��f�]ri�b��\I�����:Qu��D}TC��E҈��@_��1sW���	Z0C^3e��!�ʪe*b�D���c�XJQ��HJ��u��,:���    /�K[��=q�/�e��7�S�8��'���$�dR̙~�D�$���#��A�D27U;]��h���8dzQD2��O��H" _+ _{��<��S��ܵ�s~յYz�4m\�e�iZmw�8M�{|�]c��n��\c�8���E�v@��ߪ��v�ZJ�;�V���[3��*mk����:����
Ѱa�_�*S�i;�}v�>`f�3�0s���VGۤ��E�����D��P���_�,\eѽ0�T�
�>"_ȩ��5T��n�4tV�_�%��hd����ΪT��j���ڣ<.x}#TL�Ĩ4�>��Zc���d�e$}|� :*@��H�PPlKk�F�Ѿ�UPpR���u.��V�]}�r�F��p v�N�+�;�8xU-�ZǑ��zHcl"J_�"Z6��Hi�]J������*0�/�[O�l?а����t3Ȯ��lV��S����[֣.�46�SFllu�A�VX�)t,N	�ӡj��@��슕�kL�ub��3a�U��ga�-� ��+vL����`�����ڀ	�Pu�a1<��Q�ѥ��wܥC�2 d� ���p:�F5���`�r���a�W���>
�%�dJa�Z6�v"�wӫ9��2�Ț�O q��)��L�`��L�h�G���g-��!H�#[B�*�mn>�3����x�뷠�#ɘ6�!��Ӄ�Z��ky��{G��{J��Tx��}�e��vt_�BW7ת54�B��Sߩ��������Ǟ��РQ�'ZV�~�U�% ���J�,�l���a#�˜�VCCz���W�ύ=��-��M�$؄�-[�6�_PF��Q̚�qn?ţ��Mv���p����-��e8�>��d+�}l�N �NI�0�A1�m��M.�3V�����P�b�A�q��mb�""�/_DDoJ"� l� hT� ���D�ډ$Wi�'�s*�`�`�E�@��	~J��P`��`�˙��*�#U�yң���� ���E��I���`��@��o�Ʒ2wݎ�����.��`�J�E��$`�$�*�s�C��e�i�<���T�e8�W��?((?5�;��Zh�����W�`����=L
lS �p�Bc"1��7?�/cb%`�(������uw�&Zf7yh�A��
Pl��_����4��bP`�� ����o�`d�-;�b���7'��	~lO��9{�{q�rI�a`�m@�<Vw ��haM�#M��b%�=��(@@�ۓ�E�w��dm?KُT(����fhdm�[�(h@��J�|�V)�!\o�ߢh����>k�˿�,��˛���&>3���g�-D��C�j��Bq�XKjv\tĮ� ���tW4_:��sy�*#���U'�����\U�wk���4�4Į�����7�O��q8�]��"�����#� v���4�$����yMĠ�3wA����A����3*Pv��|���Į}��B�7�Xu���XEݸ�e�t�J��?��gw�8L>׫���2� «˾��"V������V���ݪ��8�*����+�{�j�?j��*Z�C�*�H@�@��1I���H�/p �H��Hp�� b�2�Ɓ�ƁTib\~Z-fo7�������=ˉ���"yu%k��kY��W��^ƭw;�k�3+-R�lQg���i�7(�$2�$����W�?> ���@=m�~O[���6�iK@�B��.E��������β�����V)>bt]�n��F��C#2������yP�k΃H�m/���z .~}#H Dsr�ڤ��霚����V͇��E�^=.\q���~�=�K?R
�ZP	iPG�W���y��˼�#l\̙�ċ��H�I��� �����-(I�UI���E*�[ܰ����1�C��=L�Rȷ
}�J�VUJ����j&q<t�!����S�[��T^#�ݩF�6�Zچ2��Q����Q��؅Z�.%�\s�Z-j#�;B-}Gzb�sK
�j����ݬ�]��;ig F��J��#w~U:`��Ҽ�8�@_qԀ���� �bd�^��~]=ɁJ�9N =�e}A+�����)i=:���E��+#��z�,n�w��Tc5-0JA�F�ҵR�r+D���`���9L��~�����Z������� @���-Ţ��[)Zq\�u��f�� ��|8*,jSae|���ì	f�&B#M	XeV�"���AP��U1��tdH����GRy�i��1��{f�I7�!����C��A���Z[.�9�&�|4,}��
/ߦ�z��1��zr)�%'\_�4Xm���bį��3#�oVmW~��a�٦�w�)���˷����r�!V�ظ�U�u��D\�M���ې��s�vq����-.I�s���,�*&�V2MA��}c��R�J����+������p9��.��ut'����1\�.nfo� ܽ ���!��V��V�׫p�|h�p���}�XO%&H��#i
�Ք��8pk�G��l��e �,�@���4����m.v��*άW&�u [�m�����a���tq1��Ɂ9ԉa�_7F�j���<��^�H3!�K�����Šנm�!@A��T;^.�^�vS�TVq�f���vTe�oQF�#�h���{a���'ߪxJPrg�C���>&m}�����:���=�|��	n]��	�*��4ܶӚ�'ߪy�sa�aV�Y\5Y�{N��_�S����>(n����U�p��ɇD�6@�F��>�1�҉j�q�֍�������։Y�Na.�9��4����\v�D6f�6��[�X��
'fS8}������?��©����~���hy_�u�R^<:]����N�jrya�f/D�缣�����vo������nv�(�e3{����qv��\���%C��-��x@��Ŏ���2�O�����_I{z(=�n�rdiY�C�ŵ�Z�)]j�2�RJ���HSZ!�>r�u"��M5X�W.��V��5��33����	g*BfS�t'$�^S	t#h"�Z�A��j�)�&-���	��8j�E��Fo�%Q�������P<�i�%7��h	�,f�g}x�F��]��تm�/�������ܡ:�HT&0�*�RqԄ**4���"�1��T��dp}�G�62�ƫ4�)��a�-eq� �Ұ����n�a�&�����\��=��Vw�=��j�ޯ�1�Z����4 Y�B��?+:��.4A��l/���v� X����Ƴ8�a�)$��ۼ�"̖Hvh�q���ghU�a��X�ø-C-�zU�Hb�If�Vi�`�3!ri0��HkV�&�r-n�k��rrYd���NI��­���e�C�nN��dv�x��.���j�Uh�R���6�V���q����۔�I�p������s�j�tNs��&��� e��=�l��������c���Ka� �h��E"�)�����a[G�����0���0`��s�+G�S}*؟7��W�e$�R�oi3a_v�/LZWr85ݾi���Ys�ܯ:�I�]q��L����� �;PZ�Y1j�����6m��h��6e���A� Y�b�V�78����m:�d#���W��j�����p}{w��:A�Sq��
�r��1ր�qG;�~�x��h��M#��js�9�U]�1��͑nV���q��P�NՍ��>���\~3��*�0PXǔ��p�-@�(i|i��j��T[9D]�t��G*��5X%����*������Vs��# �@L�h�D=�� L�;�_Ij/�oo��&����U$�X�~q&��8uc�����Vw�[�r�����������F13���M�� ݑ�����r��'�����}�nqԶ��ᆿ�E�0�:���/V�/�M�@����+z���s�d7_PQ����:
Af�Ei� '5@�f]#
A	C)�)�T��BCʭ�Y��g��EＸ[(m�� ���0�ya�t�'{q�51�WI0���F�f¦�    Сt�g�RI����sd�0[����r������	-�����C�)�-�k5�Cl�<F��B��]�tT���I�)���P;P���;�i�mOAg!�:��"{�Rq)�H,f��eζ���%c9�1�/J��"Y:8�.��I���®� ]�t4��1IA�H%���z�(8��e��6�C�mTu��Vw�.T�]��ao�[�a1'���V;ϕ�G�Q�Qb�E�QR`�8p���4UzU_�҆���A��A�7�:�y�N����Ex�_�E�����FT+kr�ѭz��l�%��$�(>w��h�EI��6]�@&a���K�~Z-�ծ�v�`V��b*ZV|�T��Q\�����J'�˒%�[v�Ȱ^�,�Z	mm�Q
l��ͻ(uڦ���K[���v�Ј7�Ɏ�͵� dH�M��f^���ϑ2�z�Y��
��"��p��:�b����3��� $H�����6M��zC��q>Z�+'�e�F^�di�;�Z!�h��@I���Q�(�h�5[s�B ���&��p�&�!DP��o����$��yn��M���(�)��W�It��^E��]T�#g��E�{�G���PqT����eKRk�s�l��@��Ay]�tH.��@ X
���|T�(�gP��i�Ϛ��~�jN���ǫ9](�2�*�Z�V�f{ԕ@؄q���e���;22�P1��=��f_���l������<��rW�Y�V?��ǳH�UF(~뎩-Ъ6�Z�0��s�Ճ�e�ƚ(3k�z�0���Zf�@#�4R��$dHyՎ�̣ߺX�߶X�4��}��Y�TO �8j@cqprp�#��ΩH���� �?P����Ӯ�S�!=��lR�_�����ǁ�W,Vk�ԟ��;Q�-?�5*�*A
��]���7�t�g 26Ֆ�9����<K㮞�2�"`��^y��>n���h_A��i�.�����k��!�"�*��U�LYb��2rA#UϦ�2 �"�㬎�q4���8��>$����e�]4����
�#�5k�k���u�g���	�&D�u��[-7�evE�>�����D���rus}�=�w	1���?����F���^h�cn�G=�0��z��`�Di�:���no,�ܼK�������H�Hݮ�|��2g�!�x6��D���pb���{ag��A�ଢ+ ���Y�|ז���)~�;ru�j�Ό>�YXf�n������Y���_!�q@Ϫ�ʣ�"�#�B�E�5���( P�. u��C�I�^[2q���\xd���"�*��V������/ ����<\.�9Ʀ�,ڪ��W�o�S�*��C�J;;����k���H�����OgT�q����-��^��w��i-+��~�a�
Y�P_WO���^ˁr&T��E9��'��2�E���� � @=M�T��YL~�r;�F8��	YULnI��P��F�\OJl�M���A.Ys�:A.�5z�xE[�$��P�K������]�/@ŋ��KP(f�+@.ҟ�'xS� M��i�dJ�UH~Z�#U�i��/�lʥ<0�oo F��85Y�A:Yӹ.�|3|`�)k��C�a�B�.�|��+�@�YS�:^���h��Ĝ�׈��T��-�Է5��6k� %��)Q .Μ6�N� q`Dq��Ȗ��y�n�C�4�9kt�V~p�Y��mn?\_8��+���;C��I���W8c���a��r�T��q�w�!��m�̘8'a�74�-oJ���ؓ�8>{Ǩ#--��^qTA?P;-��qi�!��m�ԘC'��V.i����{�e�>�#Ga��:H��v���^qX�x#�y��-.&l/n�oo��s�[tg��?U`�"\�j�����"����d��#��k�X}��p��*���\b�y���,N1Qӑ�ŝC�%p��D�����M���5X��j��$5��u�96'��>C�I2z;8^��Y���:
ψ�!Z��F�Pzf�he �(��{e�/�6� 
\T0B��
Q��(���I�}��9��:��	��;w���6C�g}��s�C��c�%���b=�]��tr�����!��֝%a�a��C�:p��A7���&��#��L�g���bg���a�E��O/�Vchm	.jK>�'���.�����I�jM�z�I�Ó��fo5	��C��#�Tʠ,)C<��%�$�!����2N��d�S��$���$&*���T�¢�ywZ1k
�BJãR�^h! !E���h9.-(_����/j���S;<�v��4"�!�H1HQ�a"�:�MB��T�-�Y�]l/��B����� 2	R�I�h�Ǧ����k|��������[/J�D��+>PG2@�@�m5�+&�1���N����AH����h%HQ+�����w�%֕����̒k�:H�+f"x�N�u��+���Д�[��ٽ�M� (HQ�P2cߙ��̸�v����7���Č!O�����g�#3c�mƻ{,G�ff�f<�~'�5$�I1��ngԗ����]�ev)�h��:���Ú��}�H,M�!-Fj/Y#J��XWw�kz����T[�5 Д+���ni�Ѵa��Sp�4s�?�����P!�ɿ]����f\�{�Q0��o�f�}��?G3$����R�l��c�����9e�پ��9��C�/���b���\���%C�@�3�E���L4<Ѥ��<�V�Ѡ��1=��)LJ�؎�r�'`��q�Y� ט��*�d�%�5ntm��W��:Lnr�$5�il����㯰G{FI]\g�C�.�]��cԖ����}�2��5[g����N�x:�rmU�S.�S.��(�-m�Τ�4�`^q[b\&m�i�&]�:��4Ȏ�hg�΢gѴ�Qo:m�@���x�Y4��x˝�?ܺ�&]w{L� �^���z�E��;�a�6{��f�n�<���q[��m�t��{Z/��D�=�?ܦo`�-u���Z�BQ=�����LV�����ރY/���g��t�W�y�}�D����[g�C�-�Nn��43\��1]P�
��t݂aPۥc�\[�.�r�>v�Q᷶[g�C��r��@K3ܽ�r�E��7\g����3�B�cd�k e��*���r!�&Z&���o�z\�K[�M��^K�GS>"�Y�����Jk�+>��PB�Uh�H̥���@
"0� 2{%�^��b��i�k��4�WH:��Cf�����J~��������i Y���e���w�:����'e��h���r/�.�W���zy3T���V��n~�L5�X���jBu�L)�$���ٳ���W���}G������rϖe�s�3ս`��b��l��#��f�e���!\��'bc&Z�������mt�j��w��U����]t�<t�<���1<�ُkcfnr����j�C�{�T��8;���q��L!��Z�e�1� 50*u�:6C��ڊ��x|E�۫�
���!V�o/얰G�?g�BC�"Õw���u,9�2���Y�+��q}�ݗ����,i���V�\k5|��<H�Ys����/�U<1ph ���y�fj�*D��Ηa1|!�c!�G�c�&ҭ`@~M;��=8���������nl.���i`���&n�'߹X�vgش�{�S7�-/�����5�]�U"�ZT۾tۯ=��l?��e�=�;�3�Z9�w�绂��2F@���up�M���̅��:�R���cg룴���]a��h떢�ml����
['���h����)ں��8���}�u����"��.N�V37WW����u��*l�9[��'�^7�%�l[��V��l����(m�$��Fy
���:�T��ۺ8[���d�	i�F�k����:v�*߈����M�T+����a���tq1���%n�\���j)����y������h������ƅ��p�n2��3^���§ߢ�V����4`�J�|�!O�f.�����P��c�x��򂒚g�|�ئ�X?	[X�:�`��O�����    ��4݌�ǻ��=����~I�����J(�f�6�S�.9�O�Xo@
& Q���ۋ�n�U�Eǐc(�� 7~(tx���wc4Ä��$����y�$[���v����Z_���;T�������"�ayCɯ����՗(\�~���H.��͐$��b��W�(|�C�1�nu�}��ȭ} 狽��w[,����d�o����xw���c��R|�ҿs�6m+���Ԡ������w�q+g`��`��T�g�.$M��+69�u�
��{g̤/c����"_]JVK�_���r�X�.�1-.��[7k<�g4�Z�TZ�칦/��ͫ�RI`㲞�+��U>L������z�w}Y�y��O
�V���U~�%����e(/�"�y�������s���?ߔv��#��ds��2T��R�2"�m��(b�R�&+J?��6��?��3}��y���0
�2�2��y��Aߛ��d�h��w�}i������Ya%h�V��r:A�#����X��E�HY�����
�H;Ψ�3��2R�+k��0^���1���^��[�;v�5'N`{A0�d��a�����S1Q���* ����3u�Mm@nM�>4�x���Q��8NZ���:�:ށj@Ԫb�\�sĵPa_n�
�!�EZ�/yI�c���N}��\](�~��F� ���S��#Q��Cq"���Ic_�)�T{���71����g�����!yS���� _��)Zl?=�|u���M���
����L��u�
S�a*ޭ����0�_o�~�~�J~3�������0f`�o�oJ1>\�*Xm	=�)�� a0E�0E?�__���ç���ux�U���h��j��p�wϸ�f�X�	���g�꟪D��e��y��(|�K�r�d�ܡ�%YN|^:z��e��������Y��>�6�;�/�6ɼȿ�����C��3�\��_0MO0}��:��e�����/��4I�}6)��D��?+IPx��;UL|:�+��逕 �Vחo���&
��	��st�f.��E�9ܤ���UX��� �3�O�e�7�����2R��n#���'�S�g���&��Bn�*��j�����#��~��W�E<E9����6Z/w	����F�!'���ޤ��ӟ"�`��>�g��
�{�]kg-�ٹ�nC�p��`rXy�C<����9����7Fv�d9O��ri&ڀ��6%�z<`'����8�
x�*�y{}y�0Т��Bm�C}��m��V�a���:N�S�=��<��?�i�n�n�ٺ����ׯ��}����oh��i�em@Ȯr�*� u�)��w���or�rJ:�����OFO����HfL�x��0c87c�����;�at��e�J�Z��܌�f�`�c��ɇ%��k1cf��g�0c\���?� ��B��u��W�#=��ᎌ���D/��b�����a�z*�c�����X��"���c=����Vr�&�G�bT-fL������f�p�&HH�\ ��I�z���Z�Η�p}���u��eO����a��|�� B�
�1�m�^�|��z�]�[�����i�� �\�<�tՌd������
�1D��'z�����+�w3�,�Y2������SB�&�|��SU��2�vpt�N;�Q���J���:�]��[<.��b]N����8�p�)q! q!h�aq\pX_�$|?|fuJ��j��@؏�qlu���L.yYju��j�x?{�����B�b��.�>.��*'�8��>�����mt�W�-wD�9dϏaEc*/�xg*6������nHS�J�cv���P5����_�*u}��;�.���|X�l9��ɯh�0�_N����b��M2��*^n��4��2��
��~j����t��^�u��?�ʧ���j
���5�)PC�e
H�N�|�)�^]̰�U��v��W�Ƀ��ɯ���v����+�T(2-�M��M��]��HN��Ob�v��������*'��e��Q|�i�H���de�ǭ��
�p@���E����G2r$;�����DB�Ý|3:yi,!����Z�(J.s7�J.�m�Dvysثf�O>)��0g��ڝ�p5KDp�UR=��7�՟��_�t7�&Of/�\�0���	;3��PY��`\�87������k)����t��k��~��k\|��x\|��XF�
�y-��c��͐`l7!�S9%tp����b>���mz�h�4�鱟��=�?��%��yx�i�ޝ_^��%�&���U.�\�w	@��s��"&�rSI�.1��~��Û�C��ǯK���&`t��9���!���I��W��>^�k%�ϟ����i����<Hn6���j�}~��Wߴ��S����03���O�*���WS�c��C��[?/�����y�	ø0�9��{65�]�'����$��ׯ3���y�y���-�
��������.���c�_�������̼l�O��Ф2�):��L}5���Đ4g��#��|�jUYf�Λo�_j��%%>钴�ᆘ_�!�����������N��|B�u�zU(�#�<;�-��<}�	�z�Sp�	�#������V����d��N��O�pv��Q<o>���x�������l"�~����D�ڹ�U:�Z��b�ن��*�YL���,�30����*��9Y&�(h}ޝ_�_�}?�y��ۛR���!̇p�_��z�{�����F�T���"&��ʲ������O�z����~Q^�����/~��O����XL'���=�=j�����(�׎�>\]jŮ?�_��[U���y���bu�C���33y��w:�a��kˮ�/n�r9��?�C�#+��{�S�9���+V\�<���VQ�J�����.�)x}z
��ߢ�-��EQ�٘�9��D�T4��ȿ���¯�����St���ӲR��h��gH�M��N>G�"$���M-'�:;�̌����0�Ȓ��-0�Ԥ���WpbW��v'WˇR�8�9��NET\��7�Ai�����^�BY�ċ��S��MO�Ks������R��vXR����O��H�I�s�y�iSc�*?Oλ̓z��i�K45Ν��<��<��4O�;OS_��q�2O�I;�|�{q���rd��o��j:���P�I�}:XZ8>~�N��ՂM[ �=�.�Mtܥ�<"�K�xƽ���zf��rh\G����b>�S���?�;;p�M����.s"P:'�˩v�˄��D~���q������nՔ����g�={�X������Buٜ]�V�{��6�%����y�O�����//��ߝդ�o ��1\o��v�y�x��.�/\�_$����*R��!to���}���߳��=�_�	<�X�Ɯh�}�΅�$oN�/8'��@s0��)��g�*]|\����Z��w��.ܮz�v�y���r���w���Ja����~�I�/��?ƶ�[h�Ý��=n��i3L�u�b:Q���Z��󗿼����'���oHb;��r��J%:0�}��%J
uc���v���FЗ��[�=��5��4���|G�7o���z����`|6�iд��z�%
��\r髌{������{h(�B>Ð�{� X�����R���^=o%n�Y-#Iw!~�H��W��&��̘�; �9�ӑ�JҵT�Nz����Ur(T�����+��~��NF�٫_��
F�����3�c3Up�z8����{��G�sW��V�6)���f���J����/�z��,�l`}����-$c��X�u+�@-�ws�,Ǳ�O��� �/�_���v~a�~y�9:N�@O�1�:ǀ��g���P�K��x��3���ԩ�~΁��9�'��Z砦���a��
���?�f��:�0n�P�*���8�;���ڵ��k��� ��'�c!�>�M�^E���Cx�˵�B���	��	g�G�A��=g`Gv�z�!o��kH�t'�M\�]�E$����~Я� ��"��E��l�pÉ��S�    ��!~�y�X���翼�<��3}��ʴRfV�_�Ԥ��{�ވO>Cv֝��a��Y:n���8K�����__���Cyz{y��Ս��=`���n�|����~��A�n>��O��'���?��B�ɗg��_�Ju�O7��*���b�f���[=Koe�8�IMZ�wg��jq� }���G�FV dE�������5|%TT?�o�������r��c���ۛ&������5�9c�O���"�W7�7�ZM-��`�{(}�i�%��������K_�eN�Kn��W�M��r�r�3�����?\ؾS�w��Q�Vɨ�*{�Q��?���i� kw{3�!|�����>E�e���,)�mU��.*�*�"����nh���fS���j�q;�#~��ת`�E<>)�}#��Ϫ�'�'��q_��� �䤐gF�I�É��;Q�R)��,�.uq��5*g�mo��?fšƘ�U��'����~Bs���57��1/ǯ�z*�h.��Y�1���$���ԓ�RO~E[q:�d5�T�'u�ԫ�U���:�+]����)��YQQ��q#:Cß��>�ja�tK�^|���٧���o�k���-|����8��$�M�&6f4-�B,��/�D��§�$�gA��|s���e��3�WQ�3-�Yj\w���^q���L���GU@]��D�Z����P�ن��p}7b||�o�_^Р�����6�Q6�[P"�T,`�$��@�?UkR���e+Ν�/��,EO�V�e������G��p�i4;��o��&�s���r�J1����]�B/i���/)MC���4z�$Pq-N1֗T�AB���U.��R�K��Kᖤ]#��E�K��^��n���r�쑸��+-5�����z��k�)�����땪7j	��)M�����ǵ4ׇ�Ǥ����7����;�q���R�X�2�r�0��f���I���8bB�_\퉄����dX�\���������:�O���@59��2�|�7��Q�P����_�Cj��	�	��f7����=�9:�������w��c�E�|��2���-_"A�24|	�;�M��g��Cy^��<������T<�h�~�\U������*#���*��Wz+L����n���H���9a��]�ɮ��g�p�9b��e~QrY������D&.K���-�ի�m%���!g��dv>o6g?���u����g�Hג�l�d��D�����`���;H��U��j4�D��S��O�9!��6�+u_0;���t�G@�#�#�"��徎��	BoQQ���fCG Ym�h��:G0
G�pWO@��	�IyZ�	�\����
����������t.����'�
�ZW����p\�MJ�X�X֤�k9�R�B�[��~C</�*��TK2r0���Hd&e�W���?�x���kl�E~(���/��q�O�+(\�W2#�pU�9\�ŕ�;����8	`k�M�i8(��-�U�rQ�,��.��쨁=�{	��_�9,��qe#,svp\�:�q��� ��43;l��ӊS�	Y�0�
aGV�Xt
���E��AqE�+2�J�Z���9�밸R9xc&����K�y8(�����eKA��s�����x28��$��[��pPhA��#��a��.�-y��'m�02���B��\�V}��,�
i�V�<��'m��Q:҂��7
���,���9h�{#��'!j�kՆ�<Z�>�F�F�"m���vXhk�x�Iȟ�Z�F������
(LFZ�"��В�Gړ�@���xm@��c��T����Օ�4���g��e\Y��j��3�:��ː̮������g���Ɛ��
�p�$��Wi�{�l��z����F��_�QS�,��k)P<{����M�W�FN՟I⋟��h�Ơ�u1���� /kC:s����}$~G#����_F:;
�H畤�6�sG��I�S ���-cF:?
�H���6�G��IS �Dv۶�6��(�@zPI���Nz�H7��HN�t�=������m� w[�/�ڠ�<���YG�`/�ɛ*��;>�j:�@;�Q5�����>r��hG�A��~�F;:
���y^�_܊v�h9�x
��Ӡ�v�H��v��j�I+ډ�}��S��h��Ӡ�v#I���v
��j�i+ک�}��)�NO�v�U&�vz�A7�W��P+�rʹ��>�:���F�Q�sp*�s��x9���i��|��|�zyJ��(�9�B���9�J@���n�OAB�NCBg�u��~�:�ZC�Z��Sэ��)���i���z:����_��C��t�)��N��t�4�t~��EK�@KǪ�t���;-��i�S�����ұz->������Uk�p+-vZ���>->-����h�h�X�����a��;�S�����ұz->������Uk�p+-vZ���>->-����h�h�X�����a��;�S�����ұz->������Uk�p+-vZ���>->-����h�h�X�����a��;�S�����ұz->������Uk�p+-vZ���>->-����h�h�X�����a��;�S�����ұz->������Uk�p+-vZ���>->-����h�8h�x��������9�d
Z:rZ:^��#G��q��q���g෉�N{���>(�u=�H��<VŻ_�{+�c�^���������z��Ә�!#�!����y+IU0�T��@:��QG���DG�=�H7��i�~�;����^H7j�2v�h货��&U��'��i��81�NzAt�(���m"�Ӟv��u�N�Ӑ�qjD���:��Q=���D=�=�P9���P?��������9n��e�6��iO;�Ǎ:9�S���qfD��:Ct���_�PWp�F̱۝]�
���A�
�l�G�r�G䱥�RZGf�����.���lu>X]�M�h�����1���.ax���$Y���q��s0���kN��}1rʧp��+�'Iy�Ջ#ܼ�����7/xs�ݭ��S>�K^���$)��rq��s���ƅhN��m1rʧp��;��u�U�#ܴ��# ʫoZ���씻[#�|
�,��%�IR^��7,�r����c�����s��p��WLt��v:��
�A�^]����:�c'}
u�Q���$I��R��P�X~�WW)F��F��I�B�bT�21I��+�#T(�� ���iA��O<vҧP�oLL������Չ�m�_]������c'}
��Q���$I��L��P�X~����z8�B��"n�OA�NA��K��Q4q>h��jMj!�CN7vҧ �C� ���eq�(�8tq~�.��!��;�S�ơS�����8tm��8�Z�Z��SǍ��)���)���zy:�>�}�_��C-r�)��N�$r�$r~�DE#�@#Ǫ5r��F;���I�S���S�ȱz�>�F��F�Uk�p�v���>�>�����h�h�X�F���a��;�S���S�ȱz�>�F��F�Uk�p�v���>�>�����h�h�X�F���a��;�S���S�ȱz�>�F��F�Uk�p�v���>�>�����h�h�X�F���a��;�S���S�ȱz�>�F��F�Uk�p�v���>�>�����h�h�X�F���a��;�S���S�ȱz�>�F��F�Uk�p�v���>�>�����h�8h�x�F������9�d
9r
9^��#G��q��q�F.k�U��Ӟu��F���	v;1��tZ/0�堏�F}\Fn�>N{�Q>nʃӢ��t)ǽP�8n��e��k�g��U��'��)��81bNz��q�(��Э�i�:�Ǎ9F���)H�85bN{�Tqܨ��ЭW�i�:�G�9?-�OA?�}#�~/��$�%q���8�Y���1''vw
�9Ό��>0 ����E��N �  �_�i��§ߢ�v��a�{����|�3���\G�(|���f�ZJ���MɈ��F������3�}"�d��O�J�?C�&���[��2���	a�ř7�>��b,=ǜr�쐤���>C�vC~{�Z��z����7�Nb�������K(=�c�x�$�h���#�$�S�9A4���Ѡ�uN��	�T0�S���}�AR�v|*�bN�h��?��*|��
�O@ѽN�
'������$����Z���n��C/K������;M^�",��.U3���)I]�b�}�<YWPk����$�t���� �a���%��/���yK���8��g�ߺ�"_�/�]�,^ʿA�b�C:"�¶�"����\A'C�/�Y���W���I���q��__��NM98z{y��Ս��=������j���?l��b���1�|��<<�O��?������/��/���J��&|Z���_�)��g��V��(!{����C�Z�?H�yyđ1ƀ0f ����Fvq��+�������c�2T1��ر��zCSGY��ji\u���]F��H2WDo��L����N�ޛ�K��g�foY��ڐ�\R�*��*�2�h�е�ə�~f|�-��'tdM��"'I���4��������\�Rբ�+����JR����i��
M��
0�\�
�.� p�`�� ��,�$]IN��jA/���+ �� y]|�|�s�w'�#I��tFA��
�n�,���5��������/�	���7��]SY�c��k��`�&�N��Pz���(�q��;-���\WUפ�7 ���x't�(�����*:����WY��k��P�F���:C'����qA�AsV�k�j����|���N�18Yg �Π�k4��2�&�ӱf��s�`��@��"Iz)��3�Π��6Z�2�@�:	�S N���	��n�Q��zQ BX�(Q'	"r��;~Z�'�M`F	"�E��bk�AD�D�ȩ���	 ��t�	�(BD����,cT���
;���	 Jg�N�E��"��e��w!b'B�3�O� Q:|����AĽh�#-c4���;���	 ~�+��"A@��Ŀ_��SM8f���؍�_K�6v� ����HB:����&h����ǩ�!Ս4��H�,���FI�����P���0n�H�^�J%ğ���R�J���C�SW}��C���<v��/��*�C}��o5?^g~&;�^�KU�2;����u����W�,+�5���o��-�l���6�I�������b!��hE�}��lN�q�ω4C&��|]��H2����0�F��U���!�M�z��
7ڣpз�يg�鱚�oɌk%窧�l��U�\�*i3A����&z�_��+@i��ח��؈Y\���8��33��	�e�WU���>R��g&����$x��r>C��N���Z��^Œ���\�ek9�b�;���h�Nl���Dξ�-{��/J{����_�_�;}�*-zqö������X���T�n����6��vVm,yGD�~�وu?�{���_���[�[k�!��Ż�F��$��W�^x��j���WN�e �a֪��_��F8M�Z�J��|3��C�^l��ofo/�XP���=���W��-G�ג���ǸJ���-�Ғ��u�q��?+퀌�����_�i0�҅�9e�����ɷs�,˅C&^�1���+~�q���>V~� �j�JO�a|X�������x@��*p�<�������X^�9ˏx���"�'�p�kI�3��f��,�hv�LWU��~c�t�?����p�[|�+�k�38�����/j�lƌ���Ř�;��ow���*(����pNey�w�їu$�t�W���hRS�{�M^��9>��S\�Y��ƭ[��� ��/p�}dv�Յh`�݈�ٍ�6�
鿘�E�ųH�A�^CȌ$�<&ѓi�cwS��3�:5��W���;��<ҩx��Y��z"���{�v����i�"��
���;#rgDN��3�s�ix&�/�n*�~��OQ�S����j�1���{��������s���~^����e�ݤ��� g��!}AќH�'��7�_�#*���&6���q�>��^��dTg�V�w��:o��(���Ln��MSs��l�l��e�r��7���A�jA�^l�O��9��RzTվ��U�̽�}��ã`��'��O2�>_��J�&IF����I�b�&WF�٢s����U�o�/A�/|�����|��0���_�ao.C�Ѷ1��6|�=�1����EK�!�U�
�և�3�-\v���$��5���8�Yj}���c�����|���p^��^��BV�Ib��c�$i�;��]��$�Q-���>=wW���x5����(T��<^_��
��կ�岜�۴q�N����a���nm�I�%�tp����i���X�bz���xn�rK7�����u[���}��of��������V}��U�Ǽ�D�d6W��\-_W�!�%6�3���=o�~�歍������c��p3K�`�lOiv�Ye��5A$t���ǰ|�͑ ڟ��Eh}Q94���S��o��6�G�1�+��M_l?i�Ē��QO5e�E�x��m���s��=L�J)���;ד�<v?$����_�����̛(ϱ�C�ނK���NMnR�q��W�Q����>�j@����%�P5�T��ĕ�D�zTc1"���_йǱovP"�A���h9��ΈO���In�����f�!Z<VQ���g��C84o�4���] F�Z�� �~����7�����sm���p��GiTsҟ�Pf>�Q�=E�DVn��%����w=6����:�7?�
Hfzn���ë��7q ����������F;vG���[����7g
D�%��������:}A1z�x!T���͹�k1�����}P�l4H9³���"�_���wWl�+;�������n��f�f���Av�Nھ=�VV��,U�v���碾��8?}���R�Rٕ:f�T�$w�9$�tHS� � �`��]�x$�F)�/�uN�'��n�nQ�Y�"wC��Y�r���J��=�?�ܐU��X��Y�_ �ҵ:Y�A���WJ��"�v4��LÓ.wq�܅?������st{����J��/�wM�r�b���SH�9���L�Ԗ��*�*�ʹ���Tz�U����AH���i|,�r��	B5oI�Lf(	��T=�TXAE�X9դ��"q�W�\^ɝ�vY�}�R/�uJ�y}A�(o��z%��s����K�%n�'±t�OO�=����Ζ��Aƅx5����>n��)旼���ؿ����S�� �B����_b��ߟ��� ������Q3�k�(3�B=
�	A�i�r7��Q����b'����[��� �2(̀�Fa+��{���Q�T{���=�kQ�~B�!�s���߷w� ��^�w��j���z|j��78�0n�P�|��2��3���ث��V�/��'���TY
#8A�I��mA����SUVbPV����=��H��H߸��t\�E[9e�%&7����w��}���>^����="����֥}{�������_���fp     