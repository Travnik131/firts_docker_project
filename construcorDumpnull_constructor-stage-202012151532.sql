PGDMP                          x            constructor-stage    11.0 (Debian 11.0-1.pgdg90+2)     13.1 (Ubuntu 13.1-1.pgdg18.04+1) v   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    constructor-stage    DATABASE     g   CREATE DATABASE "constructor-stage" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
 #   DROP DATABASE "constructor-stage";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3                       1259    17074    AccountHistories    TABLE       CREATE TABLE public."AccountHistories" (
    id integer NOT NULL,
    route character varying(255),
    method character varying(255),
    url text,
    info jsonb,
    "accountId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 &   DROP TABLE public."AccountHistories";
       public            postgres    false    3                       1259    17072    AccountHistories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AccountHistories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AccountHistories_id_seq";
       public          postgres    false    3    276            �           0    0    AccountHistories_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AccountHistories_id_seq" OWNED BY public."AccountHistories".id;
          public          postgres    false    275            �            1259    16392    Accounts    TABLE     �  CREATE TABLE public."Accounts" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    "accountName" character varying(255),
    "hashedPassword" character varying(255) NOT NULL,
    salt character varying(255) NOT NULL,
    phone character varying(255),
    type character varying(255),
    "lastLogin" timestamp with time zone,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "permissionId" integer
);
    DROP TABLE public."Accounts";
       public            postgres    false    3            �            1259    16390    Accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Accounts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Accounts_id_seq";
       public          postgres    false    3    198            �           0    0    Accounts_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Accounts_id_seq" OWNED BY public."Accounts".id;
          public          postgres    false    197            �            1259    16405 
   Achivments    TABLE     �   CREATE TABLE public."Achivments" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "fileId" integer
);
     DROP TABLE public."Achivments";
       public            postgres    false    3            �            1259    16403    Achivments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Achivments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Achivments_id_seq";
       public          postgres    false    200    3            �           0    0    Achivments_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Achivments_id_seq" OWNED BY public."Achivments".id;
          public          postgres    false    199                       1259    17049    AdActiveServices    TABLE     ,  CREATE TABLE public."AdActiveServices" (
    id integer NOT NULL,
    "adId" integer,
    "constructorServiceId" integer,
    "endDate" timestamp with time zone,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    active boolean DEFAULT true NOT NULL
);
 &   DROP TABLE public."AdActiveServices";
       public            postgres    false    3                       1259    17047    AdActiveServices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdActiveServices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AdActiveServices_id_seq";
       public          postgres    false    3    272            �           0    0    AdActiveServices_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."AdActiveServices_id_seq" OWNED BY public."AdActiveServices".id;
          public          postgres    false    271            �            1259    16763    AdCategories    TABLE     �   CREATE TABLE public."AdCategories" (
    id integer NOT NULL,
    "adId" integer,
    "categoryId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 "   DROP TABLE public."AdCategories";
       public            postgres    false    3            �            1259    16761    AdCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."AdCategories_id_seq";
       public          postgres    false    248    3            �           0    0    AdCategories_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."AdCategories_id_seq" OWNED BY public."AdCategories".id;
          public          postgres    false    247            �            1259    16781    AdTags    TABLE     �   CREATE TABLE public."AdTags" (
    id integer NOT NULL,
    "adId" integer,
    "tagId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public."AdTags";
       public            postgres    false    3            �            1259    16779    AdTags_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdTags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."AdTags_id_seq";
       public          postgres    false    250    3            �           0    0    AdTags_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."AdTags_id_seq" OWNED BY public."AdTags".id;
          public          postgres    false    249            �            1259    16448    AdViews    TABLE     �   CREATE TABLE public."AdViews" (
    id integer NOT NULL,
    favorite boolean DEFAULT false NOT NULL,
    "viewerId" integer NOT NULL,
    "adId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public."AdViews";
       public            postgres    false    3            �            1259    16446    AdViews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdViews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."AdViews_id_seq";
       public          postgres    false    206    3            �           0    0    AdViews_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."AdViews_id_seq" OWNED BY public."AdViews".id;
          public          postgres    false    205            �            1259    16416    Ads    TABLE       CREATE TABLE public."Ads" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    price real NOT NULL,
    nds boolean DEFAULT false,
    "measureUnits" character varying(255) DEFAULT 'unit'::character varying,
    delivery boolean,
    "isCompanyEmphasized" boolean DEFAULT false,
    status character varying(255) DEFAULT 'template'::character varying,
    state character varying(255),
    "valuesCount" integer,
    "allowMessages" boolean DEFAULT true,
    views integer DEFAULT 0,
    followers integer DEFAULT 0,
    location jsonb,
    services jsonb,
    address jsonb,
    region character varying(255),
    town character varying(255),
    deleted boolean DEFAULT false NOT NULL,
    "deletedDate" timestamp with time zone,
    "startDate" timestamp with time zone,
    "endDate" timestamp with time zone,
    "verificationDate" timestamp with time zone,
    "orderDate" timestamp with time zone,
    "videoUrl" character varying(255),
    vip boolean DEFAULT false NOT NULL,
    premium boolean DEFAULT false NOT NULL,
    highlighted boolean DEFAULT false NOT NULL,
    "formerPrice" real,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "companyId" integer,
    "userId" integer
);
    DROP TABLE public."Ads";
       public            postgres    false    3            �            1259    16414 
   Ads_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Ads_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Ads_id_seq";
       public          postgres    false    3    202            �           0    0 
   Ads_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."Ads_id_seq" OWNED BY public."Ads".id;
          public          postgres    false    201            �            1259    16438    AdvertisingTokens    TABLE     `  CREATE TABLE public."AdvertisingTokens" (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    total integer DEFAULT 0,
    active integer DEFAULT 0,
    expiration timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "constructorServicesId" integer
);
 '   DROP TABLE public."AdvertisingTokens";
       public            postgres    false    3            �            1259    16436    AdvertisingTokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AdvertisingTokens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."AdvertisingTokens_id_seq";
       public          postgres    false    204    3            �           0    0    AdvertisingTokens_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."AdvertisingTokens_id_seq" OWNED BY public."AdvertisingTokens".id;
          public          postgres    false    203                       1259    16934    ArticleCategories    TABLE     �   CREATE TABLE public."ArticleCategories" (
    id integer NOT NULL,
    "articleId" integer,
    "blogCategoryId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 '   DROP TABLE public."ArticleCategories";
       public            postgres    false    3                       1259    16932    ArticleCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ArticleCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ArticleCategories_id_seq";
       public          postgres    false    3    268            �           0    0    ArticleCategories_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ArticleCategories_id_seq" OWNED BY public."ArticleCategories".id;
          public          postgres    false    267                       1259    16914    Articles    TABLE       CREATE TABLE public."Articles" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    content text,
    deleted boolean DEFAULT false NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public."Articles";
       public            postgres    false    3                       1259    16912    Articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Articles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Articles_id_seq";
       public          postgres    false    264    3            �           0    0    Articles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Articles_id_seq" OWNED BY public."Articles".id;
          public          postgres    false    263            
           1259    16926    BlogCategories    TABLE       CREATE TABLE public."BlogCategories" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    level integer NOT NULL,
    parent integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public."BlogCategories";
       public            postgres    false    3            	           1259    16924    BlogCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."BlogCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."BlogCategories_id_seq";
       public          postgres    false    266    3            �           0    0    BlogCategories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."BlogCategories_id_seq" OWNED BY public."BlogCategories".id;
          public          postgres    false    265            �            1259    16462 
   Categories    TABLE     �   CREATE TABLE public."Categories" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    level integer NOT NULL,
    parent integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
     DROP TABLE public."Categories";
       public            postgres    false    3            �            1259    16460    Categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categories_id_seq";
       public          postgres    false    208    3            �           0    0    Categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;
          public          postgres    false    207                       1259    17063    Cities    TABLE     
  CREATE TABLE public."Cities" (
    id integer NOT NULL,
    town character varying(255) NOT NULL,
    region character varying(255) NOT NULL,
    lat real NOT NULL,
    lon real NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone
);
    DROP TABLE public."Cities";
       public            postgres    false    3                       1259    17061    Cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Cities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Cities_id_seq";
       public          postgres    false    3    274            �           0    0    Cities_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Cities_id_seq" OWNED BY public."Cities".id;
          public          postgres    false    273            �            1259    16470 	   Companies    TABLE     d  CREATE TABLE public."Companies" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    email character varying(255),
    region character varying(255),
    town character varying(255),
    site character varying(255),
    views integer DEFAULT 0,
    followers integer DEFAULT 0,
    logo character varying(255),
    "isVerified" boolean DEFAULT false,
    "isEmailVerified" boolean DEFAULT false,
    "lawAddress" character varying(255),
    address character varying(255),
    location jsonb,
    "paymentsInfo" jsonb,
    settings jsonb,
    "verificationDate" timestamp with time zone,
    "infoEncrypted" text,
    deleted boolean DEFAULT false NOT NULL,
    "deletedDate" timestamp with time zone,
    "formerOwner" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public."Companies";
       public            postgres    false    3            �            1259    16468    Companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Companies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Companies_id_seq";
       public          postgres    false    3    210            �           0    0    Companies_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Companies_id_seq" OWNED BY public."Companies".id;
          public          postgres    false    209            �            1259    16488    CompanyActiveServices    TABLE     �   CREATE TABLE public."CompanyActiveServices" (
    id integer NOT NULL,
    "appServiceId" integer NOT NULL,
    "companyId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 +   DROP TABLE public."CompanyActiveServices";
       public            postgres    false    3            �            1259    16486    CompanyActiveServices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CompanyActiveServices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."CompanyActiveServices_id_seq";
       public          postgres    false    212    3            �           0    0    CompanyActiveServices_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."CompanyActiveServices_id_seq" OWNED BY public."CompanyActiveServices".id;
          public          postgres    false    211            �            1259    16799    CompanyCategories    TABLE     �   CREATE TABLE public."CompanyCategories" (
    id integer NOT NULL,
    "companyId" integer,
    "categoryId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 '   DROP TABLE public."CompanyCategories";
       public            postgres    false    3            �            1259    16797    CompanyCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CompanyCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."CompanyCategories_id_seq";
       public          postgres    false    3    252            �           0    0    CompanyCategories_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."CompanyCategories_id_seq" OWNED BY public."CompanyCategories".id;
          public          postgres    false    251            �            1259    16501    CompanyViews    TABLE       CREATE TABLE public."CompanyViews" (
    id integer NOT NULL,
    favorite boolean DEFAULT false NOT NULL,
    "viewerId" integer NOT NULL,
    "companyId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 "   DROP TABLE public."CompanyViews";
       public            postgres    false    3            �            1259    16499    CompanyViews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."CompanyViews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."CompanyViews_id_seq";
       public          postgres    false    214    3            �           0    0    CompanyViews_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."CompanyViews_id_seq" OWNED BY public."CompanyViews".id;
          public          postgres    false    213            �            1259    16659    ConstructorServices    TABLE     �  CREATE TABLE public."ConstructorServices" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    "shortDescription" text,
    description text,
    image character varying(255),
    price real,
    duration jsonb,
    settings jsonb,
    type character varying(255) DEFAULT 'standard'::character varying,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 )   DROP TABLE public."ConstructorServices";
       public            postgres    false    3            �            1259    16657    ConstructorServices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ConstructorServices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."ConstructorServices_id_seq";
       public          postgres    false    234    3            �           0    0    ConstructorServices_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."ConstructorServices_id_seq" OWNED BY public."ConstructorServices".id;
          public          postgres    false    233            �            1259    16515    Discussions    TABLE     u  CREATE TABLE public."Discussions" (
    id integer NOT NULL,
    type character varying(255),
    header character varying(255),
    "ownerType" character varying(255),
    info jsonb,
    "adId" integer,
    "companyId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "fileId" integer,
    "creatorId" integer
);
 !   DROP TABLE public."Discussions";
       public            postgres    false    3            �            1259    16513    Discussions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Discussions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Discussions_id_seq";
       public          postgres    false    3    216            �           0    0    Discussions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Discussions_id_seq" OWNED BY public."Discussions".id;
          public          postgres    false    215            �            1259    16552    Files    TABLE     N  CREATE TABLE public."Files" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    size integer DEFAULT 0,
    "mediaType" character varying(255),
    type character varying(255),
    private boolean DEFAULT false,
    "ownerType" character varying(255),
    url character varying(255),
    key character varying(255),
    "adId" integer,
    "companyId" integer,
    "discussionId" integer,
    "accountId" integer,
    "achivmentId" integer,
    "messageId" integer,
    deleted boolean DEFAULT false NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "userId" integer,
    "ticketId" integer,
    "constructorServiceId" integer,
    "knowledgeArticleId" integer,
    "articleId" integer,
    "knowledgeCategoryId" integer,
    "orderDate" timestamp with time zone
);
    DROP TABLE public."Files";
       public            postgres    false    3            �            1259    16550    Files_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Files_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Files_id_seq";
       public          postgres    false    220    3            �           0    0    Files_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Files_id_seq" OWNED BY public."Files".id;
          public          postgres    false    219            �            1259    16596    Invites    TABLE       CREATE TABLE public."Invites" (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    "companyId" integer,
    "inviterId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public."Invites";
       public            postgres    false    3            �            1259    16594    Invites_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Invites_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Invites_id_seq";
       public          postgres    false    222    3            �           0    0    Invites_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Invites_id_seq" OWNED BY public."Invites".id;
          public          postgres    false    221                        1259    16842    KnowledgeArticleCategories    TABLE     �   CREATE TABLE public."KnowledgeArticleCategories" (
    id integer NOT NULL,
    "knowledgeArticleId" integer,
    "knowledgeCategoryId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 0   DROP TABLE public."KnowledgeArticleCategories";
       public            postgres    false    3            �            1259    16840 !   KnowledgeArticleCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."KnowledgeArticleCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."KnowledgeArticleCategories_id_seq";
       public          postgres    false    256    3            �           0    0 !   KnowledgeArticleCategories_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."KnowledgeArticleCategories_id_seq" OWNED BY public."KnowledgeArticleCategories".id;
          public          postgres    false    255            �            1259    16609    KnowledgeArticles    TABLE       CREATE TABLE public."KnowledgeArticles" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    content text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "viewsCount" integer DEFAULT 0
);
 '   DROP TABLE public."KnowledgeArticles";
       public            postgres    false    3            �            1259    16607    KnowledgeArticles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."KnowledgeArticles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."KnowledgeArticles_id_seq";
       public          postgres    false    3    224            �           0    0    KnowledgeArticles_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."KnowledgeArticles_id_seq" OWNED BY public."KnowledgeArticles".id;
          public          postgres    false    223            �            1259    16620    KnowledgeCategories    TABLE     �   CREATE TABLE public."KnowledgeCategories" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    level integer,
    parent integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 )   DROP TABLE public."KnowledgeCategories";
       public            postgres    false    3            �            1259    16618    KnowledgeCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."KnowledgeCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."KnowledgeCategories_id_seq";
       public          postgres    false    226    3            �           0    0    KnowledgeCategories_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."KnowledgeCategories_id_seq" OWNED BY public."KnowledgeCategories".id;
          public          postgres    false    225                       1259    17090    MessageViews    TABLE       CREATE TABLE public."MessageViews" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "messageId" integer NOT NULL,
    "discussionId" integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 "   DROP TABLE public."MessageViews";
       public            postgres    false    3                       1259    17088    MessageViews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."MessageViews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."MessageViews_id_seq";
       public          postgres    false    3    278            �           0    0    MessageViews_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."MessageViews_id_seq" OWNED BY public."MessageViews".id;
          public          postgres    false    277            �            1259    16536    Messages    TABLE     �   CREATE TABLE public."Messages" (
    id integer NOT NULL,
    text text NOT NULL,
    "discussionId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public."Messages";
       public            postgres    false    3            �            1259    16534    Messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Messages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Messages_id_seq";
       public          postgres    false    3    218            �           0    0    Messages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Messages_id_seq" OWNED BY public."Messages".id;
          public          postgres    false    217                       1259    16860    Notifications    TABLE     T  CREATE TABLE public."Notifications" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    viewed boolean DEFAULT false,
    metadata jsonb DEFAULT '{}'::jsonb,
    "userId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 #   DROP TABLE public."Notifications";
       public            postgres    false    3                       1259    16858    Notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notifications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Notifications_id_seq";
       public          postgres    false    3    258            �           0    0    Notifications_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Notifications_id_seq" OWNED BY public."Notifications".id;
          public          postgres    false    257            �            1259    16628    PaymentMethods    TABLE     �   CREATE TABLE public."PaymentMethods" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 $   DROP TABLE public."PaymentMethods";
       public            postgres    false    3            �            1259    16626    PaymentMethods_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PaymentMethods_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."PaymentMethods_id_seq";
       public          postgres    false    228    3            �           0    0    PaymentMethods_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."PaymentMethods_id_seq" OWNED BY public."PaymentMethods".id;
          public          postgres    false    227            �            1259    16639    Permissions    TABLE     �   CREATE TABLE public."Permissions" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    actions jsonb NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Permissions";
       public            postgres    false    3            �            1259    16637    Permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Permissions_id_seq";
       public          postgres    false    230    3            �           0    0    Permissions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Permissions_id_seq" OWNED BY public."Permissions".id;
          public          postgres    false    229            �            1259    16650    ProfileViews    TABLE       CREATE TABLE public."ProfileViews" (
    id integer NOT NULL,
    followed boolean DEFAULT false NOT NULL,
    "viewerId" integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "userId" integer
);
 "   DROP TABLE public."ProfileViews";
       public            postgres    false    3            �            1259    16648    ProfileViews_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProfileViews_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ProfileViews_id_seq";
       public          postgres    false    232    3            �           0    0    ProfileViews_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ProfileViews_id_seq" OWNED BY public."ProfileViews".id;
          public          postgres    false    231                       1259    17140    SequelizeData    TABLE     R   CREATE TABLE public."SequelizeData" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeData";
       public            postgres    false    3            �            1259    16385    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public            postgres    false    3                       1259    16878    TagCategories    TABLE     �   CREATE TABLE public."TagCategories" (
    id integer NOT NULL,
    "categoryId" integer,
    "tagId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 #   DROP TABLE public."TagCategories";
       public            postgres    false    3                       1259    16876    TagCategories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TagCategories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."TagCategories_id_seq";
       public          postgres    false    260    3            �           0    0    TagCategories_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."TagCategories_id_seq" OWNED BY public."TagCategories".id;
          public          postgres    false    259            �            1259    16671    Tags    TABLE     �   CREATE TABLE public."Tags" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
    DROP TABLE public."Tags";
       public            postgres    false    3            �            1259    16669    Tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tags_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Tags_id_seq";
       public          postgres    false    236    3            �           0    0    Tags_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Tags_id_seq" OWNED BY public."Tags".id;
          public          postgres    false    235            �            1259    16683    Tickets    TABLE     �  CREATE TABLE public."Tickets" (
    id integer NOT NULL,
    subject character varying(255) NOT NULL,
    department character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'open'::character varying,
    "lastReply" character varying(255) NOT NULL,
    messages jsonb DEFAULT '"[]"'::jsonb,
    email character varying(255),
    phone character varying(255),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public."Tickets";
       public            postgres    false    3            �            1259    16681    Tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tickets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Tickets_id_seq";
       public          postgres    false    238    3            �           0    0    Tickets_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Tickets_id_seq" OWNED BY public."Tickets".id;
          public          postgres    false    237            �            1259    16696    Transactions    TABLE     	  CREATE TABLE public."Transactions" (
    id integer NOT NULL,
    "idempotenceKey" character varying(255),
    "yandexPaymentId" character varying(255),
    "paymentInfo" jsonb,
    amount real DEFAULT 0 NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    "adServices" jsonb,
    description character varying(255),
    "paymentMethod" character varying(255),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "userId" integer
);
 "   DROP TABLE public."Transactions";
       public            postgres    false    3            �            1259    16694    Transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Transactions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Transactions_id_seq";
       public          postgres    false    3    240            �           0    0    Transactions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Transactions_id_seq" OWNED BY public."Transactions".id;
          public          postgres    false    239            �            1259    16737    UserActiveServices    TABLE     �   CREATE TABLE public."UserActiveServices" (
    id integer NOT NULL,
    "appServiceId" integer NOT NULL,
    "userId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 (   DROP TABLE public."UserActiveServices";
       public            postgres    false    3            �            1259    16735    UserActiveServices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserActiveServices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."UserActiveServices_id_seq";
       public          postgres    false    3    244            �           0    0    UserActiveServices_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserActiveServices_id_seq" OWNED BY public."UserActiveServices".id;
          public          postgres    false    243                       1259    17116    UserBusinessServices    TABLE     !  CREATE TABLE public."UserBusinessServices" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "serviceId" integer NOT NULL,
    active character varying(255) DEFAULT false NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 *   DROP TABLE public."UserBusinessServices";
       public            postgres    false    3                       1259    17114    UserBusinessServices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserBusinessServices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."UserBusinessServices_id_seq";
       public          postgres    false    3    282            �           0    0    UserBusinessServices_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."UserBusinessServices_id_seq" OWNED BY public."UserBusinessServices".id;
          public          postgres    false    281                       1259    16896    UserCompanies    TABLE     �   CREATE TABLE public."UserCompanies" (
    id integer NOT NULL,
    "userId" integer,
    "companyId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 #   DROP TABLE public."UserCompanies";
       public            postgres    false    3                       1259    16894    UserCompanies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserCompanies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."UserCompanies_id_seq";
       public          postgres    false    3    262            �           0    0    UserCompanies_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."UserCompanies_id_seq" OWNED BY public."UserCompanies".id;
          public          postgres    false    261            �            1259    16817    UserDiscussions    TABLE     �  CREATE TABLE public."UserDiscussions" (
    id integer NOT NULL,
    "userId" integer,
    "discussionId" integer,
    deleted boolean DEFAULT false NOT NULL,
    note character varying(255),
    "spamReason" character varying(255),
    blocked boolean DEFAULT false NOT NULL,
    system boolean DEFAULT false NOT NULL,
    favorite boolean DEFAULT false NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 %   DROP TABLE public."UserDiscussions";
       public            postgres    false    3            �            1259    16815    UserDiscussions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserDiscussions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."UserDiscussions_id_seq";
       public          postgres    false    3    254            �           0    0    UserDiscussions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."UserDiscussions_id_seq" OWNED BY public."UserDiscussions".id;
          public          postgres    false    253            �            1259    16750    UserViewsHistories    TABLE        CREATE TABLE public."UserViewsHistories" (
    id integer NOT NULL,
    "userId" integer,
    "adId" integer,
    "profileId" integer,
    "companyId" integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 (   DROP TABLE public."UserViewsHistories";
       public            postgres    false    3            �            1259    16748    UserViewsHistories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."UserViewsHistories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."UserViewsHistories_id_seq";
       public          postgres    false    3    246            �           0    0    UserViewsHistories_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."UserViewsHistories_id_seq" OWNED BY public."UserViewsHistories".id;
          public          postgres    false    245            �            1259    16709    Users    TABLE     �  CREATE TABLE public."Users" (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "middleName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    email character varying(255),
    region character varying(255),
    town character varying(255),
    "hashedPassword" character varying(255) NOT NULL,
    salt character varying(255) NOT NULL,
    phone character varying(255),
    description text,
    "isVerified" boolean DEFAULT false,
    "isPhoneVerified" boolean DEFAULT false,
    "isEmailVerified" boolean DEFAULT false,
    avatar character varying(255),
    status character varying(255) DEFAULT 'active'::character varying,
    location jsonb,
    views integer DEFAULT 0,
    followers integer DEFAULT 0,
    settings jsonb DEFAULT '{}'::jsonb,
    "infoEncrypted" text,
    achivments jsonb,
    favorites jsonb,
    "permissionId" integer,
    "currentCompanyId" integer,
    deleted boolean DEFAULT false NOT NULL,
    "deletedDate" timestamp with time zone,
    "verificationDate" timestamp with time zone,
    "wasOnline" timestamp with time zone,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    balance numeric DEFAULT 0 NOT NULL
);
    DROP TABLE public."Users";
       public            postgres    false    3            �            1259    16707    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    3    242            �           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    241                       1259    17108    VerificationRequests    TABLE     �   CREATE TABLE public."VerificationRequests" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "companyId" integer,
    type character varying(255),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 *   DROP TABLE public."VerificationRequests";
       public            postgres    false    3                       1259    17106    VerificationRequests_id_seq    SEQUENCE     �   CREATE SEQUENCE public."VerificationRequests_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."VerificationRequests_id_seq";
       public          postgres    false    3    280            �           0    0    VerificationRequests_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."VerificationRequests_id_seq" OWNED BY public."VerificationRequests".id;
          public          postgres    false    279                       1259    17037    VerifyTokens    TABLE     >  CREATE TABLE public."VerifyTokens" (
    id integer NOT NULL,
    token character varying(255) NOT NULL,
    type character varying(255) DEFAULT 'authCode'::character varying NOT NULL,
    "linkedRecord" integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);
 "   DROP TABLE public."VerifyTokens";
       public            postgres    false    3                       1259    17035    VerifyTokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public."VerifyTokens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."VerifyTokens_id_seq";
       public          postgres    false    270    3            �           0    0    VerifyTokens_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."VerifyTokens_id_seq" OWNED BY public."VerifyTokens".id;
          public          postgres    false    269            $           2604    17077    AccountHistories id    DEFAULT     ~   ALTER TABLE ONLY public."AccountHistories" ALTER COLUMN id SET DEFAULT nextval('public."AccountHistories_id_seq"'::regclass);
 D   ALTER TABLE public."AccountHistories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    276    276            �           2604    16395    Accounts id    DEFAULT     n   ALTER TABLE ONLY public."Accounts" ALTER COLUMN id SET DEFAULT nextval('public."Accounts_id_seq"'::regclass);
 <   ALTER TABLE public."Accounts" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    197    198            �           2604    16408    Achivments id    DEFAULT     r   ALTER TABLE ONLY public."Achivments" ALTER COLUMN id SET DEFAULT nextval('public."Achivments_id_seq"'::regclass);
 >   ALTER TABLE public."Achivments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    199    200            !           2604    17052    AdActiveServices id    DEFAULT     ~   ALTER TABLE ONLY public."AdActiveServices" ALTER COLUMN id SET DEFAULT nextval('public."AdActiveServices_id_seq"'::regclass);
 D   ALTER TABLE public."AdActiveServices" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271    272                       2604    16766    AdCategories id    DEFAULT     v   ALTER TABLE ONLY public."AdCategories" ALTER COLUMN id SET DEFAULT nextval('public."AdCategories_id_seq"'::regclass);
 @   ALTER TABLE public."AdCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248                       2604    16784 	   AdTags id    DEFAULT     j   ALTER TABLE ONLY public."AdTags" ALTER COLUMN id SET DEFAULT nextval('public."AdTags_id_seq"'::regclass);
 :   ALTER TABLE public."AdTags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            �           2604    16451 
   AdViews id    DEFAULT     l   ALTER TABLE ONLY public."AdViews" ALTER COLUMN id SET DEFAULT nextval('public."AdViews_id_seq"'::regclass);
 ;   ALTER TABLE public."AdViews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            �           2604    16419    Ads id    DEFAULT     d   ALTER TABLE ONLY public."Ads" ALTER COLUMN id SET DEFAULT nextval('public."Ads_id_seq"'::regclass);
 7   ALTER TABLE public."Ads" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            �           2604    16441    AdvertisingTokens id    DEFAULT     �   ALTER TABLE ONLY public."AdvertisingTokens" ALTER COLUMN id SET DEFAULT nextval('public."AdvertisingTokens_id_seq"'::regclass);
 E   ALTER TABLE public."AdvertisingTokens" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204                       2604    16937    ArticleCategories id    DEFAULT     �   ALTER TABLE ONLY public."ArticleCategories" ALTER COLUMN id SET DEFAULT nextval('public."ArticleCategories_id_seq"'::regclass);
 E   ALTER TABLE public."ArticleCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268                       2604    16917    Articles id    DEFAULT     n   ALTER TABLE ONLY public."Articles" ALTER COLUMN id SET DEFAULT nextval('public."Articles_id_seq"'::regclass);
 <   ALTER TABLE public."Articles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264                       2604    16929    BlogCategories id    DEFAULT     z   ALTER TABLE ONLY public."BlogCategories" ALTER COLUMN id SET DEFAULT nextval('public."BlogCategories_id_seq"'::regclass);
 B   ALTER TABLE public."BlogCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            �           2604    16465    Categories id    DEFAULT     r   ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);
 >   ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            #           2604    17066 	   Cities id    DEFAULT     j   ALTER TABLE ONLY public."Cities" ALTER COLUMN id SET DEFAULT nextval('public."Cities_id_seq"'::regclass);
 :   ALTER TABLE public."Cities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    273    274            �           2604    16473    Companies id    DEFAULT     p   ALTER TABLE ONLY public."Companies" ALTER COLUMN id SET DEFAULT nextval('public."Companies_id_seq"'::regclass);
 =   ALTER TABLE public."Companies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    16491    CompanyActiveServices id    DEFAULT     �   ALTER TABLE ONLY public."CompanyActiveServices" ALTER COLUMN id SET DEFAULT nextval('public."CompanyActiveServices_id_seq"'::regclass);
 I   ALTER TABLE public."CompanyActiveServices" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                       2604    16802    CompanyCategories id    DEFAULT     �   ALTER TABLE ONLY public."CompanyCategories" ALTER COLUMN id SET DEFAULT nextval('public."CompanyCategories_id_seq"'::regclass);
 E   ALTER TABLE public."CompanyCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            �           2604    16504    CompanyViews id    DEFAULT     v   ALTER TABLE ONLY public."CompanyViews" ALTER COLUMN id SET DEFAULT nextval('public."CompanyViews_id_seq"'::regclass);
 @   ALTER TABLE public."CompanyViews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16662    ConstructorServices id    DEFAULT     �   ALTER TABLE ONLY public."ConstructorServices" ALTER COLUMN id SET DEFAULT nextval('public."ConstructorServices_id_seq"'::regclass);
 G   ALTER TABLE public."ConstructorServices" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    16518    Discussions id    DEFAULT     t   ALTER TABLE ONLY public."Discussions" ALTER COLUMN id SET DEFAULT nextval('public."Discussions_id_seq"'::regclass);
 ?   ALTER TABLE public."Discussions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16555    Files id    DEFAULT     h   ALTER TABLE ONLY public."Files" ALTER COLUMN id SET DEFAULT nextval('public."Files_id_seq"'::regclass);
 9   ALTER TABLE public."Files" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16599 
   Invites id    DEFAULT     l   ALTER TABLE ONLY public."Invites" ALTER COLUMN id SET DEFAULT nextval('public."Invites_id_seq"'::regclass);
 ;   ALTER TABLE public."Invites" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222                       2604    16845    KnowledgeArticleCategories id    DEFAULT     �   ALTER TABLE ONLY public."KnowledgeArticleCategories" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeArticleCategories_id_seq"'::regclass);
 N   ALTER TABLE public."KnowledgeArticleCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            �           2604    16612    KnowledgeArticles id    DEFAULT     �   ALTER TABLE ONLY public."KnowledgeArticles" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeArticles_id_seq"'::regclass);
 E   ALTER TABLE public."KnowledgeArticles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16623    KnowledgeCategories id    DEFAULT     �   ALTER TABLE ONLY public."KnowledgeCategories" ALTER COLUMN id SET DEFAULT nextval('public."KnowledgeCategories_id_seq"'::regclass);
 G   ALTER TABLE public."KnowledgeCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            %           2604    17093    MessageViews id    DEFAULT     v   ALTER TABLE ONLY public."MessageViews" ALTER COLUMN id SET DEFAULT nextval('public."MessageViews_id_seq"'::regclass);
 @   ALTER TABLE public."MessageViews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    277    278            �           2604    16539    Messages id    DEFAULT     n   ALTER TABLE ONLY public."Messages" ALTER COLUMN id SET DEFAULT nextval('public."Messages_id_seq"'::regclass);
 <   ALTER TABLE public."Messages" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    16863    Notifications id    DEFAULT     x   ALTER TABLE ONLY public."Notifications" ALTER COLUMN id SET DEFAULT nextval('public."Notifications_id_seq"'::regclass);
 A   ALTER TABLE public."Notifications" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            �           2604    16631    PaymentMethods id    DEFAULT     z   ALTER TABLE ONLY public."PaymentMethods" ALTER COLUMN id SET DEFAULT nextval('public."PaymentMethods_id_seq"'::regclass);
 B   ALTER TABLE public."PaymentMethods" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16642    Permissions id    DEFAULT     t   ALTER TABLE ONLY public."Permissions" ALTER COLUMN id SET DEFAULT nextval('public."Permissions_id_seq"'::regclass);
 ?   ALTER TABLE public."Permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    16653    ProfileViews id    DEFAULT     v   ALTER TABLE ONLY public."ProfileViews" ALTER COLUMN id SET DEFAULT nextval('public."ProfileViews_id_seq"'::regclass);
 @   ALTER TABLE public."ProfileViews" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232                       2604    16881    TagCategories id    DEFAULT     x   ALTER TABLE ONLY public."TagCategories" ALTER COLUMN id SET DEFAULT nextval('public."TagCategories_id_seq"'::regclass);
 A   ALTER TABLE public."TagCategories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            �           2604    16674    Tags id    DEFAULT     f   ALTER TABLE ONLY public."Tags" ALTER COLUMN id SET DEFAULT nextval('public."Tags_id_seq"'::regclass);
 8   ALTER TABLE public."Tags" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    16686 
   Tickets id    DEFAULT     l   ALTER TABLE ONLY public."Tickets" ALTER COLUMN id SET DEFAULT nextval('public."Tickets_id_seq"'::regclass);
 ;   ALTER TABLE public."Tickets" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    16699    Transactions id    DEFAULT     v   ALTER TABLE ONLY public."Transactions" ALTER COLUMN id SET DEFAULT nextval('public."Transactions_id_seq"'::regclass);
 @   ALTER TABLE public."Transactions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240                       2604    16740    UserActiveServices id    DEFAULT     �   ALTER TABLE ONLY public."UserActiveServices" ALTER COLUMN id SET DEFAULT nextval('public."UserActiveServices_id_seq"'::regclass);
 F   ALTER TABLE public."UserActiveServices" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            '           2604    17119    UserBusinessServices id    DEFAULT     �   ALTER TABLE ONLY public."UserBusinessServices" ALTER COLUMN id SET DEFAULT nextval('public."UserBusinessServices_id_seq"'::regclass);
 H   ALTER TABLE public."UserBusinessServices" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    282    282                       2604    16899    UserCompanies id    DEFAULT     x   ALTER TABLE ONLY public."UserCompanies" ALTER COLUMN id SET DEFAULT nextval('public."UserCompanies_id_seq"'::regclass);
 A   ALTER TABLE public."UserCompanies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262                       2604    16820    UserDiscussions id    DEFAULT     |   ALTER TABLE ONLY public."UserDiscussions" ALTER COLUMN id SET DEFAULT nextval('public."UserDiscussions_id_seq"'::regclass);
 C   ALTER TABLE public."UserDiscussions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254                       2604    16753    UserViewsHistories id    DEFAULT     �   ALTER TABLE ONLY public."UserViewsHistories" ALTER COLUMN id SET DEFAULT nextval('public."UserViewsHistories_id_seq"'::regclass);
 F   ALTER TABLE public."UserViewsHistories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246                       2604    16712    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            &           2604    17111    VerificationRequests id    DEFAULT     �   ALTER TABLE ONLY public."VerificationRequests" ALTER COLUMN id SET DEFAULT nextval('public."VerificationRequests_id_seq"'::regclass);
 H   ALTER TABLE public."VerificationRequests" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    279    280                       2604    17040    VerifyTokens id    DEFAULT     v   ALTER TABLE ONLY public."VerifyTokens" ALTER COLUMN id SET DEFAULT nextval('public."VerifyTokens_id_seq"'::regclass);
 @   ALTER TABLE public."VerifyTokens" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            �          0    17074    AccountHistories 
   TABLE DATA           i   COPY public."AccountHistories" (id, route, method, url, info, "accountId", created, updated) FROM stdin;
    public          postgres    false    276            ?          0    16392    Accounts 
   TABLE DATA           �   COPY public."Accounts" (id, email, "accountName", "hashedPassword", salt, phone, type, "lastLogin", created, updated, "permissionId") FROM stdin;
    public          postgres    false    198            A          0    16405 
   Achivments 
   TABLE DATA           Z   COPY public."Achivments" (id, title, description, created, updated, "fileId") FROM stdin;
    public          postgres    false    200            �          0    17049    AdActiveServices 
   TABLE DATA           u   COPY public."AdActiveServices" (id, "adId", "constructorServiceId", "endDate", created, updated, active) FROM stdin;
    public          postgres    false    272            q          0    16763    AdCategories 
   TABLE DATA           T   COPY public."AdCategories" (id, "adId", "categoryId", created, updated) FROM stdin;
    public          postgres    false    248            s          0    16781    AdTags 
   TABLE DATA           I   COPY public."AdTags" (id, "adId", "tagId", created, updated) FROM stdin;
    public          postgres    false    250            G          0    16448    AdViews 
   TABLE DATA           W   COPY public."AdViews" (id, favorite, "viewerId", "adId", created, updated) FROM stdin;
    public          postgres    false    206            C          0    16416    Ads 
   TABLE DATA           �  COPY public."Ads" (id, title, description, price, nds, "measureUnits", delivery, "isCompanyEmphasized", status, state, "valuesCount", "allowMessages", views, followers, location, services, address, region, town, deleted, "deletedDate", "startDate", "endDate", "verificationDate", "orderDate", "videoUrl", vip, premium, highlighted, "formerPrice", created, updated, "companyId", "userId") FROM stdin;
    public          postgres    false    202            E          0    16438    AdvertisingTokens 
   TABLE DATA           ~   COPY public."AdvertisingTokens" (id, token, total, active, expiration, created, updated, "constructorServicesId") FROM stdin;
    public          postgres    false    204            �          0    16934    ArticleCategories 
   TABLE DATA           b   COPY public."ArticleCategories" (id, "articleId", "blogCategoryId", created, updated) FROM stdin;
    public          postgres    false    268            �          0    16914    Articles 
   TABLE DATA           `   COPY public."Articles" (id, title, description, content, deleted, created, updated) FROM stdin;
    public          postgres    false    264            �          0    16926    BlogCategories 
   TABLE DATA           V   COPY public."BlogCategories" (id, title, level, parent, created, updated) FROM stdin;
    public          postgres    false    266            I          0    16462 
   Categories 
   TABLE DATA           R   COPY public."Categories" (id, title, level, parent, created, updated) FROM stdin;
    public          postgres    false    208            �          0    17063    Cities 
   TABLE DATA           P   COPY public."Cities" (id, town, region, lat, lon, created, updated) FROM stdin;
    public          postgres    false    274            K          0    16470 	   Companies 
   TABLE DATA           *  COPY public."Companies" (id, title, description, email, region, town, site, views, followers, logo, "isVerified", "isEmailVerified", "lawAddress", address, location, "paymentsInfo", settings, "verificationDate", "infoEncrypted", deleted, "deletedDate", "formerOwner", created, updated) FROM stdin;
    public          postgres    false    210            M          0    16488    CompanyActiveServices 
   TABLE DATA           d   COPY public."CompanyActiveServices" (id, "appServiceId", "companyId", created, updated) FROM stdin;
    public          postgres    false    212            u          0    16799    CompanyCategories 
   TABLE DATA           ^   COPY public."CompanyCategories" (id, "companyId", "categoryId", created, updated) FROM stdin;
    public          postgres    false    252            O          0    16501    CompanyViews 
   TABLE DATA           a   COPY public."CompanyViews" (id, favorite, "viewerId", "companyId", created, updated) FROM stdin;
    public          postgres    false    214            c          0    16659    ConstructorServices 
   TABLE DATA           �   COPY public."ConstructorServices" (id, title, slug, "shortDescription", description, image, price, duration, settings, type, created, updated) FROM stdin;
    public          postgres    false    234            Q          0    16515    Discussions 
   TABLE DATA           �   COPY public."Discussions" (id, type, header, "ownerType", info, "adId", "companyId", created, updated, "fileId", "creatorId") FROM stdin;
    public          postgres    false    216            U          0    16552    Files 
   TABLE DATA           C  COPY public."Files" (id, title, size, "mediaType", type, private, "ownerType", url, key, "adId", "companyId", "discussionId", "accountId", "achivmentId", "messageId", deleted, created, updated, "userId", "ticketId", "constructorServiceId", "knowledgeArticleId", "articleId", "knowledgeCategoryId", "orderDate") FROM stdin;
    public          postgres    false    220            W          0    16596    Invites 
   TABLE DATA           d   COPY public."Invites" (id, token, "companyId", "inviterId", created, updated, "userId") FROM stdin;
    public          postgres    false    222            y          0    16842    KnowledgeArticleCategories 
   TABLE DATA           y   COPY public."KnowledgeArticleCategories" (id, "knowledgeArticleId", "knowledgeCategoryId", created, updated) FROM stdin;
    public          postgres    false    256            Y          0    16609    KnowledgeArticles 
   TABLE DATA           n   COPY public."KnowledgeArticles" (id, title, description, content, created, updated, "viewsCount") FROM stdin;
    public          postgres    false    224            [          0    16620    KnowledgeCategories 
   TABLE DATA           [   COPY public."KnowledgeCategories" (id, title, level, parent, created, updated) FROM stdin;
    public          postgres    false    226            �          0    17090    MessageViews 
   TABLE DATA           e   COPY public."MessageViews" (id, "userId", "messageId", "discussionId", created, updated) FROM stdin;
    public          postgres    false    278            S          0    16536    Messages 
   TABLE DATA           Z   COPY public."Messages" (id, text, "discussionId", created, updated, "userId") FROM stdin;
    public          postgres    false    218            {          0    16860    Notifications 
   TABLE DATA           h   COPY public."Notifications" (id, title, type, viewed, metadata, "userId", created, updated) FROM stdin;
    public          postgres    false    258            ]          0    16628    PaymentMethods 
   TABLE DATA           T   COPY public."PaymentMethods" (id, title, description, created, updated) FROM stdin;
    public          postgres    false    228            _          0    16639    Permissions 
   TABLE DATA           M   COPY public."Permissions" (id, title, actions, created, updated) FROM stdin;
    public          postgres    false    230            a          0    16650    ProfileViews 
   TABLE DATA           ^   COPY public."ProfileViews" (id, followed, "viewerId", created, updated, "userId") FROM stdin;
    public          postgres    false    232            �          0    17140    SequelizeData 
   TABLE DATA           /   COPY public."SequelizeData" (name) FROM stdin;
    public          postgres    false    283            =          0    16385    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    196            }          0    16878    TagCategories 
   TABLE DATA           V   COPY public."TagCategories" (id, "categoryId", "tagId", created, updated) FROM stdin;
    public          postgres    false    260            e          0    16671    Tags 
   TABLE DATA           D   COPY public."Tags" (id, title, value, created, updated) FROM stdin;
    public          postgres    false    236            g          0    16683    Tickets 
   TABLE DATA           �   COPY public."Tickets" (id, subject, department, status, "lastReply", messages, email, phone, created, updated, "userId") FROM stdin;
    public          postgres    false    238            i          0    16696    Transactions 
   TABLE DATA           �   COPY public."Transactions" (id, "idempotenceKey", "yandexPaymentId", "paymentInfo", amount, status, "adServices", description, "paymentMethod", created, updated, "userId") FROM stdin;
    public          postgres    false    240            m          0    16737    UserActiveServices 
   TABLE DATA           ^   COPY public."UserActiveServices" (id, "appServiceId", "userId", created, updated) FROM stdin;
    public          postgres    false    244            �          0    17116    UserBusinessServices 
   TABLE DATA           e   COPY public."UserBusinessServices" (id, "userId", "serviceId", active, created, updated) FROM stdin;
    public          postgres    false    282                      0    16896    UserCompanies 
   TABLE DATA           V   COPY public."UserCompanies" (id, "userId", "companyId", created, updated) FROM stdin;
    public          postgres    false    262            w          0    16817    UserDiscussions 
   TABLE DATA           �   COPY public."UserDiscussions" (id, "userId", "discussionId", deleted, note, "spamReason", blocked, system, favorite, created, updated) FROM stdin;
    public          postgres    false    254            o          0    16750    UserViewsHistories 
   TABLE DATA           p   COPY public."UserViewsHistories" (id, "userId", "adId", "profileId", "companyId", created, updated) FROM stdin;
    public          postgres    false    246            k          0    16709    Users 
   TABLE DATA           �  COPY public."Users" (id, "firstName", "middleName", "lastName", email, region, town, "hashedPassword", salt, phone, description, "isVerified", "isPhoneVerified", "isEmailVerified", avatar, status, location, views, followers, settings, "infoEncrypted", achivments, favorites, "permissionId", "currentCompanyId", deleted, "deletedDate", "verificationDate", "wasOnline", created, updated, balance) FROM stdin;
    public          postgres    false    242            �          0    17108    VerificationRequests 
   TABLE DATA           c   COPY public."VerificationRequests" (id, "userId", "companyId", type, created, updated) FROM stdin;
    public          postgres    false    280            �          0    17037    VerifyTokens 
   TABLE DATA           [   COPY public."VerifyTokens" (id, token, type, "linkedRecord", created, updated) FROM stdin;
    public          postgres    false    270            �           0    0    AccountHistories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AccountHistories_id_seq"', 4, true);
          public          postgres    false    275            �           0    0    Accounts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Accounts_id_seq"', 1, true);
          public          postgres    false    197            �           0    0    Achivments_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Achivments_id_seq"', 1, false);
          public          postgres    false    199            �           0    0    AdActiveServices_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."AdActiveServices_id_seq"', 7, true);
          public          postgres    false    271            �           0    0    AdCategories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."AdCategories_id_seq"', 249, true);
          public          postgres    false    247            �           0    0    AdTags_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."AdTags_id_seq"', 1, false);
          public          postgres    false    249            �           0    0    AdViews_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."AdViews_id_seq"', 245, true);
          public          postgres    false    205            �           0    0 
   Ads_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Ads_id_seq"', 64, true);
          public          postgres    false    201            �           0    0    AdvertisingTokens_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."AdvertisingTokens_id_seq"', 1, false);
          public          postgres    false    203            �           0    0    ArticleCategories_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."ArticleCategories_id_seq"', 1, false);
          public          postgres    false    267            �           0    0    Articles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Articles_id_seq"', 1, false);
          public          postgres    false    263            �           0    0    BlogCategories_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."BlogCategories_id_seq"', 1, false);
          public          postgres    false    265            �           0    0    Categories_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Categories_id_seq"', 551, true);
          public          postgres    false    207            �           0    0    Cities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Cities_id_seq"', 1162, true);
          public          postgres    false    273            �           0    0    Companies_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Companies_id_seq"', 6, true);
          public          postgres    false    209            �           0    0    CompanyActiveServices_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."CompanyActiveServices_id_seq"', 1, false);
          public          postgres    false    211            �           0    0    CompanyCategories_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."CompanyCategories_id_seq"', 36, true);
          public          postgres    false    251            �           0    0    CompanyViews_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."CompanyViews_id_seq"', 29, true);
          public          postgres    false    213            �           0    0    ConstructorServices_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ConstructorServices_id_seq"', 9, true);
          public          postgres    false    233            �           0    0    Discussions_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Discussions_id_seq"', 32, true);
          public          postgres    false    215            �           0    0    Files_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Files_id_seq"', 125, true);
          public          postgres    false    219            �           0    0    Invites_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Invites_id_seq"', 4, true);
          public          postgres    false    221            �           0    0 !   KnowledgeArticleCategories_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."KnowledgeArticleCategories_id_seq"', 1, false);
          public          postgres    false    255            �           0    0    KnowledgeArticles_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."KnowledgeArticles_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    KnowledgeCategories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."KnowledgeCategories_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    MessageViews_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."MessageViews_id_seq"', 180, true);
          public          postgres    false    277            �           0    0    Messages_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Messages_id_seq"', 106, true);
          public          postgres    false    217            �           0    0    Notifications_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Notifications_id_seq"', 27, true);
          public          postgres    false    257            �           0    0    PaymentMethods_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."PaymentMethods_id_seq"', 1, false);
          public          postgres    false    227            �           0    0    Permissions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Permissions_id_seq"', 8, true);
          public          postgres    false    229            �           0    0    ProfileViews_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ProfileViews_id_seq"', 30, true);
          public          postgres    false    231            �           0    0    TagCategories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TagCategories_id_seq"', 1, false);
          public          postgres    false    259            �           0    0    Tags_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Tags_id_seq"', 2, true);
          public          postgres    false    235            �           0    0    Tickets_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Tickets_id_seq"', 13, true);
          public          postgres    false    237            �           0    0    Transactions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Transactions_id_seq"', 13, true);
          public          postgres    false    239            �           0    0    UserActiveServices_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."UserActiveServices_id_seq"', 1, false);
          public          postgres    false    243            �           0    0    UserBusinessServices_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."UserBusinessServices_id_seq"', 4, true);
          public          postgres    false    281            �           0    0    UserCompanies_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."UserCompanies_id_seq"', 10, true);
          public          postgres    false    261            �           0    0    UserDiscussions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."UserDiscussions_id_seq"', 64, true);
          public          postgres    false    253            �           0    0    UserViewsHistories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."UserViewsHistories_id_seq"', 308, true);
          public          postgres    false    245            �           0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 20, true);
          public          postgres    false    241            �           0    0    VerificationRequests_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."VerificationRequests_id_seq"', 20, true);
          public          postgres    false    279            �           0    0    VerifyTokens_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."VerifyTokens_id_seq"', 41, true);
          public          postgres    false    269            �           2606    17082 &   AccountHistories AccountHistories_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AccountHistories"
    ADD CONSTRAINT "AccountHistories_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AccountHistories" DROP CONSTRAINT "AccountHistories_pkey";
       public            postgres    false    276            ,           2606    16402    Accounts Accounts_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Accounts"
    ADD CONSTRAINT "Accounts_email_key" UNIQUE (email);
 I   ALTER TABLE ONLY public."Accounts" DROP CONSTRAINT "Accounts_email_key";
       public            postgres    false    198            .           2606    16400    Accounts Accounts_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Accounts"
    ADD CONSTRAINT "Accounts_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Accounts" DROP CONSTRAINT "Accounts_pkey";
       public            postgres    false    198            0           2606    16413    Achivments Achivments_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Achivments"
    ADD CONSTRAINT "Achivments_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Achivments" DROP CONSTRAINT "Achivments_pkey";
       public            postgres    false    200            ~           2606    17055 &   AdActiveServices AdActiveServices_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."AdActiveServices"
    ADD CONSTRAINT "AdActiveServices_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."AdActiveServices" DROP CONSTRAINT "AdActiveServices_pkey";
       public            postgres    false    272            f           2606    16768    AdCategories AdCategories_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."AdCategories"
    ADD CONSTRAINT "AdCategories_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."AdCategories" DROP CONSTRAINT "AdCategories_pkey";
       public            postgres    false    248            h           2606    16786    AdTags AdTags_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."AdTags"
    ADD CONSTRAINT "AdTags_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."AdTags" DROP CONSTRAINT "AdTags_pkey";
       public            postgres    false    250            6           2606    16454    AdViews AdViews_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."AdViews"
    ADD CONSTRAINT "AdViews_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."AdViews" DROP CONSTRAINT "AdViews_pkey";
       public            postgres    false    206            2           2606    16435    Ads Ads_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."Ads"
    ADD CONSTRAINT "Ads_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Ads" DROP CONSTRAINT "Ads_pkey";
       public            postgres    false    202            4           2606    16445 (   AdvertisingTokens AdvertisingTokens_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."AdvertisingTokens"
    ADD CONSTRAINT "AdvertisingTokens_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."AdvertisingTokens" DROP CONSTRAINT "AdvertisingTokens_pkey";
       public            postgres    false    204            z           2606    16939 (   ArticleCategories ArticleCategories_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."ArticleCategories"
    ADD CONSTRAINT "ArticleCategories_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."ArticleCategories" DROP CONSTRAINT "ArticleCategories_pkey";
       public            postgres    false    268            v           2606    16923    Articles Articles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Articles"
    ADD CONSTRAINT "Articles_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Articles" DROP CONSTRAINT "Articles_pkey";
       public            postgres    false    264            x           2606    16931 "   BlogCategories BlogCategories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."BlogCategories"
    ADD CONSTRAINT "BlogCategories_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."BlogCategories" DROP CONSTRAINT "BlogCategories_pkey";
       public            postgres    false    266            8           2606    16467    Categories Categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
       public            postgres    false    208            �           2606    17071    Cities Cities_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Cities"
    ADD CONSTRAINT "Cities_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Cities" DROP CONSTRAINT "Cities_pkey";
       public            postgres    false    274            :           2606    16485    Companies Companies_email_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_email_key" UNIQUE (email);
 K   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_email_key";
       public            postgres    false    210            <           2606    16483    Companies Companies_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Companies"
    ADD CONSTRAINT "Companies_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Companies" DROP CONSTRAINT "Companies_pkey";
       public            postgres    false    210            >           2606    16493 0   CompanyActiveServices CompanyActiveServices_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."CompanyActiveServices"
    ADD CONSTRAINT "CompanyActiveServices_pkey" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public."CompanyActiveServices" DROP CONSTRAINT "CompanyActiveServices_pkey";
       public            postgres    false    212            j           2606    16804 (   CompanyCategories CompanyCategories_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."CompanyCategories"
    ADD CONSTRAINT "CompanyCategories_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."CompanyCategories" DROP CONSTRAINT "CompanyCategories_pkey";
       public            postgres    false    252            @           2606    16507    CompanyViews CompanyViews_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."CompanyViews"
    ADD CONSTRAINT "CompanyViews_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."CompanyViews" DROP CONSTRAINT "CompanyViews_pkey";
       public            postgres    false    214            T           2606    16668 ,   ConstructorServices ConstructorServices_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."ConstructorServices"
    ADD CONSTRAINT "ConstructorServices_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."ConstructorServices" DROP CONSTRAINT "ConstructorServices_pkey";
       public            postgres    false    234            B           2606    16523    Discussions Discussions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Discussions"
    ADD CONSTRAINT "Discussions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Discussions" DROP CONSTRAINT "Discussions_pkey";
       public            postgres    false    216            F           2606    16563    Files Files_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_pkey";
       public            postgres    false    220            H           2606    16601    Invites Invites_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Invites"
    ADD CONSTRAINT "Invites_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Invites" DROP CONSTRAINT "Invites_pkey";
       public            postgres    false    222            n           2606    16847 :   KnowledgeArticleCategories KnowledgeArticleCategories_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."KnowledgeArticleCategories"
    ADD CONSTRAINT "KnowledgeArticleCategories_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."KnowledgeArticleCategories" DROP CONSTRAINT "KnowledgeArticleCategories_pkey";
       public            postgres    false    256            J           2606    16617 (   KnowledgeArticles KnowledgeArticles_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."KnowledgeArticles"
    ADD CONSTRAINT "KnowledgeArticles_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."KnowledgeArticles" DROP CONSTRAINT "KnowledgeArticles_pkey";
       public            postgres    false    224            L           2606    16625 ,   KnowledgeCategories KnowledgeCategories_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."KnowledgeCategories"
    ADD CONSTRAINT "KnowledgeCategories_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."KnowledgeCategories" DROP CONSTRAINT "KnowledgeCategories_pkey";
       public            postgres    false    226            �           2606    17095    MessageViews MessageViews_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MessageViews"
    ADD CONSTRAINT "MessageViews_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."MessageViews" DROP CONSTRAINT "MessageViews_pkey";
       public            postgres    false    278            D           2606    16544    Messages Messages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_pkey";
       public            postgres    false    218            p           2606    16870     Notifications Notifications_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_pkey";
       public            postgres    false    258            N           2606    16636 "   PaymentMethods PaymentMethods_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."PaymentMethods"
    ADD CONSTRAINT "PaymentMethods_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."PaymentMethods" DROP CONSTRAINT "PaymentMethods_pkey";
       public            postgres    false    228            P           2606    16647    Permissions Permissions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "Permissions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Permissions" DROP CONSTRAINT "Permissions_pkey";
       public            postgres    false    230            R           2606    16656    ProfileViews ProfileViews_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ProfileViews"
    ADD CONSTRAINT "ProfileViews_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ProfileViews" DROP CONSTRAINT "ProfileViews_pkey";
       public            postgres    false    232            �           2606    17144     SequelizeData SequelizeData_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeData"
    ADD CONSTRAINT "SequelizeData_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeData" DROP CONSTRAINT "SequelizeData_pkey";
       public            postgres    false    283            *           2606    16389     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    196            r           2606    16883     TagCategories TagCategories_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."TagCategories"
    ADD CONSTRAINT "TagCategories_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."TagCategories" DROP CONSTRAINT "TagCategories_pkey";
       public            postgres    false    260            V           2606    16680    Tags Tags_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Tags" DROP CONSTRAINT "Tags_pkey";
       public            postgres    false    236            X           2606    16693    Tickets Tickets_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_pkey";
       public            postgres    false    238            Z           2606    16706    Transactions Transactions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "Transactions_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Transactions" DROP CONSTRAINT "Transactions_pkey";
       public            postgres    false    240            b           2606    16742 *   UserActiveServices UserActiveServices_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserActiveServices"
    ADD CONSTRAINT "UserActiveServices_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."UserActiveServices" DROP CONSTRAINT "UserActiveServices_pkey";
       public            postgres    false    244            �           2606    17122 .   UserBusinessServices UserBusinessServices_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."UserBusinessServices"
    ADD CONSTRAINT "UserBusinessServices_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."UserBusinessServices" DROP CONSTRAINT "UserBusinessServices_pkey";
       public            postgres    false    282            t           2606    16901     UserCompanies UserCompanies_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."UserCompanies"
    ADD CONSTRAINT "UserCompanies_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."UserCompanies" DROP CONSTRAINT "UserCompanies_pkey";
       public            postgres    false    262            l           2606    16829 $   UserDiscussions UserDiscussions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."UserDiscussions"
    ADD CONSTRAINT "UserDiscussions_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."UserDiscussions" DROP CONSTRAINT "UserDiscussions_pkey";
       public            postgres    false    254            d           2606    16755 *   UserViewsHistories UserViewsHistories_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."UserViewsHistories"
    ADD CONSTRAINT "UserViewsHistories_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."UserViewsHistories" DROP CONSTRAINT "UserViewsHistories_pkey";
       public            postgres    false    246            \           2606    16727    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public            postgres    false    242            ^           2606    16729    Users Users_phone_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_phone_key" UNIQUE (phone);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_phone_key";
       public            postgres    false    242            `           2606    16725    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    242            �           2606    17113 .   VerificationRequests VerificationRequests_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."VerificationRequests"
    ADD CONSTRAINT "VerificationRequests_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."VerificationRequests" DROP CONSTRAINT "VerificationRequests_pkey";
       public            postgres    false    280            |           2606    17046    VerifyTokens VerifyTokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."VerifyTokens"
    ADD CONSTRAINT "VerifyTokens_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."VerifyTokens" DROP CONSTRAINT "VerifyTokens_pkey";
       public            postgres    false    270            �           2606    17083 0   AccountHistories AccountHistories_accountId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AccountHistories"
    ADD CONSTRAINT "AccountHistories_accountId_fkey" FOREIGN KEY ("accountId") REFERENCES public."Accounts"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public."AccountHistories" DROP CONSTRAINT "AccountHistories_accountId_fkey";
       public          postgres    false    3118    198    276            �           2606    16950 #   Accounts Accounts_permissionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Accounts"
    ADD CONSTRAINT "Accounts_permissionId_fkey" FOREIGN KEY ("permissionId") REFERENCES public."Permissions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Accounts" DROP CONSTRAINT "Accounts_permissionId_fkey";
       public          postgres    false    198    230    3152            �           2606    16955 !   Achivments Achivments_fileId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Achivments"
    ADD CONSTRAINT "Achivments_fileId_fkey" FOREIGN KEY ("fileId") REFERENCES public."Files"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Achivments" DROP CONSTRAINT "Achivments_fileId_fkey";
       public          postgres    false    200    220    3142            �           2606    17056 +   AdActiveServices AdActiveServices_adId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdActiveServices"
    ADD CONSTRAINT "AdActiveServices_adId_fkey" FOREIGN KEY ("adId") REFERENCES public."Ads"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."AdActiveServices" DROP CONSTRAINT "AdActiveServices_adId_fkey";
       public          postgres    false    272    3122    202            �           2606    16769 #   AdCategories AdCategories_adId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdCategories"
    ADD CONSTRAINT "AdCategories_adId_fkey" FOREIGN KEY ("adId") REFERENCES public."Ads"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."AdCategories" DROP CONSTRAINT "AdCategories_adId_fkey";
       public          postgres    false    3122    202    248            �           2606    16774 )   AdCategories AdCategories_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdCategories"
    ADD CONSTRAINT "AdCategories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public."AdCategories" DROP CONSTRAINT "AdCategories_categoryId_fkey";
       public          postgres    false    208    248    3128            �           2606    16787    AdTags AdTags_adId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdTags"
    ADD CONSTRAINT "AdTags_adId_fkey" FOREIGN KEY ("adId") REFERENCES public."Ads"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public."AdTags" DROP CONSTRAINT "AdTags_adId_fkey";
       public          postgres    false    250    3122    202            �           2606    16792    AdTags AdTags_tagId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdTags"
    ADD CONSTRAINT "AdTags_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 F   ALTER TABLE ONLY public."AdTags" DROP CONSTRAINT "AdTags_tagId_fkey";
       public          postgres    false    236    3158    250            �           2606    16455    AdViews AdViews_adId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdViews"
    ADD CONSTRAINT "AdViews_adId_fkey" FOREIGN KEY ("adId") REFERENCES public."Ads"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public."AdViews" DROP CONSTRAINT "AdViews_adId_fkey";
       public          postgres    false    3122    202    206            �           2606    16960    Ads Ads_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ads"
    ADD CONSTRAINT "Ads_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public."Ads" DROP CONSTRAINT "Ads_companyId_fkey";
       public          postgres    false    202    210    3132            �           2606    16965    Ads Ads_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Ads"
    ADD CONSTRAINT "Ads_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 A   ALTER TABLE ONLY public."Ads" DROP CONSTRAINT "Ads_userId_fkey";
       public          postgres    false    202    3168    242            �           2606    16970 >   AdvertisingTokens AdvertisingTokens_constructorServicesId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AdvertisingTokens"
    ADD CONSTRAINT "AdvertisingTokens_constructorServicesId_fkey" FOREIGN KEY ("constructorServicesId") REFERENCES public."ConstructorServices"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 l   ALTER TABLE ONLY public."AdvertisingTokens" DROP CONSTRAINT "AdvertisingTokens_constructorServicesId_fkey";
       public          postgres    false    3156    234    204            �           2606    16940 2   ArticleCategories ArticleCategories_articleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ArticleCategories"
    ADD CONSTRAINT "ArticleCategories_articleId_fkey" FOREIGN KEY ("articleId") REFERENCES public."Articles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."ArticleCategories" DROP CONSTRAINT "ArticleCategories_articleId_fkey";
       public          postgres    false    264    3190    268            �           2606    16945 7   ArticleCategories ArticleCategories_blogCategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ArticleCategories"
    ADD CONSTRAINT "ArticleCategories_blogCategoryId_fkey" FOREIGN KEY ("blogCategoryId") REFERENCES public."BlogCategories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 e   ALTER TABLE ONLY public."ArticleCategories" DROP CONSTRAINT "ArticleCategories_blogCategoryId_fkey";
       public          postgres    false    268    266    3192            �           2606    16494 :   CompanyActiveServices CompanyActiveServices_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyActiveServices"
    ADD CONSTRAINT "CompanyActiveServices_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 h   ALTER TABLE ONLY public."CompanyActiveServices" DROP CONSTRAINT "CompanyActiveServices_companyId_fkey";
       public          postgres    false    3132    210    212            �           2606    16810 3   CompanyCategories CompanyCategories_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyCategories"
    ADD CONSTRAINT "CompanyCategories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 a   ALTER TABLE ONLY public."CompanyCategories" DROP CONSTRAINT "CompanyCategories_categoryId_fkey";
       public          postgres    false    3128    252    208            �           2606    16805 2   CompanyCategories CompanyCategories_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyCategories"
    ADD CONSTRAINT "CompanyCategories_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."CompanyCategories" DROP CONSTRAINT "CompanyCategories_companyId_fkey";
       public          postgres    false    252    3132    210            �           2606    16508 (   CompanyViews CompanyViews_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."CompanyViews"
    ADD CONSTRAINT "CompanyViews_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."CompanyViews" DROP CONSTRAINT "CompanyViews_companyId_fkey";
       public          postgres    false    3132    214    210            �           2606    16524 !   Discussions Discussions_adId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discussions"
    ADD CONSTRAINT "Discussions_adId_fkey" FOREIGN KEY ("adId") REFERENCES public."Ads"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Discussions" DROP CONSTRAINT "Discussions_adId_fkey";
       public          postgres    false    3122    216    202            �           2606    16529 &   Discussions Discussions_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discussions"
    ADD CONSTRAINT "Discussions_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Discussions" DROP CONSTRAINT "Discussions_companyId_fkey";
       public          postgres    false    3132    216    210            �           2606    17025 &   Discussions Discussions_creatorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discussions"
    ADD CONSTRAINT "Discussions_creatorId_fkey" FOREIGN KEY ("creatorId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Discussions" DROP CONSTRAINT "Discussions_creatorId_fkey";
       public          postgres    false    3168    216    242            �           2606    17020 #   Discussions Discussions_fileId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Discussions"
    ADD CONSTRAINT "Discussions_fileId_fkey" FOREIGN KEY ("fileId") REFERENCES public."Files"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Discussions" DROP CONSTRAINT "Discussions_fileId_fkey";
       public          postgres    false    3142    216    220            �           2606    16579    Files Files_accountId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_accountId_fkey" FOREIGN KEY ("accountId") REFERENCES public."Accounts"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_accountId_fkey";
       public          postgres    false    220    198    3118            �           2606    16584    Files Files_achivmentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_achivmentId_fkey" FOREIGN KEY ("achivmentId") REFERENCES public."Achivments"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_achivmentId_fkey";
       public          postgres    false    220    200    3120            �           2606    16564    Files Files_adId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_adId_fkey" FOREIGN KEY ("adId") REFERENCES public."Ads"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_adId_fkey";
       public          postgres    false    220    202    3122            �           2606    16995    Files Files_articleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_articleId_fkey" FOREIGN KEY ("articleId") REFERENCES public."Articles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_articleId_fkey";
       public          postgres    false    3190    264    220            �           2606    16569    Files Files_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_companyId_fkey";
       public          postgres    false    220    210    3132            �           2606    16985 %   Files Files_constructorServiceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_constructorServiceId_fkey" FOREIGN KEY ("constructorServiceId") REFERENCES public."ConstructorServices"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_constructorServiceId_fkey";
       public          postgres    false    220    3156    234            �           2606    16574    Files Files_discussionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_discussionId_fkey" FOREIGN KEY ("discussionId") REFERENCES public."Discussions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_discussionId_fkey";
       public          postgres    false    220    216    3138            �           2606    16990 #   Files Files_knowledgeArticleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_knowledgeArticleId_fkey" FOREIGN KEY ("knowledgeArticleId") REFERENCES public."KnowledgeArticles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_knowledgeArticleId_fkey";
       public          postgres    false    3146    224    220            �           2606    17133 $   Files Files_knowledgeCategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_knowledgeCategoryId_fkey" FOREIGN KEY ("knowledgeCategoryId") REFERENCES public."KnowledgeCategories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_knowledgeCategoryId_fkey";
       public          postgres    false    226    3148    220            �           2606    16589    Files Files_messageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_messageId_fkey" FOREIGN KEY ("messageId") REFERENCES public."Messages"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_messageId_fkey";
       public          postgres    false    220    218    3140            �           2606    16980    Files Files_ticketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_ticketId_fkey" FOREIGN KEY ("ticketId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_ticketId_fkey";
       public          postgres    false    220    3168    242            �           2606    16975    Files Files_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "Files_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public."Files" DROP CONSTRAINT "Files_userId_fkey";
       public          postgres    false    242    3168    220            �           2606    16602    Invites Invites_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invites"
    ADD CONSTRAINT "Invites_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Invites" DROP CONSTRAINT "Invites_companyId_fkey";
       public          postgres    false    222    210    3132            �           2606    17000    Invites Invites_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invites"
    ADD CONSTRAINT "Invites_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Invites" DROP CONSTRAINT "Invites_userId_fkey";
       public          postgres    false    3168    242    222            �           2606    16848 M   KnowledgeArticleCategories KnowledgeArticleCategories_knowledgeArticleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KnowledgeArticleCategories"
    ADD CONSTRAINT "KnowledgeArticleCategories_knowledgeArticleId_fkey" FOREIGN KEY ("knowledgeArticleId") REFERENCES public."KnowledgeArticles"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 {   ALTER TABLE ONLY public."KnowledgeArticleCategories" DROP CONSTRAINT "KnowledgeArticleCategories_knowledgeArticleId_fkey";
       public          postgres    false    3146    256    224            �           2606    16853 N   KnowledgeArticleCategories KnowledgeArticleCategories_knowledgeCategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."KnowledgeArticleCategories"
    ADD CONSTRAINT "KnowledgeArticleCategories_knowledgeCategoryId_fkey" FOREIGN KEY ("knowledgeCategoryId") REFERENCES public."KnowledgeCategories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 |   ALTER TABLE ONLY public."KnowledgeArticleCategories" DROP CONSTRAINT "KnowledgeArticleCategories_knowledgeCategoryId_fkey";
       public          postgres    false    226    256    3148            �           2606    17101 +   MessageViews MessageViews_discussionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MessageViews"
    ADD CONSTRAINT "MessageViews_discussionId_fkey" FOREIGN KEY ("discussionId") REFERENCES public."Discussions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."MessageViews" DROP CONSTRAINT "MessageViews_discussionId_fkey";
       public          postgres    false    278    3138    216            �           2606    17096 (   MessageViews MessageViews_messageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."MessageViews"
    ADD CONSTRAINT "MessageViews_messageId_fkey" FOREIGN KEY ("messageId") REFERENCES public."Messages"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."MessageViews" DROP CONSTRAINT "MessageViews_messageId_fkey";
       public          postgres    false    3140    278    218            �           2606    16545 #   Messages Messages_discussionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_discussionId_fkey" FOREIGN KEY ("discussionId") REFERENCES public."Discussions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_discussionId_fkey";
       public          postgres    false    218    216    3138            �           2606    17030    Messages Messages_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Messages"
    ADD CONSTRAINT "Messages_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."Messages" DROP CONSTRAINT "Messages_userId_fkey";
       public          postgres    false    3168    242    218            �           2606    16871 '   Notifications Notifications_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notifications"
    ADD CONSTRAINT "Notifications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."Notifications" DROP CONSTRAINT "Notifications_userId_fkey";
       public          postgres    false    3168    242    258            �           2606    17005 %   ProfileViews ProfileViews_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProfileViews"
    ADD CONSTRAINT "ProfileViews_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."ProfileViews" DROP CONSTRAINT "ProfileViews_userId_fkey";
       public          postgres    false    3168    232    242            �           2606    16884 +   TagCategories TagCategories_categoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TagCategories"
    ADD CONSTRAINT "TagCategories_categoryId_fkey" FOREIGN KEY ("categoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."TagCategories" DROP CONSTRAINT "TagCategories_categoryId_fkey";
       public          postgres    false    260    208    3128            �           2606    16889 &   TagCategories TagCategories_tagId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TagCategories"
    ADD CONSTRAINT "TagCategories_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."TagCategories" DROP CONSTRAINT "TagCategories_tagId_fkey";
       public          postgres    false    3158    260    236            �           2606    17010    Tickets Tickets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Tickets" DROP CONSTRAINT "Tickets_userId_fkey";
       public          postgres    false    242    3168    238            �           2606    17015 %   Transactions Transactions_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "Transactions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Transactions" DROP CONSTRAINT "Transactions_userId_fkey";
       public          postgres    false    3168    240    242            �           2606    16743 1   UserActiveServices UserActiveServices_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserActiveServices"
    ADD CONSTRAINT "UserActiveServices_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 _   ALTER TABLE ONLY public."UserActiveServices" DROP CONSTRAINT "UserActiveServices_userId_fkey";
       public          postgres    false    3168    244    242            �           2606    17128 8   UserBusinessServices UserBusinessServices_serviceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserBusinessServices"
    ADD CONSTRAINT "UserBusinessServices_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public."ConstructorServices"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 f   ALTER TABLE ONLY public."UserBusinessServices" DROP CONSTRAINT "UserBusinessServices_serviceId_fkey";
       public          postgres    false    3156    282    234            �           2606    17123 5   UserBusinessServices UserBusinessServices_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserBusinessServices"
    ADD CONSTRAINT "UserBusinessServices_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public."UserBusinessServices" DROP CONSTRAINT "UserBusinessServices_userId_fkey";
       public          postgres    false    282    3168    242            �           2606    16907 *   UserCompanies UserCompanies_companyId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserCompanies"
    ADD CONSTRAINT "UserCompanies_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES public."Companies"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."UserCompanies" DROP CONSTRAINT "UserCompanies_companyId_fkey";
       public          postgres    false    3132    262    210            �           2606    16902 '   UserCompanies UserCompanies_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserCompanies"
    ADD CONSTRAINT "UserCompanies_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."UserCompanies" DROP CONSTRAINT "UserCompanies_userId_fkey";
       public          postgres    false    262    242    3168            �           2606    16835 1   UserDiscussions UserDiscussions_discussionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDiscussions"
    ADD CONSTRAINT "UserDiscussions_discussionId_fkey" FOREIGN KEY ("discussionId") REFERENCES public."Discussions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 _   ALTER TABLE ONLY public."UserDiscussions" DROP CONSTRAINT "UserDiscussions_discussionId_fkey";
       public          postgres    false    3138    254    216            �           2606    16830 +   UserDiscussions UserDiscussions_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserDiscussions"
    ADD CONSTRAINT "UserDiscussions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."UserDiscussions" DROP CONSTRAINT "UserDiscussions_userId_fkey";
       public          postgres    false    254    3168    242            �           2606    16756 1   UserViewsHistories UserViewsHistories_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserViewsHistories"
    ADD CONSTRAINT "UserViewsHistories_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 _   ALTER TABLE ONLY public."UserViewsHistories" DROP CONSTRAINT "UserViewsHistories_userId_fkey";
       public          postgres    false    242    3168    246            �           2606    16730    Users Users_permissionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_permissionId_fkey" FOREIGN KEY ("permissionId") REFERENCES public."Permissions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_permissionId_fkey";
       public          postgres    false    242    3152    230            �   �   x�����0F�ާh�*��-P�8i��
?5»Kbb4�1��˗3�CL%u�.�����v�Ve׺jNl����^�����XuRv�t|B�a`�4R�yq"�C�VF��3=K͹͚{�K�K�uFK�p��	��#o�Xi�i��?�5�h�C_:~��!�K ���      ?   �   x�}�A
�0 ��+����l������^��������g�3�&/��v�mۏ��G����}�z��f��J�y%QO�K�b$T#���ـ� B��#&`3$Q��o8_��a�z�0�Pk �%���־*�      A      x������ � �      �      x������ � �      q     x���]�ܬ�k��ܟ
��|�_��K&3�.�J���vc[v{����~��;�_���O)�/�%G"�Ц��C�1�z�kq:r���H��S��j�F[���F�0i٨��t�v��9��Tr1V;��(X��j¼k9���*66b_)i<�\̂�=�1NǺ�&����ץb������T\lB���H;���2���5)���}��j*9"�j�V��9�X^��6s��w��;0� �c���J��U�c����?�_�y���������c)<�\
Wӱ�8
ֱ��0o����Ulwl���]ɥ|uیY��m��V��\�Jй���s٬���R�V�����yc�:��K����Iߪ���%�	�Ou��O�|�yL��^._�����ϴ�?��ڳ�VXۆۘ�mӲؒ���,�{�<�h�g���:��Ә�w����*zl������J�3�ݬZE7�2�����,8V�����Դ�K��ݬ;��n�%����f/����I���w��+�F7����ySW�����^��=��Tr��ѭ��&���1u��eѭ�l2:���2U\W\�7���:�Ә�mӲ���-�9�\}�\	�����k�f��"q�V��z�0��C�=n�Tru|Qj�V=2�S��t|��ޯ���]�;%�vKe.�F׸�=�	ZE7������Sݵq�C�%��gɵr�{�C]�ut+o���V/�Nwo,�x���\�ד�#�ut+'�Mt��voY>�;tO�&�Yr=C�fh:�e�p<��}�����Q.ϒ�z��Y����G�y��>�ȵ�m*nijS=��$�����<���f�����Ȯ�.�o�r�Y9sIx_�o�\ŷ�6��o@�����6��x*��u�%�\em�����=�����t��8@r�;sIx_�o����}^ŷP���w}����>��"���q��m�a�7ri���.�Lw���)c.	'�u�v��Ut��ë���Jk'����儰�SIxW�7�
��}>��d�=^�#[�cW��,��>�{�#��o�4��o@�����D>��c.	��j�f��:�ٗ���7 �o����(�Z<ϒ��Ǽ�ӱ�a�p<�<�+�"�5�O�Y>��������͹��[�� ���n�q3�'�}x?�XMވ+��n�mh��e٭]��}�>�z�,��\M��#��n�4�o@������\|)�[x��g�r���:�}�'>�@����1�4�A�Q���%�\�����}�:�%�o��W~t{u�����tZ^SP%�^�y������ |eR��9�^6|.	/��������v��u|� ���^�:rS��y�\+.� \q�������˲����hꝋ�\���g�r����/�K�WȲc?1^�+ˣPU��׽�yW�;x�>�,��ˋ4��5¾=���$���1O�S��>���d��%~FOH�
}�ϒ�^�y�ӱyY|s���������'�$���S�x:�~��� ���?c}��i�ϒ�^�yO����o�۫�f���]�KMnrxO�ή$���1o�T�}�������r<^wŉ?�������HʸY�~<@�|< ]��-�6�w �P����筈��'�r�3��3�g���� ����?�Ow|*	��j�f��u|������i���B��ا��%���9]���#���k?@&�*>��~&��p_��yW����٫��d�����6�G�R6��\��S������x�T���W��O�.�A��C��\q���W:C5|\]�c�q��Q{hU^��1��s����?NZ/�u�U|�����%G����v�U|�'x�>�\p��۴�m�����9��UIx���v< �⧭> �Z����}j+_J�+��� m?m�y Y>�����;�$�����]+��h���+���65�y�v�e�ͽR��fx�-=>5]���1g�ԏ����Չ	�UJw
>>�:]^��1o���w��۬���ι��C%;      s      x������ � �      G   �  x�uZI��8
]�<E�+�!h�g�u����d[S�`�If����?X>����A�����|���I�Q��=0H�_N���DJ�J}��|\�7�֏��/֫"��eV�lܼ���J��eӜ�;�$E�w4����+7�u�*������j�?|rU����_�_Q/e=_1�3���)�����ta���b�n�M+	A�Zہ[ ��y�w�H��7�w�=�=	;����Ծ�O�#��r`��p� �#�B����7xcZ��A��ra�1�',�<�i%j����{� .49})�}�(��]���obd�q��ec�Ύ+}S�R9�;T�z����׉FB��צ;�}C�2;s�痨h:�.�y��� ���]7�H*�/��a[��,jQ�|h௑Qrӕ���S8?.Dh�]k��jΏ�?߈4<J>|? ��葋��rH��V��:��+Q�B��ځ�!��E���͌��G����������S�C�z��捐E�j��&"H_�j���O�،W��&����P���<�f	qFX��o.���޻�Ŕ�fu(��Vg�̑�]��|�#D�޵�����y+���|��bU�,!6Y��E_F���uK�-����=v3�$RQ���jf���i���6�g~��b'G�-;�G��3B��^�؝��7�hߌ� ������'pIPTn#�5wPX������*j����}��|�b�f~��,���1A�y�Թ�KK�p�~��䝖�ΡjA� OrG�>e�	閹)2'ND�zAI�	V�7?z���XR�to��/e�\੃<��p~��F��ʳ�#b�G�*�N��6>�+�w�a����2ԕ��5A��E�N$!Js�0Aٽ�ux'���g� ��)�v^����d>>�;T��Nn?؉�먋�G�o��B"9$o΋���<xg�A����y�gg����ͧ~����>{��u%b��Z߼C�{���v�&*�P2�بn�?P�4 +Q���x��C޶qw��~ޗ�����@��_�����M�Vߊ~Ē}8�eo<
��w_q���h�����?C�[�!Ջ�L���m�ȯ�9���	e!��F�I��)�ή>�D�\�#�B1��+���<h.�U՟�&��H�{�3�@d��}����*n���˭��#ԯ������Y�
ӯtvق��$`��o���ܝ�B�*��zL��:�C�&��t0�b쳱�y�2��Ja=*�A��[)�
T���*	����?{��n��P�`��$�0$��%�>�e�Fp�0B�����2-�Rn�.���D�N&�F���{"�P��d2���r)"��N&.�?T�[��]Ҝ���Q}�u�57��$'��_�2�=���(:��UAw5���6�a�A�н�[E���~�4�j�#A<�0B�@7æKlҽѤ���@�v̾J��Qu�Nbƾ[A!)͡@�#��,�/���'[��&2�]4l��ZB���6�X��VC%�(A�g�C�,ZV3�P�d�o�P`]{���&��G�����I��[�qw#^�PO~!b3��H���n ��8B��Gh;����U���{�-t�R�@�ׅ*�� � ��_~��Pa z�@.>�^x�H��m@g\?#e��~0�C�r�Xg�L��Hu�(�@!�yJ��낭����rmC�ɤ�,���滾؆��b�F������h�����%S�0�I(���� v���aoϚq��KVO�M�_�mʔN@���A�A�{i�~�|�ʺ��G�	�/b,i���P5�s�S8�(�zy>�m������{h��GC:,�q�y�.����&�����t�9��P]�X�����r#+r�(���:��e��O�R�8B���	�,e�pC9�
��-T���/�4@�"�*�J��Y�V7�P�H�����Md����3��B�`�U���%	��4BQ�lm���bR*��#T=������TU���A@չ1'���)�j�ı��W	�=%ptYe&�Z�%%1l�.͓�iq���h!��ľ����!Ɵ]�-�I�lo���V�r
��в�.ȗ�0B�>ۡ�`"Cu����*���fk=�*A�4������x��E�xs���R`җў�=B��O�c���mT옱��D1��{"o���Ӽ�l��"�	+�,��k�u�[��hcr\ �C1�4O;���@=��ˠwv*I��Ү�C�mz��9^�i���c�#�'�C� ��ݓf���m&�����T�c���>�:*�(�x�3Fz���ʺ!>�;�y	�J�) �ƫ���_��	ː{�9����@]/�6j^�l���ƭ�#�����`9Mo�I�+�":AO�y�j��3K���ז��
�U��B����iUwO��f�N��&(&���(�W2��C���C[�X}�ʁݑ�^^y%*�x�˙�(�ū���^H���Ǖ	�^J����d:��ڪ�'x �?`��3��`z�>mQa��Qj���&2��Hn[�Jx��F��/	�*d��Nm�@����Vȓ
Z��}�S�հc��:��N��+�����5j�A�f͹Y|���-������WO�P��Xc��!���^�_1��ۃ���=��P�΍�X�(��cᔓ �y�#�UR���d~��h$� ��`��B=~�i�g��tF&X������L��g�F"�����^4�?�LT�̱䝶
x �� ^�; �b���	�� ������T֐JK[��f�<%4O���/0o
8$=^t���8R��+T����#5���V��=PE8���P��9&�_P�{��)�H�����2�JU�2�y�Bb��YZ�@�.
���x&h������ohm�rG��p�&EC�폄��#�Pذ[�q��iJl4/�&(�[G�PV2��A����"��[���aS��������Ou�����v��P�:���ǌ`d�8Շ?�6���gOb�1�J���>L�?ށ����M��P7_�z����
ϊ���|Ik4$U����g�}%k�?m=Hp�:���� Cn�� 1�l��������_��
�+5
��!y���8ݓ��\�K��6�������T���D�4-A< ���T�~y��;�)��A��Ce+���n�v�������?[E�v      C      x��}k�Ǚ���_���δ�n}!l��kl� H ~a,j-X&���	�"�(��-,peђ��@���py87��{���_��RU]�]uΌfh��H��U�]]U��y���7���݅��L�[�����7�i����݇�3l[\[�]�ng�N;����hZ\��nQ�'� ��M���z�>����}�g�6��g��
�������xz͠!k?m�l�j��jS4��ζ{��؆�����w��v���ߗa�a��eqnۅ�\�����`���g*������,ޅnw��'�a���N�� ޗ�G\��7e*��fUFo�o�����6�Szۜ�<��v��md\�.ރ�W�Ic��v�֟L#O��7�[�]�)3;a�U���D�s��>���]�?�/���oC/�����>�A�|��/ .���5������'������K�]��
�^����޺8y���+_�HjT1��/�~�������Q6/�e/�~�^TE���6��D������!�u����6.����z{�>Wzsq�|�O�r�^�|��o\�r�"��ׁ���?���>s�O��,}��W�Cd!�uQ��"rCE����ف�ͯҿ�i�A�BP7YbGhj�h�ܮ�U�FHj��3r� �0���� ��O�_<�8	>��0�G4�k��=�C���;;`����@�Ɔ�/� �UR���0��M����Վ�\���D45\*'E�{t�KQ�F����kSj�G�OiF��kx���8��B~r��7.���p�_��y�2����_|��A� �Q�$���L�-�f�uV?j2\��H��K�M���fԩ��I���7
�X降6��3�X�4`�>��r�4��G	�> v]��u9i�~_�Q{���o�c3�y��<��|	;�:���+�76^����_ö|�T8�W�|n�s���ev�"�3C�ǻ~`���9� \'>5��]�=,�5������.!]�o�Kt�x4�,�ɮ]�r�=�U3zlj����d�Ȟ��/~[���]��]dI�>��:�c�_,q>��Ӡ���	���;|�-�7�w�!��ѻ�7Q?x�����37��^����������fF� ��� ��0�;��;`��D��_C���a��)~8��-�{��t�'�oCڹ�����=�t���W� ������YI��I��X�u�k?X|����N-p���{F�n���X�^��Ϣl����H���ٹ��s���n,�h���M_� �cW������6ؤ���{ۉ�Y��uD�r�]Z���X�kN�3�N��H������#!��`^5�{vܺ�t�U��`�� "�q��i��k��V����.E�-&�'�Z���Ɯ;����nޢ�ѨI����,�h2姯�~��\�Y���Q�(	�:�9F��֦֡�)s��M%��ɜ{4��L�ŵ<LI��L���^���-�Xdě"�uR�:���(3�6
��E���3`����.��o�{P��w����C?�J�!]�3�L��� =�������K�8��!`^v�"����%J�}q����읃�U
�����w�����M�v��������[�V�e'�=�F�/��]G���l����y�`"X8���.+�=�@�?�������ot�F��"��4���ǈ��,s%�vh���x��|����.|���)I�ܡ�}�M�H��c5
��]���x׶U�}������1��@����l�32��-��:���8��aw��^w➖�.K�.�F��XoJ`;@D�Fu`��4\�=�d�ʘZ�!C��R7b\��`g*o�8R��'���K�����)i��d���$�Ϩ\�©�`����]6�S{�l��s�M��}�=#Ç�ޕ�Xo��x�y�h���=�
ڌ�k��h�Oe�k������.<+��T�=��fu�Gy�l���qGi[��uqc\�(#K��	�	��/)��㍬u�+֌�h�7�4���GF�M�k?wl��#<Y�\�\.�As�8���bu�q� q^�]畮��.?4���<O���'�/�8Qe4T@�A��*Q����Q��k��>{(�]_� z%�
H��^���E���Ne��� v��Y���1`e��\��9�O?e��@WI�}�V�Z-��#�Eje
��J��s=T��K4�`À!J�#�|�$�2�4�L��:y
�MjCWJ�ɣ��}R6(�����O?��x
?i"����K!�[x .4=J/s��*����i���.F��q�������?��+�}�8�xP�skB�ÇUK{М�5uRUG�aS�����M��K��E?O����O��/����Q��O�E�M#�'�K �~ۦ�����>�O�u��7���	*���oN�SP�F�y65^�W�>�0ȑgm� ���>�AS!1bO�#�u�@�mm�>@w/�������2����]5̕���Pw�RL���N$�?{yF�cG������A�,��o�]OQX������n��G�㰄���kaP~�3[�_A���Ef�{u�q���Z3��V��]zf�憞����z��"�3.��n٨�]�1�W30�#����А����	�|��&�!��ja]�� sY�M��	��(4<� (�6F\�s\;�܄&�kK���z��� I�"g�4G)� ;)�����I�\V�Q�(��2�[��T���S��T-P}�`H�V��~T���:B��k���/ڎ��;�^�q�@@��cB�|@��k���Y�z��4��C���	zCV�̥l<�������S�0�^p�:NY���1���ꑧ������a�A�*U3���FĪ��9d��>���KX'�d�d��ZhR�İ9�%�FQR'����t�%D��_�C>.���K�r�R��2�f�y#4���K�&/uY熐#&�k�G#�PX��FsfQ�K�	�i��7I�3A�2�ی4��^Q'e"h�r��*O�#@�9>�ʜ©V���)��[�5F)u�=�W)%���DWҔ��y��G��T�7�I~E�ڧ��r�*
6��TM���	� D��-�B{Ч�#�gq���M�D}���g�]I�Z02S�g!pL_�,���u���Y�%�Ն.7$�[}򢨆�B� ����b%�����`�1)`���t���CUu�[(�4�M$�}D��'��6;�}ڒS����ܔ�׫{M�7$�JQ���4'؊��S�%��L<��� �t}�VV� ���<l����RI7�*��1J6��zs+]
���7���1��߂�$�;oNp-YS'Յ�i�M��)GL�<�U�2��L�<eZ� Ӛ�&ɲ*5�hC#�#��*Q)����q(�fU�����R�*T��q�+�� $���*Vj��%�!�s-YbJ�K~C�U�,8���X��ʬ҆N�)�z&��О�~��u&/T#�J��u%eѤ��#���p�>)Q�T+
�S��NJ�x�'K̨1e^6>�Q/�-V�.V:�?	����+QǨW��k��W�,�Y�$�᭙X���Z��T͒L�)��Y��dIv��%؛�-\�䊽��!}��5L��ZZ�$��-+J�d߬�I�2n�L���/�W�${��K�s�it�2��=(YZ#�:���Ƣ�cDҎ�`�'<O�`��]��SQ��i-��W�|��ݠSU���kj�B�|�V�'Qد+�u�N��ߨ�_���\��'�����4H1��ؒp���iO��cK�2�-�a�
�i+�����yF�B����V?9����O�V;]q�����Ʋ��Y���n��])�}�onuEְ�`��c��Q�Yp��)���2�����T�1�{����(�z�o!�{��"*K�dc��	T])<P&A ��y`WSP���{���qf\͐���1NXt��hl��ԍ�8�9�����\��d.t���4���U��򂰯o/n�W�BL��`Wt��>?�+a�XQ���	����G�e����    ;����[�h]ѿ{�yDv#�(]d�.�UW%����@���c�i˖���1E/�)�5Y�e���̪T�N�W�Y�"�`�v���Ȝ�wK���O�>�k����@�S/n��N��5�M;��n���6�ɻ�Ƥ,�"���eÚ!me��r���p��'��ݴ6�T�?]�T4ٿʳ �E"�iAgn������iH��l�o��8ܮV��'ژ2�N�j��bB��,�F+!jhU��T%U��Я�C�F�����t��1�[�Y�bIT/��ή>o�h�l�:��Rd���p�'L�#Uh,��4Ǫ<B'͝�Vy��d!��8(OyF4#�LuL�Lu�Y暩N]3߲Y�:����eN0�U*3� M����%u�[v!i�ucV�5wRMϭ� �+�W��:�������|i> B]2팳��ǎ�����;1��,;�@H_YˈS�2���jT�I�݊�VA&ت(L�n���פ�EH�.g��^c�ɕ��s�L��9ͣɺ;�"��}�zf�jB�'�T�Ѽ�� zƛ�h~���6���7`��E�Z�3��ܭ.\��,�g�S'���vf�X��4U��]�d�^���������.�{/�T9%N�$XP]��d�Tj��D)��^a=.�vx.$���l�J�6G���:��J���j+@�ِ�8�鷸��^�`��q0�M�]�'��y�]\���9���U��(T6�_YF��VW��N��#�d��Ui7������!KY%�5x$�ˬ6��ƺ�?~�T%�:V���a�S����uѩ�h4�Q<zTN���s�T��lJ��&{�RT/�*�P���"z�K�;F�4v�<��13LE�t3���Ql��ثÎ���K�~����a��m�u�N��]��Vݥ�a�v��E�M�\�f��r�c���r,���L��T)�`؜2��}[o�q��~=������Of�� ,�39a�!8�f)2a��q�Hg�@l1Y������X��J�C�+$�X���p�>��������I���k{��3�Ue�*Y�DU�4�H��?��埭,�s�˥�k��^VR��^V#l�ȭ|�\�/�鶽�XІ����`��9dʝL2)�rN]���|�^=gX�|DC��3U��h�aRH-"���"/A�F�����f�,����c@�s��~�\g|����<n�kBP*6'5VOTx\lU�]�%V��J[�q�~<p^�.��go>�_k��>T�}��DSZ�=�1���eq0E�@>�+�K��G�3B?�ԝw��0Gh0����0Ұ��(��c�l6Č�Q`ᮋ�x����Z�O����&��-\bJ����m��H�k�t6��DXx��F{�RV�SH�ge�H�#2lN��i�Sx�x������[�>B�~y(��(���+�-��m�Ǽ_\����6TL��� m���7`�8����~8Gt��Y�"$��Y��g��zH�CSH��lbZ���%��R���^�k����M;�������F�~ftR�� �ª&qa�`�=՗T���a�NI�20�&��E��_Z��^�AOѵ�.�6"S�6Sc�HpQjUGJ��7��zd���M�~�\��d��as��uU$�&��?���b��9�}s� 5hw�1����(ƢC�8�g'�X=���%*o��c ��Xv�73���~ ���':ה7Y��1ׯ)�Z�lU��)�<*�:|PKFH�uq3�,ՆW��ta�1��AM���R�"���m\�=�(��?�z��+����?W�;������������~��?��?b��*�W�ɶ�yD��퉭N��Q��#���T�z4����B[�"��{��;@���y��atx\��G�����#Y���Ag��c@��3'8qx���VMH��k��$�2�&������N~o���	A \��2!��]D�.]���B�E]�w���T���郾>!��Al�TyD��ZBuAsJ7�������ĳ<�#<�A��B�˞'��I�2}xzl~���YǾ9�ˣ=<��#�횕Z�h�Cy%�]^uxJ�	�ugq����N�zL
���ɱ��Ͻ�Yh����`�n}�s�	s�����LW.��LKTj<'�O?���P�x&h�\~K�j��w{�9H����o@:�o���p'����
Z�Qr��pw#���sWizh���}�~Q���k=Sv�b?�����mB�K�kG��e
��qS�]�t���m��-9p�h�� ��G��'ېKT2��o�������Գ�ֺ$��}d�g��̱)Y�3o�)�E)��%�c��>�ܡ'z�2v����h����"�ǝ���������va��z-�D[��l4�/%�m�c�ҫ]�ֆKE6ʺ�D�˼1�)e�ʀ�2Ǣ(�I�E�?������œĬf�z��Wڲa�x\���&KƖ�hB�0&��^Q���Ua,Ci_E�²�E�({�W��1d{�����;s���:��h�Nz__��XD�0��a#T6�t�Q>������]�p�X��f5����:q
�4;V��!Tͮ:N��Yt�����ݞ��'���}�x���@�g�����;�u��pݲ\޽�C�m�æ��A�+M��K+`��.s P�(��(��KJ�	L~�;����U���/��E�

6H����2o���K�*I3a�[�Dި�B��Yv��n���Iݷ�� V�Ϝ���{Ĺ;�e�I-{�$>�1O��ŒN�as����:�=�$�v���?�ȥ�I��(!p儊\�0]�2.% ���}g`�����.��%<쏿���6�Χ��V�b��cܜy�uH�����i�7�9�L$�|C��&1J�KL���x��֥\�v��V����#E�g�l;_2s���?]󢗺}hs����'E���*O�Q�W/1��L/x�Hc��'.�� ��T��r
S��h��)w|�tϛ8�O��6i�h6�"d���`Vm���L�����4}��0�������88�O_9W��T��D\���F�d]�������%O��U��4�͌�L���3zdS��1:~@�<�s��g�X��L��}���'��
G0�O37t��32���4_���w��xk����J��>���5�� ���,2m�}�����j|�Y�v� F�!�)47���{�$ð0
1��lcvV��4�8L�DJ�w\&e\9a��끰ۗ��!��5��ks�w�L����(��!N��G�������zF�ʧ ��R���:B�t�X��������(�1�qgN���������h���l��R�bU�l�����4q|W��$��9]�����#P���t;�k�'�!����Si�%���4�	�ZR�5Y�s��Uw
w̖6�������Ƌ/�����?^~����b���?{��W���ֿ^��+�_��O��~��3��cnz �[@̈&/뮸�1�׮fW/�~^��q��[���b&&�x��K��� �ym�J�X�H�7�2M���)_ۼ��䮧�hy���?_,|u&0܏��>h4��y��<�=t���D2/�s>0i�ʚh�M�?��1������Ԣݧ���+c��\�ct0��A��oZ�d=}���!_)����#kk�&��N*:�[.�0�n[���cE�|�ʷݼ���~GD`��9T�;Mʫ��F��J�.�������('��9��2@A�6��Ur�wUh΢�a�N9듏3��{��W�����0�m>GW`o����9�#���&m�}6?Yi�e�XǪY����fW-0�JzÊR�s�%���MǾM鍊-QLI�M��H"�lƃ
[8���ʌL����$�G�����κ'NUZp�\�$c���t(0^�rLB����ᑚ�Ġ�0��M.*m����J��2�꿦��'I�9s�/��1^i������߄�
����TI�~eY��-ڄ&�)�4�Je��S���́4�qi�����ʫI;�t	���ՔyS���    �У+q���K׋��E��>E^��,�g��g��I.͠�d�6����r�x��y;N��r��H6'�����H%3DB�yQ�*�B�� �?f'ژ�E�}�<�ܷY_\����u+���ض��
�HuV���$��� ����8Qy� �d��dJ?C5�������PT�3%���K�w���86�]����y \��UÚ�d�r@L�ry=o��u���KÅ�٪��6ib�d0v�w�,��5��B�:ϑ��X#.o*��mz�e���C_z~�p�˱m��*��qlX�$��!����偁{Mh9P���cIK�wjdo�5F%�O< Y���$�.��O4�hsP�D����ͧ��ҘJN�ŲN�Cq2�M"�{r�9�f�	]&v�a�y,���2�I��+�o�&�ԟ⌮{�	����/+K%"����C�PF.�4G�1�ԩ��)�����Eǅ�/xr�E�1㮄,FE3kZ�Ҵ��8]��	o4Wo|O�H;��
V$�� ���H�g�'5�͟lN�$M���qQ�"V(
���F��]���:�_��t-���?zD�^s�p)�<e��$���9���,n��hSd����*~���Bof�	�m������	BEFI���E�NȊ��q�æ��Rk�+UƬh9�.q�^(5��c�oQ�Plh�8h�8�-�,ZM����S�n�Z�jOv�q�Lm��F:愎��X؝S��)���4]ɼ���sh��`�η.rQ*��|sH���G�f�ɀ��P<vؾ��h?դj�h?�`�e=��P���C��r���kڣչn:�rwZ�]]��$��IV�*wBkU�ۉ�E�:%dYy��:fy;X.�"�̣�P���>��wby"�X��zv��L4�����Èx�c�B��?C�mdU>s.d��j]���qkb��E�W�G^��~���
����P�sO�%=M�<X�V4wj6w44L��{:��@#ν��|��|qq�ߝ�㑞U�[B�0>Ō\�{AՎ)'\'o�m�B�y\��Bw(΁-�� pdv��_���k�I���9�ĵM�&8�(����Va؜�ɓHԻ�������zŕ,�/�<���':e4Z�>����>d�鐏
�X�����XP���I���)d�� �k��AQ�J����Xγ�����7��J��l�p�]ڕ$L�T-�<�<iҴ�f�4뛴i,|utv��9B�M��X��X� �2gm�@���80Lf�=l�i6�`��ּ�t�6��8�oec��nw�36N8pD�\�Qh�x�;;�II!�" �ܠ����cq�S�H��#���.�h�<6�v,)��g��<iP e�^
k��>p���E쉓И'���tNԫ���6�6��<j��4��c�[Af���(^�m�:|��N?�ֳW��zss����5V<��b[���3�yf�n�m�C����-�x���6>f�}�H�P�������_؋�c�V�U�w�8��C���S�����e����k�h��'�I�F��.9)퉇�|����k���������^ܯ���9�9MyUF`I��Q�J�Ekg�)|U���=�����[�����%$҃��)ü�N*��%��U���Ue������X��ʳ���Ak�0!�W
��Z�5�|�0��� ���B
���(�fU%{Ʈ�ƶfSb]}dn�/ڦ�n��lObV�;��_���x�#7�[A�і�O��H��l��s�9��MD��������r�]z�ΠB����R5µ^YM���2	��j�a����d~��@`���s�mn�Mu��	o%ʿ�v2�c�un8x9o���b�J:@SR�x���1��NiX�a�oY��{�R����<3��ǡr��~�Ub��/ܺD(<]C�*a�1�)�aj���,"	�`N$"��y�Ѕ�(c����:"�����(�&���������ke؜ʼ��I�{�ȏ��F��֦mO�� "1.�q7%Y �{[wwՍ����:�GS�X�b;�-���k�ʡ\�g,��iO�X�G�*���3;#��[�� ���8L��KK�S����SՎ��x \�6�Y����ss�[��A��!����jâ��xa����#��W�q�Y������?�n�E�Yw��1l�
��Tl���W���vu+���ㇴ�����>���[�6o�;i"x�˸ývp"u�3eY6���_�my�q��I%��]�w���D�|��}��~
�ǰ��ۥt9vT҃ F��й�����!���cBZ�~�~�2���l��`%Mk�u�ǑSKph�o{^��ng>�y%lu_�����0X�کF;�;ڛv7��L����1��E�;��G����ݳ��=���h�-W��b�Qkr�B�b7.T���5z��M�+��+�����P�31�x���\{���7��S��
.�Tj_������52`g�
�~n�i���c�����~{]��>��<�A D�H��(�o�g�.¬�)������[�$nu{ >7��{�ns�wwz����x��{;�z�R6ꗻKq{
x�?���~ ��z�ev��@f�����������Mf�J��\/
YW��령���c!��6�a�$S�!E�cr���Z�#$��ձw�k`�*�k_��8L���m��͵����Hs4�C[���HaǳCrX+lR��Zu���p!�|�W�S����!��-Cd�Zޮ�ٸ�wX�qh��%tė,6�3��e�3p	k�P_��ܴ�����%ά��)B���A�ɬW��f�v9���V���?�o��R ���-���#���T��������"�|t��,���NצgРg�C2vy�sN���7��↣�*tK�m�8�|R&���������j��>�0L�)�@ rX�q��B��y\�����F�	&�p�]f�XZ,ڠɏ	ќ��X��mZ��BF�r6eO�
xתЪ�� 7yQbo[wo|��=���h����xme���$|�������D��f�hX���8AoF���uB^�^
DyFYD�FM�^~����H%1�H��!��6�
�/�o�oE�A�E�|�ͯ��\���^y�B~%�0pf����c���hӋ���BS��7�)�^�H˺�&:�[��;��m�d�,��s54GE�"������Q���*���eSRL��mef��D��}HO ��ܽI��7�~(�e	AAk�E4t����tܻ���w������:yė����1��.+���oF꥾��9�т:)�Cj�kQw��REQ9��3b5�B�c�	���I��U��֯+�c=@��$� �[��nY���^����)�鳋?C5���Y�p�U����,k��՘�$�`�lE������困lܤ�e���TC��T�h���C�>�)r������b܅��3���A��g����(����?�a�8��M/_#}T
�1����}X�P]l#�hG�l�@Lm.��� ����Z����D%ՑD��f�e!�p�G6��*�AG�z�� ��D�M��ٞ�&��
6�bՕX����v����3�aٕ�"����Aڏ@uyD`��Z&F�P�N�h�^�K0�kaKq��j���Ζ�e�|����_k�"y�@���,�z�9�X�O��"���'��
_n���˦��$ݱ�� @�upZJ��ۋW.�c�w���ڥ,&Ϛ��9�4��������V{��������hI�t�o�;�(�V���U��p�%�,�Y�F��ܚ���gj����-���ْ\¾�-�e����Ms<�:ϖ��؂~�b�|��GN����>{`���[$_t�5kX,<J���Q�.�>J霍���i�ls̼�H��:{�!�³�(�d!����0h�:0cX'�:�MY�Ы����B9\���gà6���?U[����=Ӡ�3��)'��6uR;UE_��f�B�Ύ!3�R�
k��l)r���_Aj]��R:��+-^�쫊bG� F  G/}$z�Zc�9��C����w�P
���(t؞�U��,��M��P� ���q���f����Ǒʔ�|k��:�4���<:�RB�D�)s'#��! �
l�ȅ��Ȝ�ϑ5vkdgۦXg]bS���8��p�t��=7#EC��"(S���Q��zM�D�q��Vq����؋Nr�	݋X�q� ��$K�0T��7-xe�Չ,E��F9r7 ��f�
u`�7EY�ºĨ���.���e�\��ѩ�/��������o.�~1���^�)<������oeӘd�Jĸql�S��K^4��_�ʼ�r�Ļ��gΜ����D      E      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      I      x��]ɒ#�q=��wU�!��W�t��d:�cPKwU�{�g�c"m��FR�R�BP ~!�G
����c2ڰkA�{Dx��Q+�c�L7i��ә����C��������h|u���v��U��h�E��S�s�Wo�����M�9ܥ�4�@�1eP�l�{Mw�����j���t��q�5T����Vo�J��.��&�\���tg�^�`�[��_��xT���f�J�5d/�f,�I�Mc�lo�"4�il�.�'B}�p�>����>�2��N�̹���4 ��7;s�w������Q+�ќL�������]�P�g�J�~H؎u�Z����������������fwn��L��gMҤ�����6��V�̏*��m����
�Q���)}�;�������mT��X��h
FX��n��5�ho�`iv��pg�`h(�Z�?Ds6X�[��܎veWN���C߃^�A?������m��Cp����r�R�=:�g��tSw�z��G�{��eN�n/�ĈJ$��9��]ڝgF�}m��h�;ܛ��t�0U]ʈ%�9ɥ,j��`�H����ѽ#!l���p�q��T�5R�'ZH�:�~�͞��<�y�xqC�;+}�..��$kg8�5N{%��|�O�$KdD�7tP��@��N.b�"��[g���]A�n�5��7�c�]�RL�Lw���N�D]#˾�]�}����Z��~�m�^5���������A�����[>�i���WM�nkPJҠӭ�����to�8��^�;+@�n�b�mL�V��ȸ��E�lX��Y�]3[�0̺�;�H��cٻ���!��ؽ��휭'��{�)P		�����1k�,+�8o�t�$��$� +�~��|n��DE=�r�}V`vf��Xk���F�ޛo�P!�EaGh�(vY���eW�ݑ4��%�����
:f�y��2�ia�1�{j���;�%����}��7��`��&.��9T��D@����S�������������E�1Y���B0�|��ZYF��U�f�-�z	�����`�2"�ᰐ��g�֚͝�"۞\�.�>�4���~�|���V��)JD��Ľ5ߊ���>.��(�:W�������K�{�lo�U`�o�����V��fCA��!],R�ֶ}�"��Wࡽ�m�M�=����U�%��$
�VCɈ�E�}f��W�O�n����X�!��fօ$C����7�7��=�bS��0Җ���!�<��*#��1|�Ek#��ME��l����H9��D������٘�5ޟ��஺��;�������[�+�⑄�nC,���q�s!�Zӡ^����З$x�˜YC����_�,�!Z�F�#��-w���y���f-��T�WUx~�<�Ϣ�I%�a���i�D�7���WVA7F���H5qM'�/�v�
k���\wL!�AY > ���?��M���q�ּ�z?�$�ͲI5�8�[�9��*�A4��"<�����J���T�a��@��s�4$-I[�)��g�C�n���L�_��Ć��H��I|��3��}+�>⻥e�����*�;�@�D젩f��a$̠>
,���`�Ԩ1z�+p=��eQ��Տ�"��*d�a;��Y)>^�d?�̷���qG��1x�`7Ip�������؟i�M�k6�Ę#]X'�#n h����f���j(�2wp�����Ҋ��)�lF��K3ǠG�ҭNp髥	VH���f�q^%ܰ�����O���5ۆG�S�i���s0"���s� ��%�M�x:����i(1��{��^!��Q}��b��l@���K�Ǯ65#G��K���`"�����\��hp��-����$����3%&7~�ꊕT�� thS�2�H�Q�T�p�(��F���J�Q�>M��dw�g>_�'�~%4��͐�s�M]x��f�1W:���'��;XZ(;�7^�P5?duұ�J�'~[����
�
0z����:����P�1�qv�k74N��أ�p��40���ע}%��¼6\���q�=|������F0���Iy�B�3q��a�k��|$(a��h44�(�C����DB�<'��|�
�N�)��`�;����L���6u�ٱ���'���Vt�Q\2ٿK�&�;%��%lgOQl�D,�3��
zG0^9E2����<o]s$7\�C�� � ���8�O����4��I���g.A�=�\a'H��'b���?�UG���>=F�~�?��JX)�uy�f�:t{9�ö��6By	G� ,Kѧq8����: R�r�v�������r�a,���K��
���1j�V������x�l�:�<++xRj���@��H��z�ʖ�����G0��~��
�������H�+�9��\w����㈝�'��R's���o�L�F1nT��n�������l�BF�2N(�v��.F�5�n�[=u�T����@�&�B��%
��0��]���'Ǜ�(sQ�%j5����+;](%F�َsy�A�A��]E�n/T���GI��IBD~J�ː��(.�L�U�R*��j��[�+���*�7���ɇ(�Ib6=G�P�'k�?�ǥ��W�:9M*Wa1��9*��_�z,��m��R�`o9���pR]pP��	Ś{c͢�+@�K����!G�hD �TTF�����G�x��q���tv�)D�T�vOSZN��4�O���I�4-�P&qK�+6�#�	��76��.���qsTt�ϡ���\=����94$�t4/�E�6f�$�{$���O��#w��\�4�3�\lF���s@C�����L5I�&8�l �>���K!
7��^h,�^ҝ>�p��T+8�vr�1*���aGƵPs��F�����R�wf�ܤ-���C�(&�F{�N$��Kl�"�F�bn���9��z��<g誐_E�]+��ulg��
���Iuz\��b��5�09|m���^�ԙ�)e�������cԡJW�L�B�V���ഒ�X�;�:�����F�MA��S�Ϋ7|~Q)�7��KD��Θ��q�iUmk��N���q*IE��U�0���`�7��:%O^���SN�.���7,B�9�-[���ןXI��I��������.�823w|F�zZ#my��Lm�_k�����%�s
M*b���wy��9��Hm��s��]�ͫ{}�M`�v]4%s�.���
rr�`�oQzf+�UJ#T�ƲKM��GZ��!)\cAr�E2�;4u$i��;F��^
?�RW{]����q;q�=	� ���K):�[S7�?T�_�P��w2Q]4���5��S8�u-�� otՖ2e�A�k(!r�Ĩ�cG4�����T�騟�?�HR�w�WC������F�}��$SU�U<���P��I.���Y����ڲ��좛dr��S�̫B��'�(���	�V0��J�X��nE6Bޭ��gsH{s�Iq�>f`��{��5>K�:��C���'�}&y+��Ki���7��	e�a��s+K��؁u��%�7�Z�x�vPuA3dlyA6v�xbky�4%�C�ҦV�t��������#�T[|�!<�(/�W�=ʋH']��NqjĖ#4����[PH��҂_�alDG�0m}�-PX������gk�.�g�)����������Hߟxz��bh㞳q��c�o�/�VQ1[?.�SA3/QG�y"��h�RQ���#������:07ԯ-V.asS�wb6=�Q�#�v'����6��1�ev��,�ر�`l��]#����_օ���"��UtqS*l�7�ۋ_9:�r���z�I��x'�$���}͢�}����;�`T댂�ү|\ �:f�*�9o���E�C����ki�Ad��t�
�&�GG�U�����Ne��MOQ�Ա�G���Yd�l�hj}�֑$re�`��c�Ed8Q[������bb�f�u�Z5�P�}\    \+n��ܮ����WGL��N�-�
M?=|�8��X�[P�tL&�P8���%�`ƣ[��sN�R���l��r^0P��X�����s#"j��5'�"�1�\31�
k�NЄ�H�~�C9��CA�s2UP����S��t("gF|��Q_�!3ٸ�h�y�L%r/u���P����`?I���3��m��K&|�!f�.�:�b���u���5�9��$��].W@V�ء0���Ȝ��%�a��q)�]~�j��m+f,;�\l�s��sc����rJ���>�A?3A��-��;+�`Ʈܺ��<�s)�)�r���DX�9P�X)&�����Y*��~+��EC��̊�i�!����z�qma,kq��R܊p�F�Qet�(��)����RP��3T!SV��'�87HN��t��E��yz����}��<�n<b�:�'�	��ʟ�%��$��VԜ��;1 �F������I�-Ͷ6RɊ�ؔ�\�yѯH�S(]���"L9rAZ�{����Tr�ˌf(s�\C�2�کO<F�Sڃq�j��Rg8��d�
<���Q#ZL̦R�T��!H2d���~��h�D7D++���k�f�u��7�]}]���˘Q�����P0�Ԯ,��t�EZ^1x�>�~�y'�_6���?�"�{�Qmje76�ۖer�Tס腃/����=6�W		�2��W���:XC[�"szu�P, S~5����dvj�Qs۷T��3�_�ih\T
h'N�4,��y;Q�G'P19Y���(�h̕����(�#hI�3���&?��0�e#Y�-��>���Lp*�yg��1�2�Piұ�W�����|�;V��)�Q�:���e��1Ւc:8���C�Up��L��u���5�Bp*�Eg�qS����:�� �ZH�N'ȕ� ET���Y4�"zu$q|6LQ}8=���Xu\N�gf��ݮ	�'ₕ��u����'HW��{	x�Hi̐x��^�c;Gw��Ĉ�� Rm���'r��J-��d�VJ���3t��׈� �Sj��0iůў%�!��{�
�pG��.�� �X�<��V�9g@g�}�A�WL�����
\�(?R��OU�vq}x]�'ít�d�ḍ�u�lQ&盤5n{��-��Rǀ圚V
Yn���r}H#��!��T�r=�<9[I�x�U�z�b	r?Yg�><�����7��i)����3ߏ��v́X��{i�QϏ���Q� ��(��5�i�����+|�*��D�VR[�E?rU �*�Q<|F�������Р������	�Ġ����t��|s5�
G��5 #��K�2^u���C�{1��e������Y;գ�5�:緜kP�`��L��A���;qF,R����c>��mVmӚ�=���=|�F���T^��Ae��!Xg����
Zg�.�<ߣ�5D����{���O� ���㼊�H���o`�����Nd�;�;,�Zo��@� 4��	�
x.*S�* N�=u�7���Q}��2��&���L��!+.8M��F�^kBi�~� ��s$�h��Tg�c�7hU��*
�π5�c�9���$ρ�N�(`M�U�1�߄+f�드0���� P@s�a���>:x=�I|����'[�:�QU����	J`C�ā۫5�9���OJP��A`UL�s%
P��L���RZ8���4����ޚ�e�[�J��0�d�	$�ո@��b������C.r��0T{����)jڨ$��ɾ�6q�Kq����ѯ��:k��7 ��F�Cf� ��//}��������~9p���O�L�9�u��ѽ�6 \E5����̪}+������j+ͯߠ	�T�EG�����8�]���u\x��eG��������a;D�b?6IM%7����@�1��,�]j�6v���SAT�9t��������4`�M�_nRB�wn�@V�)N��D3�jq`�pt�gY)AwO���� �H��o�qw��� �<�S����9�0�f���z��f@�|⣩=sk�K�k�Mlୡ=��S�6�?�Ȫ;�}%��{+�w3]dJ`2xwv)A���j �9y��6�4<�$��h�aX���h nGb��ʼ�i@��
��6�>�G����*)r+�F�KWX��k�rèy�Y�{Ṟ?�ᛠ�Cz�3 BUv�y�ic[໙�ױD�y{�/ ז��b��
�@����'d�5�"[�6W�EOZ����z����XO�4q�N��i�� �ó�� e͞;����NP�c�t�FT���R�s	����?��'�Tn����ҊZe9���q
��7=�t/��CfK�[Ot>ȑ����V�s��K��<�/^���;.��DEy;�R\��k��I*i�Kd��w���s��MZ���h��1Ř���S��ߔփ<��"`�*�3�n�av:��5F6��8X�Kf<iˏ�ұ�8����^h�'%�H� pi�Q��J~��I�i@i�sf@���Q����[��Խs�����鹄��fP��-�=�T�ůڞ���cB�x�X6s1:�5X����I��*��������8e&�I�)���lC�G2�0G�Z���3n%�E�Hg�E3�a�=�M�J�A0��%�{dmʁs��M���&>,�yM8���h�E~�Kh�pD��\�!�+�b����X���ʐ����B��s��(y�0V"���,6䝔@��ۿMY��yhe<?c�3��hPԡ�t�Z�_�v�szlz��k3y�3��&�	����Sgd�n0�՝���r�G$��j��Hs�6���@��y��Z�d�������W�D�{%���٪٭4�q<4e�T��?J�"�G-fb���#�</J̃����{	�|��D0�h��&KЍl�i����Ic �m�P�KF]�sJ�c��{fs�=�[�:\[ȹ☽`��,���A	��\-=��v�L��Fڍ�`���L�
g��q8
�.�t8�l��y�C��J���X���;�8�"�H �W�Ѭ.��r�g8��`��V������Y*��)2�"�W���+���\y��h�����`���q�-Zh��U���_��h��r;/]R��S?�^�A�ce@���s�j����w�2�h�����I�A�-�|7��~���'�7�ۃ���%� ��{l4�F���^���2_���P�D�����nT1�����W�ez�3�	GG�~�.��+)e躹��F�Eh�k��YP�k�YgrsX0U�BB�\��[�L=W�m���7D�q������2u��m��ك2n���B5Ve[�_Z�h��[��@{y/�d�K�eB���~:���L�� ��|�{�U	�Okf6�����I�G�%��5���X�&�x�`��<Zs"���=�X�5��<�B�y+��R��vH��ȿ_9�'�(7����}߷�$��>HpN�eµc�,���esc<���:*�B������/�<���&��~ҽ�H�G]�Q`���$��;PW���\����+��I��~}U�����Oun{i�k(!� r�t �y���W�
�� �e�C	䛄f�iɏc����t҆槓N��}�C�27���}�S��%l���о�//4_
�p�%?�����7�Sy�F���+����?\a}�F9f ��p�cP�����s��<(�A�}�U��q���n,.���n���R���4'��z%C4m�DW�(Pф$Ni�7����8�y!���=ۡ��HN�� .�1,���-\~���\��sp���ϕ�Ҫ,��h8���g@xx��N*i4�¹������@r3���'�a���Ux\�9�c�npc_�A�Wt"�1��[��./s��u|�L���K�A���%sH��x��G������b,C�����������;o7����)9~�b{!�0���g��y�N�
a��|������6��Q�Q������������D<
�P�<� v5լ1\�}�o��7�⻁����� 	  @O�>�#�jC2
jY	>���F6��]ԇm��o��(dU����{v�wR)�a9d�8�<"e
_�z*-ݑ��x��>�8�I�D�"�A�3Q���F�� o��QF��)��S�C�����fy���eƐO�ܷ�R�����.OQ��aP�"g���8�^WX�1D+�Mp2�i��g�`�K���+DjE��Ha�nx��"�R�F^������G��8,��F�@�j���+�]�6i����Xe}��LR����RÖgg`�[{���9�>ln^���d��8÷�
���@�S�"]�e��������s~QS��r���������m��Π�^�e��U޾�.�w$�����IG�2���>��F��g�J��Œ{��8\}�\�X�<]�����2F?QrMZ4�(ь��~j�|*h��e��@���G�J
&����9�6`�z���u܀*!��L��`h�� ^0��Σ���C�j|�ܹ_���yt�����ZK�,�%��ȡ
vN����9�x��R�>�%��)_�$�[ʯ�q�y��2,�r���������Rg�`�8����ܮO�7����Zk�F�>#����r����R�#?�ı�ҡP"�#�\C � Z������`�[��Gܳ��'�*�P�K71���A9��E�:|(�&,
���e�B�Y���]n���q�u6�\/o�<ǘTWYĘ����SJ���%��;�����p�:�Re���ׇܹ�VH�CrYׁ���k�J�v�1~�'���ϲZf���T}mv��1.�m�<�(�a�7{��6���,��mζy���9��l�r�&�h좖%h������՗{�|�V�aR"|�V�����ѫ���w���b�%'
Q�PZB��2{Q�칡�e5��lZ�I�%�j�<�Ȝ�K�����@��ЃL��"����򌲆��=Х���@'�`y$�ne�J�K������BGx�W#�=y_�EBa�bh�`ы
믿x����m���      �      x�Ľ�vǕ,���z?k����N$-Q��n���[����GS$HB��G;bf�Z seք��mC����ʜ9oӞ���폷/o�ݾ<��~x������݋/}�?�=ÿqu{�t�.9��g��L���|�-�֜����;��m�.���s��?n]���zny��6���Y��ષ^��o�_`���ۛ�ۿpU����3���Ћ/no��=���0R�5� ?��Dh �<�:���� �����@�������G�?���+�F�/;�BH^�z����/��Wx��_a�o��V~������t�F�Ucb����z��J(I�`�ooߝ�� O���v�V����^��h�E&�,����5��ۏ��Z����;[C��)��_��7���#g��Ēj�0�V[�_�67���n��l�M�,��3' &��`}P.m�~����Ɏ�w�_����Σ۝�G0�$�R2�� X�'m��]��E�%|��]],"~7��ݗg��%���zY0� ����/_��e�f�VnT���j���Ƕ9�	����щ��⣉g��v���ذ �o��V��x�W�\��?�6���&ߙ�_<,�Y�))�䢽Nll�.�e��g˗�_���]v�wp�%�ù�F����ڌ��`ٰ+1?}z��fXϘ�Yq�&٤��l^�m�����fD~-��k��'����^��5�wk�i��?e�~�����yS�ec�F�i�'0����+����Wep���B>�����P{a���84p����X��):�ϖj�}��l�c��9�����w���.����������b~�c���{<�����q#����������|\3�x����Aܡ]�#8SSƓ����I�jW�ʰ�OgVN9��p�Ƅ�=#�ͻ������n��O��{����Vk;����;F$?��n�o-.Ք"�2�=����wb?��]�j�ğV~	tG|�}��xC@�w_�������=�ލe�q�3�I���u�,z[����k[�����Yt�pq���U˟���i�_H<�Wp����s��%�H�۹\3�Q-�0����7���v,��ퟞp���btg�Z�Ѩ�E��K�P�w+�&f��"N��/�X�K�g��(�溋 �&�w��8�>�	6j�O/��l���]�'��ߟ��)Bq���b�g�����f�����)�ȝ��4<���Z�u�t�F8%5���<p�I�"7�q8�.��?_OH7`\�K%ųa����(��lK�x�$N��'rY0�!U�D8#��W_ྮn��q�E(T1r�ɔ�=2�4l�[u�����X�vl�\J4�+@*W���p��`�e�^_ʑ9�G�c��`�.��;V��5�W�Z�?wh�%���ձ������ő�8��%,LDD���I�� KK�q�\=�bX���M��m,&��#��]Šކq]}�s����j�=L��p���\b9\ڣ��5��������r�|��!>�uw/>� �-I�����C��5ܝ�y\��g���;�c����Z��K|���Ϻ;q�*���po�/'�y|�_���|�+�fD��J�IU�=�m�*��.N\��ΕzV`�Cĭ]V�!헋'yM/���KyunV8T�;�)�b��B_��͹���+�����(f�+��gǕ�ٷPv��{��T�{[�$~�y��`s������[,lL�����-�)��=���!xqx�,T�5W������T�0�Ԁ~�������T�*yc�y�y�xg�ǡ.�����W�y�x��RL��������J�ax����t�/�Ee!��ZP;��6�;p�$^�+t�|���_:�u�+��u���&�6�5\?�+��������ֈ�i<+�=!ɯ>4Wz[���"b�h3k�����Ѐȫ�p\�LTa��3I�V"�l��-gx���s9�W���dX�Jd5QB�`�	Z�"��j�%�siMd�bٷ'�.ˢ6.V�H=%�8Y�"P�_�]�ng\�0E!Km*95����f}>e�A�g��I��uS�z���W�#����'���K6�$[1��Ā+Յ�Ȧ��C�+�7�~���{����n���?��9V��v7��|^�I�Ig��Y�i��V���RY����s;+��x�jw>$a�s����%�X�6zF{z�z� Ab���w��?��qY��ۻo�n�[6���e�����F!�@XS�j��D���'�m����M�\��%��?��I8�py�6�^��ss�ə�l�g�EPZɗ冯[��t�V9�h�d��aԭO���fY�};�x�Rf���&�� �x�5���9#}#�%��_K%�����,�*��{VK(xG�0�I!~KeA1��/+m{Gq�o��������ߴ�x�M��U ��j�!���W`���-�hg�u6KXW�׳��3��^��So��R�T����S��+��G7S�Z��0��r����5K: x��0��=+��F~f]م� Y{_�|X��j�&��d�W�RL�3��bC�G9�x/��ũ;um�]��8���8!z�u���?}�>d��"&0]����H�&�C��7�7�����AO��W��bk�d��:���G��ΖZ2\�
��v�b�U[��H�a��6��f��ն�����Ykm�f	�|_<�<ޮ�;M�J�}s��M)p3�,1��ը3�u5�\d袰�,��g�5wF��fu�ou�y����DG��ѧ�kZQ��^q������"l���,<������Ue�����|C3L/�D�GR���RW-��O)z�}�H�;���jc�|9ׄ�F���ϱ!�j�#kL[vI���B��k�ֶ��uR�ۖ�jǡU�-lR��Q=��!���Q��"$y����m��×k�t�,`u���2hnU�j�Q�a��ݰ���w\�Һ���Nݥl�
��V��&�{x*p�em��_k���M�ǁ-!�1��A�@k�^܈���q8j
��p8����f|�mpĎ�\�tL���K6�+y)KG�g5�����4|�	W7�1�x�C/�&������ܪ��}�A���ƬXz��o�srއ��`Z���Z��fŲ�L�	���A�0��AbМ�S�k�Xݑ��6�O�͐�6MP'��u04�W��Z��dK�E_�Q{e�� �s��=�z�P֪�.FW��%���B��?���O�L��*��;�z�gD�� kB��QT�G�N̤��+fSX�c61���=kS�t�Z��p
�?_������mm^1������fɑm�B��ա��e�<���ؒؗ\>ܟ"EmX��b��Wk :����Z��E�e@��yՖoL��v�W������I5U��v]�;�z�Ԓ�Z'�v�y�q�U�+[�&O���N'��ܕ��ݸ������s�7���7)���R�.��/%%򺥔�	�)���ĳyp�g�Ztq������������{���'�X��p�$y"g�g�NH���~�� ��g�P.�r�M b/
�{*���Vc�����g� xS�.B�]"�Z}c�v���H�I.S�M49ҿd�Ǫ�-yG�b����M�P�Gor�&=��$!��	���_n���W+s*؊��Y�d-@��8d�6(�8�00
����Wm,IG����{1���hKj��>�9��#By'�A̾��cg
Q�%|ku[`���K���3d�j�^�����U������f����8X��d���g�:�ś`H{������� �p8�a���`S����#��T>��������� �{a ����n�ԇ��F��L�Ek����3�Ӽ�]��f~��A������Y�_����*ia8�h��̖|��T�:����ҙ��JdFM��?,O���f/�Z1����m����/\2FzH��La	WI,���]�P�}(����7���YLl�    ��d����c\�!.^yX�����eu8A�D��B�������3	���*B��-3�Q��FD顲�"NXD�\�KWYZ�/Ū/�p��W��[�/���.�a��.(I�6J$ �Uj��e��]��v�7��~7�5y�]�	��3�ǰ/�3�����x�|��M6���p P��֌�D��~q詝{Ei��Qb�D)ܼ��m�(!B���>�����
Ĉ�Jf8��lWLl�(>D�����#*�!`HC@��~T�D1}��M����.F�bˑj8� �!!+w~ |%��^\��x���Ǟ[d���M�&
[�����-���y��#��d� ��ͬ�����vg�b�����zq�����,	��ͩq�=f}�b��]dS�;�"R-���H���G�bgx�I��wa�Ed����c(~�=��d�@=����v�[��pf��-�G C{)��˃�T�
�	"p�Tْ�#@����/�^�A�~fݏ��+~ԇ)�ʽ�w�������Vu���� ��A��"���?I��E��QoAz_Ih�|�·E�!Td��y�YTF�@�N�����#?�Gݪ-~��H��<ӂ��x勃���~D��wE���m+�G@>iZ�J-������M�-7��V8o�?I�8�����ۓT�cg?���m/#����-��X��m��l�	�����%�5��s 
JK#q�صj�(�ê���mD�bH9�,��L:�y/���m�9� 1<X��������'y�n�_���!��СǏtԺ��1��@Y�[`T´���q�w���0VKWd5!��<b�WG_���Nu�ո�A�4�7�l�	��!�{�ُ1��I�g��bϫ�hqk"���� c��e���tY�La�;fD}�� ?_cO9�-���_�U�[tG��#r��:���!fYW�j��R��7�E8�k�{��O.�|��U?�fsT��N�Tl�]��1�f>E�f��7�D�v=D���ɮ0t|���qX�62�~-���r�,�Ǵ%���+Y��S2��86FC+�	2��x��zD��|{��Y��Ծ �T�Ƣ?ʞ|����Y}�l`5�`���F�>�����bܮ���1' �jߟ�Y/���$�e�s�P-(Z��/���^�E��?ա�O�A��-g8W��8���5���7�$A�Z��-鼞V	X�8��K��^���=.R�~}�Bx��zȘ��Gv��+�f�1��B�3��j�+�ԩذ���ce��v��{��ƀ�C�Ou�v�v� �^�ا��|���0���e�J�fW>P���GԿ/}1���<����KU�h�HY�`ذ���:2��9Ǜ�pv������dڬ���H2�ՉT����KH=�Y�E�A�K��y�LL�����oHǺ\5�ft��F�8<L��;W�U'T@�4��dw�H�ic7Fg����c[��qY��<���.��)�n��6/�$�_,IlZ�-kL,�U�ZVȽZ��"u ��)f����� U� �e1G�ӿ7�����O�4ip�����r�&lq��i�:�7��̰�P�B]�t�4‶z����"�O"ab�I��vV,'��2�j>8);��E��u$��$g�h��a�N�4b�k	'6��Pɹv���h��x���v�������@2˶Z,a�"�v/���G\�F$��dA����:�������=#�T��'[ӊ%�.x�7�6�!�Rp���ujn���7�6��,���z[B��Y�J�^���P��\�8;�����UD˼��6B�c�?���9�c�v�|`D{��F�o_�)�nB�r4����Rܓ�`̴l��K �a�D�D��ߛ��s��P����ݴ�@X��QB�1���sDϗ��J��� ���0BV���c,4��K�Y��[�yC�lcb�������IhH�8�:8e�x�E|6����걭N�0���lx�Jf:?2[������!��%��K8!�6���jJ��Y�Ո���/�K��2`�p*I��;]*������r��� gIIFJD��u]vU��<�r���\OU���ܝ!R��@�=�����u�Օ-19.��_=�	�5�GxͤM�{#�H ���N6���<��w�?Cu�5 {�ݙv�� ��?���&���>�[�%�_h�3�;�|21�.����p��ۋ�\����V^.d��b쒩�<b���I�"�زA7���H�tU���i,�{�ys��E�Z��u��uz+��w�w_5�����6�-3뀐��\�ҡ�"LlW]c��4�+����	go�Dh`9��zn�}�Бe���uȴ�����eQ�G�d��%SE��t��4�zJgWi�ryL��K��H�͹Bj�߬;g�~��d/`��|�3K׼>"����.��@��I�2���o@��\�l���!�lD�㬺aؑs�@�_�aN{kd�e�Z��ؾ"�x���Y%{�RƷ��C8�p21��L��U�U�Ŷ�eܕ�Fi��|���Z�!��to/r�Sšd������*�bQ�H�k>��T&�,����3�� j�d���b�6Ț���tq\ɥ��:�d�ݟ���wd�keV�S&3�T/.�Rn}I.���7�����E[fB}:�����O�V9V��0._m�o�(6�}�vǌ�DM��Ϊ�y��vG�a��}���$I˔3���㊋]�1���}�٫�@Z��4�&ˠ����;ź�`.���N|Ǭ32&Yx�����W�O���K���z��p��������g��JT-�8i��!V�fW�(��QS�OO�BZ6����g�R�&�m�~�	�Gs��A���/m�ҭ��d.֠e�vU�I���۳��/�[�\�}g�2s�b4��s.s.���3����d৫d����+�+�����U�|2�acaAJ��z�n]��5�?�Y���*�[O-#}�'�Ml��k9�f�®��
�p�7;yQ��[%��g�X�T��1lQ�8�~#���i��3,�����O��Ԗ?�B�$�Tf�
GA��.��b�K��߈q�\-�УIupԜeN�1�L� � hU��_��&s!��љɊƘ��m����6�=͢Bp9�8�;��4:�BK)�r�2�c��X�9���!dv(kѿF4.�N�x!2���>i�W1Hf���d%f'����*Yj��;5�Α���}��Dj�C����6N����&o��O�a�<t�m�T���T��M�F����^��?���YE-���m
�M싡v���0j�!��A�]�=�i2�?���$+�V��>�y�ύ��'r�s{Zi��V֖���٫�А��9����xy���Rr Gn��,�����}~�t%�y5fIq�h-���g5+�3,{-��o>c:�?�@���2��0��;jv�FQꆋ'?=��Ɗ��M�J���1$&�֩�>������R��\�U�/n����Z�lס	�3D�.� �!���/Z�E{c'ކ�R��L���d����n-?�Mm�=���l��[o�wI���K��ʷ��<g�Vv�QJ�;�H��8�mcG�X 3j�r�aȡ;�i��=�v�ao��26N&e�����YK���{��x����ĉF��8�$�E1X��s�Y�&4yz�������=&��(J�ʜCl��}�Ue	.Fn[2�<��$Y}��[�:d�(��S%�q��P`^�c��C�m�{9�X�r�����m3��&l��!�\�j��G�o�3D|��\����p��'3�w�\p)Ç���XG~��809���d�߭}�Lw�%���']ϴ������
��\��^kdNG( /�����Z$���t�6�aK5�ڰ�y<bw��H�f��(���tWo�ӭ^>��7k*Gg�m1�޺��Dj �߾<�Ĺ�$�����V,Ӫ����� �^�S����+�5���J�X�$S,�``�RK�qP�:���H"���-�"�4�_7��4ߗ�Ջ    �La
)&���Y����]&_
'x�-81��M�m&�}����B�$�����0��v����G&f\"-b�E�J�֯@�n�S#���"�oq�=be������C�iJ��fg
s�R��N�+��w�-�
��
�z�e���˕S;Y�r��{Y��&Gu�8U�a�/>h�������r�������赱骦L�E�:�5���� �ڬ�~�W_{X\d^���iw����������/a��&�9M�K=�ҷw�>���#����D���`�Dܺ6�d�Bо��ͦ:�����>�����=+k�.3�(��c�x�<Ŧ�|��bxft�d���7eN,�e��'P<8�.��3���qbE����������J��T��>4rbA���;�½�Gᙇ����/@L'=�ˇ���,y�P�"��Zk��d������o�*A�'����8�d�_�b���t���� �i�ס�iqQ0}LQ���_�4#.�O���K8,�;�sx�޵$�h���|�-�4�I�m
�Y} B�Q4.S-��sc��E!���LA"I%Z�ݣ�W�l��,�I[Oe3���"��@.��i_��Y8W^�ˤ��~�Є[&[92��K¹�/����Cw^�!�_v9H�?���P�3�{��?.��/ﾙ�%g�)<K����[��IQy�q#7�_i�a�8�8"�1��{u�O ��4��`7@`݊�F<�B ��B�9�L�<W�e�dK�M�6P�{d����e�4z#�2�i[>ű�O��-�����ժ[`Y!�;���lӗ�A�\x�[�e�9�n���7 �T߭�*FZ�S����ŏ�G̯���;���Ns��Z�'���b.�3��bI�dJ����B�|��3޳�Qx.�V~��7V����so�����0�R)LwJ	�Tu�'���wO{��U��n�rB�Q-��g��Ȼ�Y$���ʇ-c�a	�K��g��;�u聐����e��R+B�����m@v�~u�6�$�E�CY�R�L�	�����7��Ԓ�2���ٜ������Y����ɺm���咏L`ҚC��X`�?,��<���RYz9��dA�8ʳ�Q)΁�0���%s��}g���nJI����F}C�����zنmoH3y����h�������K*����x��JU8[��:{ �\�)��õ�r���Z)#�^�-O����K��ٶ�
tVɹ~q\�������lt{v�xx%=��jP������T/�4lzaR���G���֡񴹴s��̮�}Z2�W\�G[���M"��gH��gp������_<��ú��������Oѷ�[%���b9�2Y��-A/K[�"�ф���Kc(i����6�VcCb!AV��]�>�~!Cx��ܢ����h9js�t�]Ɛ�$qy��l��|E4���>�"Z�Cp�GV?A�󧇆��m�8�-�,*�.���m�+�c\�-���0�5�b��Y+x�t�hcv��f-l�W���M�\���떏�H�������E�q2�M�5c�H�3��P�U��x��ۺN���S�pO��1�p�c���P�k��o��Z��]q�1���^����aX���������D'���ضG����@���c�ƘҊ�b�ܿ癞�<�R��V����n`1Ʊ��u2�L��&��[#�$l�nq�x���<.
l8��������M:���{`d�LVhfnw�4���� �9!�/[#��g�!oN���6���H������c(vO���z�f@XCF��Yf۹��%c � ���t���������^r�'�)����r ���#��`D4bL���F&=�T��_�/��Y�y��;��S2�����8)LmJJ<�اj��Y�&[Ni��SWL��5�V0�c��˧�`�=YX� D�Rm�K^p,Bt�Ώ�fa�*_"��;i�a1�O�\��_%:%��]*�d*�d
� �
@xҳf����6�)D!���m�f�ݰ4X�V�(��奟�ƮF�XT�g��6�Q�{906xd=>:�ͮ���=GqJh��Y,r&9�;�ba��ϥ?��ջ槅S��^�l�WoҺX�ofS^ĆD+*Y+���q��|�?�J��c�O����*T��{ �˿ Bn	��%%��nO��ɱΗ)������<H�5��L~qR��p�a�����F]V��ٮ/�O����6NS#�)U�a2�Ń#�=�\��7���
7'���j�Ip����K�>]�\��I�9Rlu^�hu�m����"�����e� �5a�ja����!��1<��n�u!47ф�Т|�)
o��������o3�y%X���د��Nma:���������81�θd������̾lLhu�S�ɍt�ȧ�e�<.�֭;ǚc�����\��wcu�|s�&6"U�e3P<C}�k�_�v\d�!��p:�FmǞ�e��kAq6B��&���.�a­ �~��V�Ź�)$��,ڨw��{tI���N&:I��I�j�h�Q��\�.LS$�-�]JIQ���ъ�:�|3R�x��+�[�I�@Z�e%�ν�Hс(�:��D�1��`��|i�&{ѶI)��FceA�Q��᳋Tlw��n�oǺ_z5�s�VO	WE�ɡۘ8�3�d��l�`��D.1�����H�r�Q���0X���b�W��yu߃����P�M�[�#r�����j,�"�Y�Lz'օ��f7�rafI�n�X�Ǥ."'����^��;n���.�J"���^�K�[�USk�5O1SeɓHL��G��./ �[kK4��0�}�%��&]YA|�%ޯ�d����K.�cϱ~�?�a�6 �[�=�k̏�o��_��F}z���߷�x<
ȱ	��u6[�-)]y��x���̞K&��˧֝͹�g����C�{Q@�JY�Co��?cn�p4���܂��MATC,��12� �a�M��C#-���T���?GE3��v�|h��fKʔ�}`�G2�Qo}\o���{�G�c1Dl�+�����[D���&�
9:� �
�컅B:���DR���Q���=F_ <K���� �K)f�b�f�/f��㹴�-h6L���[������92C0����������$�8�1V
�TX�*wC:ߛ։�;�-|']�B4Aݎ�� Yz�^�.E
�m�8����F˶���v5Ţ���bXI!�wv�3��b�5^<[�}V��!� .�pbm[��I�N���>Pܗ�$5���q\�߾ŔJ�nߊ`��-�Ś^����|x�xf����$_haf��d�b[?�U����Ӗ�~����jcc;.-C{��qq�:0�E�p��τ��xs�9�&#VQ�XdެX�n2Ѭ0���l=�R����)תn�e^c��''��p�٢y�I�zK�����%U�S;8-���[c~!����37�#ɴc�������
�bq�*l����H�NO����pBc-5�t$f4?�r���s��!�R��P�ʍ� K��\�7�hHo�󑬍A�4�ґS�0}'�t�=2̅<�TK��5���Чm;,����]�<�6�+Y��R?dߐ:�g�� UT(��|��4���'�dh�D�ݕZ)�d�;γ�Jv!l;�.P"��Y��w��?��V[?	UqR�J�]�7���Xj��<v��8!��]�b�읐���|�~����Z���[>�3A�cZ����l��d��|���N��=I������ػ�S;�I��v���j@�>�WR��mv�Z��b��k1WMՃ(�AѪ&��.I��.��UHC��qCg=S�Î�V`�FCXJGk��b�^mL�x���k
��j<�>�w�/��Ws�����1ޔ���1����YEk�h���8m^����>��-d���|��',&֗����@�D�C8����R�=-�l���B��|\\X~���`�d����Z������X��ܥ���a����aӻA�%V��0�u��b�g2	J��o�.���G|����>�tK����bj���s8�>D    ��˽4��4k�a�5�/&%�r�4Fk��Ќ���]ݮ >����0�-r+�I��,K�,�8�^M��c/�X�C,¾Z*�sI�����'�\�B�7�?A���<,l`t��6s�z� �FY��=g�r2ZvICq�ԷRY�03��H�b� ��ʉN�L]��1��b�(����9&S~�&܈�l��zW����9R�;��ql���&���8l��H���.c�r0V�q!�&�p�1'=��e�a�e��O
����@��:���a`���V��BK
��qBo"�F��-�d���j���C�zW_�LN�=)�}9���ɉdW��ތ�c���n���'55l�)���V���������Qć(ʿ Dj ~����޷�bI7�F��wWѷ!�iV��d�/�u�Q1*���v�y��̅�D-t9���z�U��q2'���)�����ͺ�Fm?yPs��K�TV���#�e�Y��%b���O�	�r���(���=�Ѭ��µ��7�6�L��D
<��J�����g�N��<9�J܈B
�vD�W ����L���e��6Pt��[ˣ	+��C�y�<x���
���`��4q��:7l���(�m3}�3�SQ�Hg�9�G?v|�L�Iv:����Sg[���jOW阹��Y�1V�B�ɩ���)+��k�7~)f[��Z�\|_�z�|3�̯�w5xXr��53�f q+�j��g��D�ʐ,J�I���%*Jߒ���sU>'Q��,XNȢ.ZQ��QP�t�f�;��3���,s4�[l��������rzL��p��aYũklø��dX7��c�@��lչ<2|��������?����\X��w9ӵM�jD�lh䏾Ԣ�ISvI 6{�ݒ�կ�'�y���q"$�+^� ��A�QR��yk���6�˘]�p
A�V��D��q��k@���Є��!�G��P�?����Rc3�:�]�{ן�7Az����`�3R�t�l�r���n���*>ܰ9n�5}Ů��^�#4[a��j`��6��?J�D���؍Yz~�D1.OmH��߅?��WU���0��z|��>�}nх#8�/x)T�"�f8�j��� �"����:ϳ���҂����|�����y��-F�6�,�3kٜ肺�(:1�m�č�̶V�ى��Taκ[V�R{L��v�o�1-�D^H�nmT���+�O���)�߇�T}���@8����IJ�{�f��~�?G�r��lu�9����#��f�^ъ�|��A�ǐ��C������wm�U���Dk�]yz�`3�����`3�X����{�|fDq���\i�c-V_Y�>��IbnBpv�5|ܯ��[u��y�6ڼ�<�;e�0��U�N��#-] |�T�y$E|d�������LI�ԍ�ы���t-��_p��E�9�ƾ;^c�zi����iij&�i�-B��Ke��rm�o��0}h����W�J��dC�n�Y�I�+�A�e��b)d����β��ˉN��7��C��W�y�~A0���M,��ec�!x75�O4���#5mr�|)IQ\�9��Ė���Pw�e�@�5�k��(@�� v;
�N9�8V�ug\��ߢ4�w߮kn-�)�������y�H���Z��T{�e�g2˅]Fj�I&�%W"��c��T�8�-�H�FɅ�#���l�f.F�.f�ֲ�.maZKD�?��M^!�\��b7��3�A�S���s� �]*)��� W�/�?�`W2-��AZ��S�e���*-sw$��k .����.έC��F������|A��j����&_`�=[I��N��WD5@���@x�oO��Hb�ZKJ�7�T�Dܯ�<ּ
���)�v���]z�BZ!\�$�{��Y%e:�$kJ��ޮ��Nnp~jݷ�r�^
6��9[�[jܚb���Ų,p����c_�.ڏ�~{,��R�#��2T�vi�c�[������3�u�+�.�BWb aj��ћy�	vMZv�����w;��0�C�r!�������%��>"_�O�m<�sQ蘴���sTv%��D�������x���,�f�\x�M��,�t%��8���3l����Κ8�6q?z�IMq]^K���RA�V�Mʂ{4,�}kc@i�Y��L����gno��&ǜ�0B�����b]?��&���BR��8�������sRYa�<pc6T�B���k[D�h�6m��׍�p�3���˜���������!�lBF���Tj?!��M����?�f�~�yre�J�Z�s�l5�3� ������{zO��8��t%
;cߔ��@3��1����A��=�7J���9�(�G|11��W�x4��5Q�<'H�[0��}#�C7\�g����r�9��m�?Gj�qA�c�ݚ�XO��_����*�U_9�pC��Ω���,��M	�;�w�,`��^H��2�P�~���k[����c�x[W-%+�r�Z�;}�P�
�)6�^�&k��� ,���p�.m�68��{�8 ~ܠIh�ΉD��k0����N�\SԊ�G�;d���Q0u�����)VDF|sZ�����Z*W�4ק]�R�-U���/���M\ѼkVlݰ�?aReI#0ܼ�W�l��/�C2gQ�3�.͂�m��z)���|"bV6��:D��p�Ji �ʱXT^q�ݛ�G�f��sr}y��ҵ-}%�d����.8DB������(��㺅�M}�˛/���o�8ҧ���R��*iޠ�eN�s�Z���x�7Gu+���Ē���e)yD�q�Ď2l�ns��/���5k9�$sR�Fh0����2-af��CľT�9o��q:�?� gr��Wą4�lC���2�I���{��\"�H�l^G bLu���1��(C�V�_)���⪏Bo	�������aZ�� ܌��G�g=B���s��@m ��MM� &v�8uZ���Y!��:�<�b��F'�4vE�� l�N�<eS�Y���� `MD���e�;�"}N������Au*Aw-���jϔ�|0kLr�R�J{�%�W�v��M�EF��>_�Bι��4�T��rv�h�� B��V��m�cq=+G�3�`�֒��᮹��-�!��q}uL.'!��.p��b �۪�8E�?1��|>]f.QGC�rY�-���˺�m	�n�����\���g��#H�lӉ���TDH�/U������z`f�kd�\j
�����1a�5o�i0JsL#7&ows�W S�O� ��Ƹl���^OR����НZ7^�Vri:��O�drə/�9�n�j�,ϻ��j��
Hٻ�b�����`�>��6a�S*��w�����!$V2_���x�M.Ы�V��|Ď@Ifx&��	A���RV�>�&�P<K��,�ږ����ӞgC���`?��q"ԍx1���� jq���1�x7���0#;�����T-�z��+�"��&re��b�. �WK�e��l@�&~g���n���[a����ˉ��X��;�v�<dT��$r���8X����nj	���K��lA�-��Ե[J���唘6~f���\N~��8�W(7�w�h	�m��0��(9�����,�����p�۳7;��(�1����<�m�*�l���#��1ѵ�r.�Ə�)�V鋖�9MzrK�r�g�A]�	��=��u����9FuWcJ�����kJhR��:��r��b�Q��z������.��O��"��pIɳ���	j8n�s<)j�|�j8��	U:S�^|�/q�ބ�)+�^S�J'���Ckt��jêv��
3����Zbbś\�f�BJ���:�죺q/�����p��-6dNo����oRU��9�j����.��h���(|�l�����.A�d�<-�x�m�H�p��j�>�|3�w�]��L�xd��Uv�$��QC���w�"¸���p��dr��Dax�6h�ރD��m�5G�("��tg��qGPزsȕ��@����+4R]������n�s�l�f{
=*�H�x�a�`���l��>7�3�R#�nD;&.x    ���%㇊�ut����`���%PIRv�*Xl�x=U
lu�ԕ� ?U��| r�h�K���&�h��c`��,�1�������cD؞m���Js:�R�&���M�IUD� K�W>��7Q!]ML�s�.Iaj[�}Tr�؂y�����qT�b�SݭHn�
��#P)�G�Eðf '[��p����<��{�`��APTjW�m�f���%Gx����B�j���T��}�?g��6}	��-~2�Yl�<�Zع�N�R~F$/˖���D����&�J�R�5�
N�Q�MS,+�HVj����|�U��;�a�7�F}@�}D����/�0��8��_͸��X��ˊ��?��	t�w�g�CU�q%0��햮����L�_�B���o?9M!X��4�gu:(�c��Vd�bw��lLa�,��+�Lo�P���Xf�Y,���V����g��`.Z�j�DӍn�R"��'K��`X$��v(9"r�׎�0����/z�"���������]�VN��VS�9p��#���2p��,���g=�rˑ��lN�sV��*{�p;���������FR��8���[r�ޝl��ܫ��e������ ��ި���l���4�l� <{7�o-!�]��1���ů�8��z@�LeKY�Y6I�d�FR��-4'7�m�����`kRSCR>�ڻ�p[\�T*����~����J�f���� 6���X�1�t�fu8o��Yg�G>�\(�/�`�K>��%�uٌ�<��������1�W�`o��9�m�E��+{BAxbd~�J=�rՊH�����c�,�p�s-;_M���
C@�ZY[�Z��]�uV�M�>H�`v����0�s֡��z�'��Q�M�]�#��\�loZ@��2yc��A|�.�q�f,���d�Q^�tp���31!�ǲ��U�rd��aY����'1&��Q�������e��KBz1�W[ƻ�ȉu�|W��A_�+�MK�HH ʮ��I7�/M��S-��fY��}*�������+��>b��uq�p�)����A������7�d�d��aŘ������C]�Y&AK:b�4A���R�,#�,s�rҧB�h��2u�%��ͫi��L�+[J�'�g����D�2cX�F�6n#�Ugǋ���}�_�#ݤO�6f�)(�ᶾ/�9FA����d�3�܎ʵ�����q��]!���,�囇�����D�l���(��&�;8Ȃ���^��/��m�4NX+,VG}a}҄����cs=o���Xs�� <�R��K+�^ǂ[o���)�ZT��:95��0���ǝ��}�X�G$���:I`$V鬳�K����h�}&Ks����&�T��|��G%����������o���3��E����u�S���Μ��-��L��s��c��<1�;�~|�9?��5���t�� �Us����c�ѫ�~|�X�=~�=�`&_h��T�GȘ�^�St�ܶO0�"�V�!�A�Ơ���&7P�n����y�RQגd�5F-����I)�zo�e�)�ά3���cLW]�\o'�2���
�^b�z�6[�Y ��_ �~����9\�6�o�l�硄���#��
�/�i��A�iqŜ<����~�,Wu~�e���r����3�D~� ���-�L��m7.V\�E��j��gԊAm`���w�c��6?�O��b>?Jia9���8HE2|�uyُ���ݯ���J��TBj"Ʌ�n���=�IoIRg�~���ŭ��v�d���5�7���ۦ�.�0[�9�%��o8�P�Ç�;pmx&�`|���6Ј�vx��``9U�7,�P�X�����(��
_�m�l�[�> d�����BqY
6Ӻo���0�}y�Jg&[�/�kk~���X�`/AO���:��IQ�˾Mz��	ߞ�U���D|E�v���:rk�fp��a��k�r,9�j���o�@P8�BE2�D�Dl�������l�[)��mn���	j�xsJ��	{|N�*e�O0ݹ�c b�j��3鞔���ԽWdi���)��+�[8�w�j�j�ً����%g��%K��854�T���v��$���d�c�;��9�ٓÜR����P�ƫ+j�̲@n*'O�~˱pR��a�����T��0]������jN�c+�B7#>�S�$.�J#�.o+ ��rs�>�{����WM"��ˤ���YxV�bZ	��+�1DC�����r���9|��]���v5�}kߣ:}��;���l���<���h��RfI�~��ݺ��_�i}�F���#����Kk	{ X�/���?*{�6@��߮�=�A\�.s�� _	st�X�ө��z6<B@W*'��M\H�+��S����������1�Es[ii�h��l3V
�6qlC��~����Bں��Ŧ��6T����@7#���!Z'W���92�v"U�F>�{h�>�D��!H�Zbtˊ�]*���F;4�����\\g�\�]	�tu+���1�3�g���
���T��)���Ǐ��c0:y�o��9������?�G� r��lK>�s�aE��c��9D҂O�z'��&�1��on7��W��:J�L��:���}.���H�:�XڎV��-���B�GK��7�X]l@p�}�wɥ�U.�.����5߷�ml刀+9��[�V����آۀp��x��/R��$&�3��ˠ#�tYt�&�Hd�y���"J�j bt�����iPkj+�W�V}t�ܲ8�l�;Pϰ�)�݊BHz �x�&
NI�Œi�I�ڭ��#�i��n`���qu;H�U������,�?�b�~蔸�.W�Ⱥ+A7\����@Z�Y�"DQ�@�p!椿,R^A|\>�����<
SmK{EAK��^����}�f���9P�	���lWPu�2J{\�9�͟U�$s������s��:~��<ǚu�p�[8�����H�I�!�{�wMJ�8i/�6�T�궓��؆�j��Z�|� XWE�PP����H֞���qI6P��g�}c(~�"
�/WWe�Lv�;p�va?^�DW5���K�L�x�n�Y�u��@��;|+�*j�1Ǉ`�F	GA2�����1�����a��y�9�>��q5�Yɛ��^7� -��s�y!U����[��,����"cq�N}"]�6�)�:Ñ��s��ү�@�I����u����	�p�U�K�.��y�>���Sc0�;�<>�ܥ$�!4�)�����G��m�]��*���bQc�� �i3m5�� "�5���Z�&Ѵ����C�޺,�\-���'IZJ#�8K0L`*��~�q%~Z��9�mı=�n�]�H�E�R�������ƨҊ���x�q�d5�=�L@�5K�s�(�ۀ�u#�u��R���͋���Xʊ�Jr��/4C������b��J|D8N�� �Nvc�,^�r��т I���jq������UF��o�ݭ��6�dj�o�ټY�e�=EY����}�4�\���3��ev��Q�VW�7a�#淳)#�3��̦�c�'w���g�\Hju����TH�fC��t�F�b��i��\4��o*��X �Pc}����~�Ć"R��U����ߑ?�怜���8%P^�J��ˍ��׸�C$ٝ~���V��ƚ)�8����2�%Q��1����*}�3�yNu�Th���m*�
x��kr�#<)����pL6C-�!ZK.�]�!ϖ1*?��dP<Ap�,�]��U���g��a�Ӄv�2s���)�zfa.�AH�=%�䮿J��J7�7��(�!��Yj(�QDA��?�l�ܚ���D�g�+
�����8q���i��ej7'�aư|��Ax�E��'��(��<��e猗/��� ���K��K����4�O!{믫�ӄ��IH�j�A���g![�l����TK��(Aj���.h�.Qš5h.�A�-\����O�u�S�[C�'t�a��!�a󚯻X
�j�^|5?��%]��F�N�C� ,����y6+��|$ɋq�F���Q�W��    ���LS�q<��*���S��R �����Cvq*�q�de�%��bO�H�A�62xi����싁�]���],�Koj�L��_%��nZ�3��J�V8)�l��*NВ��O��dc�ob �� ������i-������r��.�O�Ͽ�J��.co��Qt=���*�~(Y�谲�v�W� �
b����_Y�u��y}YmI���G
=�!"J���Y��/ڣ.���S�Ą �![T�R�b��+~7�������E�Z�|ja|����~�~��&����̛.Os�l+�/΀�mS�;_�	���m�O����%�1�5P^�$}�芨�B]!��"��Ǌ�E�]p���D���8�q_�Y��Gs.=sp&"[�|vA]�.dk�~gkX�s^	��(]k.����|�S��M��Jm]����p�}#U�~�k��\\��I����>�1��r�q�<I:��@��{��h��^۬gI�`�_FM�<�)�����d������BW�hƬ��W���MJ~�KIm�|�d2�z�u�x���#RM����%4��H����&W����!b���TK�L�R�{ Kq�n<H�RA�#���R�9���L�Sɳ���-���(����rW�k�? �֞��ད.� � �S���#(�Zߦ�v�ŷ��R�]��1�x s�Sm�S[�?"�Q8jO�+	���q�w.���Y�Y���a����7�!ݗb�c��s*��c�}��(�ĐR&X2�3�>��gˍ+�1��,�j[�U������c'�Rm�^L⨻����f]��ß0���/��԰l�k\._ÚJ�TUb9_�$�p����$),�;��"Dwҹ�{z�s*f�0��������4c��_�Qs�\?#�Q�C�T�'ߏ��{H��]�)�ћ\čN!�'A�!�#H���&9J�X}(A&9>"Ӳ�z~F݄8.���N�AM%�bY����,�ι/p,��"�$�=��XU~���������,nMtN����U���V'=�4�<�0���f%�dV ���H�����K�GRe�;~�F>��+�:����b#[C�O�9c���mN!rgg(x�n��ψnaW�x�N��Z�z���*�bl�0��Ù�j�0���_m�p��� 3��Y�^R<�����,Z���b6u2�Ww�/���<O㡤rn�{N��}Oy���ˏ� �Hu8~oZ�YkWlj�� ���н��L��H��,��>�$����js����J���.����}�Ԧ����}��h��־L3���\�_o����8-�@ђ��Z2%���l~�֤����]�*����9�7 �	��PE'��J�'���,��8�0���&�y&�F\�_3Y��������x����E6I�G8�z��ӊ�c�霩~ǚ�N1�����,V�U��&�*|�]�ް� ���k����פŘ6������rB�J=@Y��/c?jq)�ݎ���C�4�vK���׵�º���b
[�,�b	JR1>s���m0�t�r��4'e�\(�aH��I���Ww�]RI��c�'�AIb,�П5��?I��vldĎ�
I�D㓾j\�~6�c���iI��r�pz���*q�������3�m���5J�a<�5L�F��(<¢G�A��P��қ��mkn`~�Id���Ѭ��w�X@�B��Kbe �A�|N*n�Lr�1��k�k��^���t��=�y���r�b��2S�C0�?sC���d\Eܙ�.&�v+ŶGY���z�_��<+�W8����t�N�d��k�_I��������Ֆ�<�dO_Q$C
%��`0��a��}^J��%0��Fd��щ��K�u�k�5zhh�B]���Ϟ�*��:�f&� #S&��䀁p�C쉘ᤓp�<Wlmx��To�|
�tb�Y��=��cl��Y�1�����V�c�s�m$��fѲ��bEۣ/!�=����:J�%y�etD�� ���4�v^��Z��lU0;o�z�3���{�p���Jv������ n\`��%��3=���_��M7k��1L��UJ���uj�k�u����p5/L�>��n��ή\�D��Xb��zm'G��5��L�E6;�^�5��V�{�}{�(���n��ۢ���?�����3���IK>�UO�x�e���{@�%X�E�%��`��)1�k]M=�s��甴"{u=ܞ"y#��(��m���c�$"�t�RZ���>�g�--v�#W$Q�́�7w:���6��jlf/!2��p�����J�g��A�gY�s�����{��B����%��#6P��-�/�r?����P�?G��CJɇO Xf��5�0̯��V0�ph:嶸����KL&�o�ih\���3��X욤*�EG����D|(X���c�DS4�w�'xF��[��BJ�f�B��c�~��p���}S��)_�G��TW�g��I_�S��d��&S����h�}4�"ȱ�0y1�DC�r�p���`��%�3|Y�vg�ٳ[5��kz.����Ǚ&���O*l��n%y�zد�<��� 5f�Ph�yQ�7%�q�D X���oZ�`'���L�"m��{��!����F]�t�P?�qjS��H��S��;�/��jB��Tl��e��O�2Ѭ�pT��B$�G�._��o�}�i�k�� H����.�~u�}}P�K9��O���h,��jw���ovT��&A�J%�(��QB�|��l_�}5�y�	��'�19�ir�pw_.���u�dz4#	3Uz���~]����w��9V�M��e��벌�.6�8�%YV�1N�گ�5���JY���x��X�R�̊W!����O��U8lu��Q����ڣ�l��ۙ>NC�����D���e]�5�韹��"���V[��ўۺ>�t޾?��Â�D��'���{��K�Gxv)��z�
O�gIlq�Vo���Y��4�/��sq�z
O�X�<�u���WW� ��h+b�i9Q��[%A̋i�E�=y�_!�p�I�mS�f���gܗ�i�1���޾[����1nɷ�Vf���	�wDl 8��ۖ�l��S�.�K9df����{�xy���Ŗ����_��}eL���$&`���A�b�HY<̫�K��o۽���־���n_l�ic'���'a�)�W�Lm�Y%�8�.8vj$vF%v%i!���b���m����	6�І���� l�S�0>�V��ڑ�v���^���ݲ�(B?�适���a-A�Y8�k�A�3t?�T�K����ӭ�����Kbb^��X�)cLB��Ghҗ���f��c�d���{� ��y'j9ɛ*�Zzg94"��v$u�-IMi&�h�����@A�L���]�h5�Wxtd����wȈ���!#.�=���m<qnY���F�R��Y=�+�-`��f!ﾑd��6�3QL���������Fhc��2�n&{Xb��e���V��S$1�B���"S:y��q��0�:�+�8B�rƠ���Xm�V=��7l?���*��!fo�V�'�����!2#\�(8�8�ք��<����Ϫ��Ȧ�*'��޻KbB�����ǥ�@;mOczVn���}����U9�_�Z������=��	bL/%���H �%S�=@G�u6=��	bT/����[���<�����j���
�=4�.�i��$�d�O��jٶ����Ӝ���~����"	?&���v��k^��|�-wp�_Q���*|�!�T���<&3r4%��<P���t���zC+�M� 
��r'��  ��7�xB\!���t[}�w�0B�ª��m#IGŗ1�?" �m�F����!��>��9/��H�#1|���& ���Ux{{Ӟ���C�E����Smb1�������,�:E64yx2��WL[�I˚n���gYf������E�b���x�@
$���S�R�~����:ʲI�̲*5��3����B9��0����8��K���G�|��m�ʿ�'���{k�>6�a&��3nS��N@HA�    ��o�A�c]���ɇ�t�	��?��d�:tU��͢ij���ON��D ?If�;���
�C�D8��5P�-�*�L]����2,3��Y��:[�E���$ ����S���	�+�4k[�>�"e臥8x���sף������ؤ��щ�ݺ�}K��:V��z�M��>�7O[�?/���pnʾ؀>胗�{�n)��<�#���!;o^_K�b�].��,�?:��7u�1�s]��	p��-��IL�Q>���'4�Gl�|5}7Be�mr���\�/�����u^�.��9$kYRiv)����	�^K�x��T C:~9�)	`B���C 0rfE"���#�&H����f`���ئ�����m�N�`�q�ŇA@�c2πqC�+�2|�I�!�׽�3�{.��&j��)���B����Y�}�X�]����k���2�ʮ۔R�m&֏"rŋ�Mw�gNR�������`�����>��5+�v�lN���l��)}� �\�Q'_���S�H�r�����9�4���yǙ�>7Rp})����b�^��8�+P8�y����	�Q�*Do��3�ҁK~��Ήf��U��Y���,ĝ/9�������˶�O��JD�c0�1�����[j;Y�]^�׭p�X���gz�&f����>�3�N����j�a���c�ZR�������X��R���ɦL
#�;���]Z��걭ވ�oN���<u�E��Y%#�h��yj�2�XM��-�1	��  e��f;	����)[f�I�3��K��@P��$�_4��B�GJً���mNjNζ����G(/e�%�<�`��J��{�5���'p8s��}��1��M�!K9	_<Q�]��=��zo�/#��E�\,9�n��w�J"ʃ5�+�Z�{�*�l�n�����^���h)!,��>$ӥ�M����6f�2����ٞ����u3�B,�W�)�IO�BHf/V��`'��\zmy>�$F߰��_A����4B�Y�`E'V�2����]���Lܪ�cۋN@�Vz:�+W��F���`;Yj��Wd6������?t����A���Q���1���OO����W��"�c5^Y;z�E�*��y�D�d8;L�O!�����a�w֚z�f���c�;�:�z�3�^3�_�b;���ܗ��ۂ8o�4
�J ��Dv�$٘�ϧ��af��RC��2��ϕ����>���Q�Mo�S��=_��c�@�
d�Ѧ���=�0�Ȫ����'���wv�i�|s��c]L�WH�X�3���H �[S�a��ҝ��ʆ˶d�!�f��'�:��R>ä� ��ձj��_Z-�}�Xߵ�?���I
F�s�?����)D�m�am߆�veX�t݅�G�%��IO�?���us0�nm�>�Iݵ��C�E� �#�L����f��c���f{��X�����o�_�m���+��y��������:GbA�b���a<�~�Y����7�۝+�r$[L�<�Tն�OG{���tsB�	J7�v���?8)D\�cKq�ɠ{б]+�0vN�N�="��v�@s�zmn=����������N�;�9.-������E
���̝��U�#9�vEB��|�oqP9�)��T�28���*�F_��|xt�2�HЁ�����`��W�g�[p��U���������l��q�$����J_KhInu�/���vגP<	�"ڣ@Ε���+�ue��Z/��A}6���$�̌���(���5�#���l�=�q��wֵv�@�x�9�����wέ�j�A�͏�$�"�g������%NR�I�8
xn�GN�S �WE授y��ܕ�Yׯ�.:�K����Ub@�\��̿7��CRx�fۨX](���;W�#�/R�#������SNI4����)>�I{�;������v��4Փ�D��[���^Z�!B0�W��!��}�!)G��iݫXL��O �� �4 X��^��8�j�9\,���K`�ʛ����[ܵ��Q�og/��~U�ŐXAB��A�!A��?l��'�!�u��>���t����������c�+X��2JB4p�oP��`�07�c$�P|�������;�oc��@�ĭD]L_�GKu*A��wǎvEE�"�#+��8� ��5�{��5���'O��rFߍ"��7��ȊC[���S����6Y����"P��K;����OS�m'�1?��X}°�Kh+t`|D���������,e�)�\�xVi�̔����t��w�c�?7���
��8�Fk1Xi^�nIے�I#4����A:��"�H-��B�l��$.��V���M �ax��@�].�6o�<��!x��V��$V�&�6_���wlA�WM�rM�8p 4�Ua���v0PѰU�
y
*�G!��_�Ej�#/�uX3���< �'2<�@��$ QR�Ek[ ��d��l5�m���Sm���5\��׆�nT[��H��<�3�P��rVu�� �}�%$����C���Q���_�rۊg�V�JX�㽸
�M"�󩝿k�OOc���7U��"�J�'hJ��wcPSy;�M_�[v^���Q�t`l��Um�&/���nY���"������#T�a�����0.1ÎɅqy`�ܥLߙ-�IbȝC
#A�X��%A�Gb���+�H&�Wa�H���5�4ju��)�<��M��X������_�u�Ui&�_#c�\���+�*f�Y���\C�ۃ�tٖ�m�gU'��K�G�J藤��	'���H-�������#$7�Oy	��66n��$)���Ic��M����:^)U��D����b�TZ�ir�5�0S�GkB60�%������n��0��g�"��o;rI!�V���ɇm��u �5l�l�'��K
��/n��P�[��A������&�YX��e��Rh QO@<�eV\BV8�KQ�������\Nő(�/�2��y��ȷ[��f"uc�S6,R�@$��]q�@؃t�6�N��&���}'^�8D��� ����V���TB�	/���D�����@r������<��?��Ad�n��U�`-2`�f�7�a+I�K���q�C��1�1�٦�6ZxH�q ���uG��%`�: @�e��w�na�]#�P-�`qD�߯�,�W=�˶n���/�	F��!�����0�0<?ݭ�f{�JF�u169 �7P?LŠ�G���#�JE1����k�d��y�Dc��$vr��s��t�4}�������O���t~����6J�6��Vr$ �.�Tީ@4��J��)���>�4�o� ����)�]X-#aa�2Dh"0M���v�F��R�&'f4T���b-�l�ـ�Z�m��v�܄\"������$�:�q��6�Q�	uf��U���|?	�h{�=�z-��ֻ�ST:+�A��g�>���D���V���M��c0�X�\k@�������u�����P񔪔A�`�'/#;�d�j�o3�pR-����vČ8JW�2T;�1�D޿j]E����G�pP�����'׼�k5��'��\���<�̀�hX��B�@3�©e?��mk�ͥ~��T�[#�_I8�!̎�-c �֠[�My����i��c �b	�+Z�5d_g��(HQ��a�ߧ��G����aPc8b�F7� 4wӔr�����	jt����*pB��g	��K?�}s 5�r�0�mqa�?^�1�?�6����]ߋ��B)U�)Ffeltc��� g'Qf[�њ�|ދ�C)�E��D:��W������q)HK��˸����8��L#D}+�З@����ʥ��2�2P��7:C�~�-6z>'J����g��<����+�W|�"U]�@���Y��_����N}�X�O��04��"a[D=���l'πI��o�wZ�+3�$.Ekk)a�)����4����p�[�2n�� �   6��*�ó|���>~9Xq`卤�E��M��`�G��������$=�A�Y��@�	vӯ-�ڿ[NAV�'B�D?~�Q������宄fugx*��]���3Z����$�OF�24I�����v
�^�<	�
sB��CK���O��`�	��Ƽ�QH��j:�yZ�l�$����l�={�/�{6B      K   T  x��TK��4>w��V�K<��Ϝ.�8��鍦;%�i5�����+@⌄�x~��Q��y-b�m��J���l����a��=}w֬�8��+	��:K����|D\�d�w{}r�L�h	t�h%e�hŞP�U���ł���
̠j�g�ۼE�.�H_��ҍ�v��d;�Ǉ˵�VwA�̞�x2U'�z����Ǎ��XN�-CYo�q�d6�6L�dĭ�'C�S�w`�F1Q���1e�y[��V�3*r�/1���ѳJ�JR��M���0�1����M�_���"}���S.?�O2nn������;��Kła&x�Ѡ��y���,}�^,�����G�)��~Mfw���j�,����H>��2LTTV���6"�+�*j�fY5��y���3r��ڗj��G7��Y���ص�w��Z)��������a�ܪ��,β�|�6G������{�>�~�R�V7�\n�e�K�hh����(��:`t]|���ȦxWw�6������S��KW ��Z}��4�Z�&R�K^����K�����H#��^}��z�]�ܫ-�}ϊ��6(b�2���}5�{!v;����'Uq��}���֐�oN;n���4!�٢u���$����~y��n�_����6a�7;��mm����VӺP�[+W4 !G�M24�z���ƚ�8'�u�%Բi8~Q+mj�v�U[2���Z�ij�(��Vr#�b@� �u���d+U"X�(*����x�Fغ65崵�u57�8)��@e�j)S�J��d^q���G�U`)0'�{�.0!��f�y��@���|0�_֦�Y5J����6��      M      x������ � �      u   v  x���A�� �u8E�� �1p���9�P�I�6Y���)��%-X�n��iE�{"W�!��B2+N�f�]��c��}�L]�KjG�"�>D���nG�D-r��(�Y��:NLԩ����)ǌ�� ��z��sL��86��K�Ј��?$c�XN�AV5]�9
�s&���¯��X�����_� 1�^\s�j]�em#�=ўK�j��lח(�fi^����v)�q�VQ7��a��v�)
i����&|L�G�A���8��B�4����_wҗ(؇m�����qWs�������f�m�(��/QHհxq�ԩ�ƺ�z9���m�F�t�] ���F��a�b�Ҽ:۶�1�v�%�LYN��b�.�_�N�CD"��      O   *  x�u�K��0E��*2o����Zz�+����UWZ*��r����hÍ �p2�sWJ��/�Ujj��&�l4/49͔r��.]�'.�ᝂ���D_i���a��l��O��s��7�^��L/%!�w�$���lt�ʧ�����u�?�D�bt�s�a�4��F�AϒDϪ�m�����$R|г�#w�w��ܥ$�zH<*G0�����S�R����#/o'ȉz t�N�D�/�y�R���ſA��I:V���/R	� �נ�ARy�4̎���b�r`���_R���j�ʗ��-&�~�ptߍ����f	nw�Kј}�������e-M����DcYc�y�;�y��
}����$-b��RU�qD��+ca��3� 2��J��g/Ʊ��:��l1��ۀr��󿥱7tY����S���w)�b'�~�����£�8z/s�=߮�T��5N0um�8��a\]b�t��D/�%I����7�~������s��Xz*��?��r���َo|���j��R��G�KM-p|Ę���7���#����?L�N      c   �  x��W�nW�^?�1W��.`�ߡUU�w��11� �T�"K�4N��*R����֬���'8�������u�*�سs��|���ل���]��n��9Q��a9Ԯi���s�9�m�p�H�$�ʕ��B����*W8��=�ϱ{`N�K툞��A�����oL�S0���5ddg�c}�t��`C����B_A�]���4�_X�;�N&�i�h�%,��>�'�⺩�SyKw���8;���āg���Ѻ�k^@ݱbz��Ы��c�����7��H�(󆥌�P^����b	<#��#m�,	kt��]4H~L�t�^q���p����R%S
1�������++�[�#��gvdGe�ݥ��e�T����xԙ������0ye粕��oK�W��Trv�<�G-� [��Vv�Bb{#�H>T��N��Nb{3��c7J֒�>C<BKWh�+p�H��8/0���e�NRw�����ù��t�������^�v8L������br%n$�L�-K����xf�:@��5W���� 2�Wi�w5��z N՘/p�E�C�f�����4��h"�4e)K^�ӛ�q��:�0���uk��@f���?QaƤ���s@#�-hx��*���>-�b@\j�NtX]�:F�{YR ]�0o�+x~��a��I��{#z.���ؔ�W@I�W�ש"�k-�dk�X�f�H�88����-�r���%̑U�U�R1��e����Un���������ı��%*��ƼK�ѻ���_��#�{3ť�հ�X���e?��p���e-ŋ�d[��0��ŉF�p��o9�i(&�Wm�#�m�H/� �&S�Ω��8��y635�/�xa~b�%#79�Nq����U�P������ҿ� �g��tfRj��v�Zy\(��z�X��k�SL@Q���,@U�F�"�
@�k4޼��&˥�2�C�ח��~ǜ�\J�z]k��^�X�7�Б����^����s����Ķc�����"�&m��u����/�9
K�����_�]�z̥q.�>b�u�� ��`�9uYQ����?PE��
�3Sc��H���I����H�O:��qH�m���g��#����&�@}nR.b���	�y@��KS8������L�g��r��{~4j�v�5��f�؇pD	گ���J�o�7� ��^�Rg�;��A��
Z��?�N_p~jK��,פ�.z=ؔ����m����ɾ��      Q   x  x���͎S1���St�nd�v��'�B,g�X��8i�7��A��JG�tnl�\�|}}}��|�����G��� �p\1T����?<���]0��ϭȽ�T 9ߡ��,92��\j�
�G������؀��ţD�y�:S,���pE����'g�!���4�T%z���F�,��k�ȧ�]��'����������k�䰒TB/X&�.iiq�S���J���cH;t��W��4��Qk3��]$-Ep��\�[HG�k�J:�Q�gP(J��
����ѧ��,��Xq�2TA������VK�#h�CI�Cږ�i`�a�xT������b_��#i�����j�\!����&�.5�Ck�$.T�(U��q�.J�̖Ӎj�y�SV�"��Fk�d}��#��=Z��Խ���SQ*fτ;u�ک��~-fS��:R�cݔV���[�W�̃J����0�a�Z�ۯQ}L��b�a��z�X�[�]%�y�.�pk]^VS�JE�	d��R�����u�� ���<��4��y~��,>��eHl��/�gŘ�YXk�"OXjé%z��%-̎�۩����x����e���k{�������e���>��JKh��6�NTS����s �uT      U      x��]K�$�q>7�%�Y�Ȍ|�ɖ �Z0�"`���˙�̬H�$��`X�e�:���|�Dk!K���9�������:g��$v31��/3#�/�Q�����ۿ����W���|�������G��;��r������ߝ	~�I�B2|����|��E��~��}��������2�L�3@��=�x�������f�٧U��޹�yz�~�ͧ��������ճxsyŮoș�g�|�]�.?c��������p�����T@
L'/ڄ�
o��h%e�<��ov��wߺ�����I�9пNX�'���$W�t����!��Gp+���d3܊qɔXn��Q�%��	Pf������_��Q����t���{p��[N�]Q��}�9}L����p�_�����0�%�N��bE ��3�"��1J%S+��7;ʓx�5���=������Ac�O��z�i���n�������`�Uo����۟�����댠����G�/nx��3�{`\/�8Vh�3&��.�S�L���lp;��T��FP�6�q�&7�8j��⨁���O����<����E����{��}��>g���|�d�5��`�e�%��2�.Y�J��
����Q��WQL�@����$q:����4��>�O._ҭ��>��%=����5d/*/Q����p�����H��y��ZbǍ�z0j3f�a��2�xi!艴,�E����O�@;d�EK���������EZ�ɞ���:��܃ih�Q����n����T��U�[PorK��#�db�S�E�=�5�
�:m�B���͎f
���Z��)�ك����$�nY���̒pK.���X������IQt6���I���7qDG�,b�s_�wSZ^�bP�B��xE(BP���nK� �䣖CHnvl�����t�����*ּM��6L-JK r�6$f�!��e`!+`����%�ax5;ړx۵����=����{Rr�C������z �qY��A$o%�Nҵb*�g��b���A�5;�Sx+�{G��LfZq�~�!u�= n�t�,+�"�!�"�Qi�3	��6vȁ͎p���j-\�G�L8��4'U����~2|��YZs'M+�HC�9+���tLY��J�fG��b%�\R���8FM
�1WS���x_6�5c��;���H��y�Y��S��ĪeF�Dо8�y�v�#L��v���Ĵ����`��0�e��R�p���Y�,�f*��@?`1#���'r2��VG��e�P�� ��8����S"p�v�8,];���� ��f�[
��	+J�RQ��&�Sw��]s�9;U�	:Χ�S0�3A� �F\�����
Q<_��EX��=#5�U��H70�fG�,Y��Jd'����3�pJj�A\?qI�iQ�ブ��(��r�XZ3I�6���5�FG�,���*Ś�<?;�tLSZ�1���1�x�Z��x4��"Y��S���BI�|Ns��͎pBm���ugǢ�`r0�Ŕ�7�8n~����\<*乤�("�Y�1��1��m����͎pBk���E�7�i�#��fO��6��ECIv.
�&CC�=��Aj#N�8�!B4;�	�)�ke�r�i�gO	M�k�A�i����m���m��j�k ��T��VK�s�/���(����|~*n��͎�2�V0��;5�g���R��R�B��P��x+ٙV�q�h�7��S�	�"G$G�̤ ̱�0e��(NjYk);��w&˧��bJ�
��q�_�8R�\��2x������);Y3C4șd���5����UzM�N�Ҵ5��53S�W�����zX��kY��6P@�u� W�Г6����<�֚�I��(��N�O}�f&ŔV�}.���w}�����t��Z "�o?:����>$�/z���D-��(�q�@�F�2k,����h��̛P(4V���vҸ�Q���Hc�]'�?ؙf
bJNKq�(�����|>����G�E���׾� ���ka0��.QV'-�M�]QQ���}����~�e}��w&;�X�ĵ���w�����< *%[T��C"��|2�t>(fQf#��e	��Y͎��ƺ4D���X�&=����������O^�Ig|�Ԯy,)��r����.��/Eq��J�!F6;����;�G��IM��<��%��O�{p� e�E�&FD�G�X�iq��L�7D��P�kv'd<A�k�Nʣ���I��)/��V��@�sj�-�d��>z^������D&�U+)+�Td9����Y�h0H�u�h�ě�	�O����hm��4��V�W��p�^� �cb?ܛL��y(�0!C�Ą��N�4;���2����W;��^Z(�D���}�~ ƴ�͋N�GJ�o��'Pw���������NwT�U��y�}l�����ɣ��D��j�(TBˌ�t'.�~�ֿ�Q�P�V����E;��SJ^���_��� oV�ዾ��E�������/D2"�.w�,�<��sq[^:���zX��<���_NgF����f�ʔ�G������^�[gS�-����Ø�1yfB.9b$ȇ:i��<�ޱ.���56n�\N�R�/��m]���t���Cƒ47QO��j���B˹����z� ��I���Ι�����[fJ�㡄o������SFL��hx�Z,,�tV(�X�;�7����N��}4��F���x�z~�#��k�a����2��]������m-�׹C�ydH�#Ѻ�&6;�Z�n���D4�h`ܙ��i8��ѽ�� �@�hk͑/[�B��(��%mt��(IɌ)Qx���m)��Q���;Gz��4�S����.�Ա��pEmb���0gKa�.j�G@(�pN��V͎�Wu��.�ݙ�t��)5���N��R��AT���ݖ����M�y���~k�Xt*�$�m�+��k"�=�8��	J�^��Q���j�(n���ڙfVF��d��m /�����F���H�H�%�sE�a)��]���'���{\�wF���$gR��@����������=��W�f�"&N̑!�e���c�K�Җ$b7�K���#�c���|X1r��oj�G��bC��T'Tw�p�Oԗ�}�g�x�Y��ŷ���e�>ͯz�p�E;���(�M���aQ*""�Kj���q�
��Ugl'��i�
�zŕz�w�>}�.ܐ��B�	=��=�*�B�>�\���hu�9��?��k���#=lk�)��Yi��h��~B��R(J��`|r�(rx�f�F\�S��l��)���̰(�1�T$�$RÙ�� �+�4�y�Q����1��kg(�V��õ���ݷ���RY����i�)ى��X��B(�A�_��3P�3��RA�:<�V�o�)�)�eA�bE�zX�Hu�A�uwdid,���ovl��Lv�2ݩ�"�� �@C����%%Z�-�6�p����7�������,ӡ^�/�OQH϶n�)D�6�%"�R��}H:��ovĹ��ÑY����^�fv`(��?T!p���D���PX�Aj�D1;1�VG�+��xH՟Q�#���rZ��
��Ƿ-�8�S�g��k"Xp!�"�
^
�C�o��gja ���Q�:{!�=�L'��o�?�+_{�͢�x�����]��T�J�R���o��g�R�U.Ha�C|v&��XWthw��ӫ������o_��o\,�F��&X��V�,�YP�2�u,���L���fG5�^\����A�8ua:�;�rl��E�A$+p�B߂"Y��0뎶/YJzb�2�('�j���Ǐ�a����)��p����T�]?Ҏ��֎�Nv$m��f�7���������^I�AX��Q�:H���,�Y���D���fǃ��߯�L�G�z8��ׯ�M3��5�ގ�<��A>����g�����y�7����>vuN}/�܄��Q
�Y
HԱdǜ���1<qMD{�����D��>�8��. !	  ��4L.�w11�?	��Eǟ4Qd)�C���芁�(D�vd*èj��g�@��%�p���Ȥ��u�Ӹb���8���(2;кJG��kM*.�h�a���y��'0��u�R'P���IΈm�4��;ke�D�H�"G�kJ�\�nJ��a�"@��'�{�(�O���y����헆U,�*��%`=��3� 1U�%��Ce��Q�s�}@���V�i�J��0���������=��|v�^�!��g��f�R�d�:�@�0_�����=׬ّ�	g�r�H(�uB��IOo[2|���^[��<h%B��n��;��,�`����]y��8�m?���ow�}SO
�XkV��N����0�y��K�.k�$�_�Y0�S �V)eJ��_��S�k��Ǘ��E�;����͈���\������R����BO��0�݇;h�T�� ��F��$a��;�N�L�\Y�"ڰ,6An묉4uukݧ�Ls��h�l���{���= ��H#��ٚfNF��a�l�P=%�z�#���f�v��t�Ƽ[��in�u�I��	Ӂi�XB���?�"\݆���ۭ��o��·p:h�9/���9s�Z5Ef�i�)��q6|��:��U�Z�ζo23G$�4h���aх�IdB��P�Ȃ	����%"y7���8��
�Pu
����3jT����$>G�����J����^�W���H�J	ɭ�DC͎�$j�_�z�= ��&9Mȍyٱ�*Q�A!����.�r�|��Ʉ^ڌ���BF�c+jdj�4���|y2Fpԙ�̒u��O�%U�N�uY��rT��_�������(r�L��ظ��;��ؓg�����.~�(<u����ׂ:�$ARJa�)�2&k���d��@��"��S�C�=��NY�W��]��-V�u=C'gψ�����"H"MC�nulF��$"���a�9�
|uQ�T���I��<id.R|�u���H����[!�%�}����VШ��`QX�C����:�N,$MY<c�(�Oex�f�fX�a�ya���������撞��_����G�~v�������8%Vt��čwP����{�)�TLl*�T�CVovl�y��8d�4sh��3�2/X�s:�����!��lr���CL�Z�/����{��N�۵��"m��G�=����p��__?�����q>2����!��C��/��;q�?��*������4;�
��:Q�I-gR�P#�N����O�dv��*+�H����zh���`Y��.Cq���ٱ*<Hx���SX�
珯o.�{�k���{��w��s��a�Z����r�BC]՝Aq����%_��%���*b�̧��$�%�7|�6ov��uO;F�{��y!��sȯ��Pt��u�JAͼ��Pr�(9j�1��q1p���\���/��M�3S+�_����_�V���NimdH#����oj,\+M2e[sl��33} �B��3�\��Q�Lv�Gq�ڹ��sN�.����I��rM�e��i����Q��G��gU��*�ͽ`v�2w�7��U��X�1�b$�$�{��( h�3L��:���&�s���e���+gL��nP�H=��Ԃ�j������z6�3i&Ǚ�.J��]}y��峫�$�=}����5<�-	�Ҁ�7mL����z���ڹ�q6���䷾�C��?6+:�O������|���
�5�:=��'7��ٷ�`|;��ׇ���<u f��gl2��r�%7�Oq[jivlC��!�Q4�hE9�����Rȹ\R���u�X�w
K���2&{��5������W��۾i蚣w <E����(���EU��Wɫ��2Z�oA�#�0�5��P"q� �u�=4;Ρ"�7�����A��U�&��r��#�bV��k�(��Y��j�.��<��j�!��A�����S��3�]���`��P8�el":�c�����5�@Q��o#��]�;z]��Vj@Er���>Y�i�T�!R�1덡0��)G�1��،��Fe7�>���+�EEH�* }���'d=�&��-S��D�	қ�=4:6�b�$*n��X~��!r�Y1:�E͊�MvL i�൐�����x����&FM�|��-BE,���\}/E�u} ��@i2	#3�Ta���ͨ���LJΠ"�A�BqY�e���5Y���\%�Q����Q1#qek���1Tp��"��2++\��b&�b%g��u	n͎�P�u�$�Ί���3�]b>ZO����K�i'H~Sج�,�P$�'�;�L�c3*'Q�M�����7��?{A�=      W      x������ � �      y      x������ � �      Y      x������ � �      [      x������ � �      �   	  x���M���׭S��1�:˻�9�RM�@I��yvx�o(H�͏�`��"�o��9~q:���X�?1��D	���ݏCO��^$�蝽޵�������<���6a���~JT�Q��	s��r$>J	��ooO�������$���^$��N�rp
�z����uz��:k�D�1����/�#ף�P��W�8>������4�=$n���D�e��E���ؿ3�tԈa����D���p��hr�D2����Bm��� @HAFF��D\?�0�|����"����1]�'�$�ݫK�_f�fr�����ab��OxJ�S��~	�;�/٨��r[��I����'����%Q:=��C�f�-�v%������D�܇CX$J�RN�0��Mv�D���O`|�tO���*��g����DI���,���D�+�-��[(љ�U�4�+�Ch�[!Y7���c�	b;�	/��:2e��K��V��:RV4]�e5���%�e=��x�ժ��Њq�i$�r4ˊ: ���xI��l�� -pm>�)Q�`j0��,��B��6��fe��K��%;�v 9�iv �Dy�}@�O�(O$0��u�D�����R�Py\����� ����v�J��
0%�K���.Q�0F�9%v�R-`��H�����U����p��T#��=�3��DE|����U�y���$*j��$��>�%*b�b��V,��`����q���ɜ�F�*F�|��1�go�DU����.@"�냻 -V<�HDt}pP�H)r&\�i6jv�DU�蒷d�~%Č&�Q�װ~���]�v��ͺ�|ݐ���v��ZbR�:�%�,q�#QU/6�?�Q��O��X���y�^���%Q'��g���OM`����p;��DM�X��!UbL��5qb�. q+����P��?�!�2�]G���Ji?��DM"�nȵQ��{����w�Z�����V(45����@M�W�ۙ���vIԦ ��M����K��~�赕ލ�a���k����~�C���LS�O����D]�[lE�PF:\�K���-6�!��ղ�[�*Qb7Z@���{$�u��o���~�M����_G�� v������@��&�z�u9�[��I��S�>��ņN�ڬɭI�Ñ�hh��~Đ����4
5����K��b>`"�^�$+ѐp��b �Qd#tf`�h���� 46{a�h�F4�	m��us8˸J4N+��t68��f�%z��f�f�l��4,��VrVeR�8�CX$����I�Q	�Z�%�� i (�b	�:v\%��G�G������U��~tvd����,�*����Dwm�RhÄ�]�)��� 48n���h"� ?�I�u�QEoC�'��넊t�8�z�@P3z^һ�UA�i����z�ǐ��.��>NK��e��v	���x�l���d�����K�y6���M31v�@Sz3Q�������%ĕ�D�'�-�y�M�ǓK�}��DD��*i^	��<�ٙ�Ami6��Ln���v	�Ӗ>	��Z�J@�Á�Eﰐ߰7�E�*��� �"�&��+��� ���\*[�z�,[9�;v	=�]D�KM�C7����G:hU��Yo��c�g�aO�]B+$��t	y�9}7 u����5tM�V	�H+-bhH�� V	u��rǍU�f��L�Cn#ԙ��F�ά��	5q��f���G-��� q�5W�8k^�f8��pVd��8���&��fw�>���!�* �K�4�p���xs��8�9,B���4�K@��t)jYeS�]B�k��h;�eyJY���!	���:}���BΟ �����(:�Q�1���}�+,�)f�\$ ��U�O�'�'�s"�'}��o���h��)/g�fY.xj��?{Y	�3p:��9L��"V	��D=��f�뉣��/�[FA.*Q{D�8�KxI�Un*QB.Zc��J ��O@ў�T�I"��FU�����_^������~X>�/���{�_r[>�LDdo	 ub� )����$ Ԉ�'�.�!W����۽�|)6� c?�q݌Za�i�J#���`�s�8\R��"��A�;�(Q~���dX	-x��vՙ�����އ�GhZ��K�1�N��¨I�Y% �9�Q����r���'#9�ʦw'Ȯ�>��-��pr�Q�z�H@�"���Gx�]���X}D?��;
�-����Wݛ�E�4�s��G�u���5�w��G��1~�-�mƏA�u��r�)�g�y�2�cqHq"?2Y��(��@D��W�      S   �	  x����n�����O��E"��ds�@/�%#ɻ	�h_�`[�ȱFr 16@�W���<���
�����5<Y�_WWWWUs��������Yٟv���8��e��=���u������-���o�Z*��䎑��UO����%�$[hѽ�f���C�1f֟�W0fF���G2�nџw׸衿�g�9 �*7��XYՍcLK�0��C���?�wx�a����eA�(��F�a�M�(�3����̍��ʵ�#��W���j��o_K�pd��\�o�wIK�?�K��?g����-}��D�s͒�v�.��h5���~40+�E-��%����V�s3t�������hD���.Ѕ�nKu�)�´J��l���������o�nK�&�M����-˥�hE���Ã�B���-]�JK��I���BY��ݑ͎Q��'i"V�K�6I�B)�&��r`,)[(�h$$g�X"��/����K���2�*�=�KĲ��?��d�g�X"�d	��r���6�&�kj�e6�oX~Gڒ6];Qme��ͬD�&a��?��`>e%��G��f�3cxJs���M$�HqD��ۉD�jj�8��-��R��5�f%b)*Չ��*DNTnb��xf����j�J�aS��Ԉ4�?(o��J�3L+��A"��Gb�/����Fcu�����Pv���Ժ�4f��2[���C�
 %7||JY��� 7;fi"�&o����m����L�F]�#��G%K�U��F�\�˰�I��r_�+�v�(+Ԟa#a�Ϳ�,��#\Λ��JY���`^�x�!�!�6�!�%Z�o��5� 񅺮Z�Y1�La�
Z��sf��k*��I�q������YK���/Q|%��)k	�4�T
B��,�23'� �ˀ�f�*�wJ[���N��\f`����w!�|\u�sl�E7/����J"UNg!�H�c����j�~��E@z@�ő��d˂�
�����y��G9D�Hu���φ�뉺���[��&�1���+#ބ�����0��͌ơi�-�H� ��ԑ?����ҿY���-P�����Hh�Q�~�d���9B�r9�� ?Ôrt��R��C��'�D�`Jt��|�Cp�(T�aEQ�����<ϒW��ll��yz*�� ]���+0u�����qW�7xʾ�psK�ֈ��^Q��J��Pәǥ�4QP��ӣ��9\لԭ�m�JDq�����n�����\����41'���ų?|3�X��1k	^nV^��@@��1G�p��%�v.���� �b��b8J=,^�4�5��H��k�S8##M���A��q�]I�5cg_��we8�>�|א�p�.�We��(Ð���u�/B2\=�`�@ʓް�l$X��H���	�i�J�i��
GT	]e��B��Φ�D2�3�x��$�I�fx��d�2t�� e��k2�Y��2Z>���G�P䞖O>�&z��B�<\����Sҿw������l�n����dpbM���t���yZ��fC�xG�nx~���խ
�g�kL���v�, [����	�:4���	=~(���ld76�1�A��!�V��|�7��Ӳ�^�O���0�/����*��	C'e$$l�&�c�w�C��7�F�8NWM�F��iŷ���9����irF$�Q�m;QM�fc����9^)dH��2&�$�������hz�r4T����)�c
�!^<�P�x�Z���������!���%U�C�nD�jV9֖�[jq�,�E���%C�$P�/P��T9�EK"������`/`R���ӭ��:�h�[A���`ʳ|�k�R@j��R���d�&�����f/D_� ����jŘI�h�0vo�p�9�AOk=��H���P���C�9�z��f�,�|U��	��p\�3#��Y�H2D��/�	ILb��M$Z�Z�@�w�X��[8k�8�s�42�oY�$���nf���0���y=���ESOɮD��-�B^�Zz�)����H��rK��6��M�!W�+��WT�.�pR:�eH�L�mà��p,�&?���2��Bl�Yx�>�)HX�m�`"�8V�Y��R۶�^M$�5�ܿ�y���p��H"N=؃��X�<��8͚�3����F_`pe9���͘�p���I�"}w���<��������u��=�R���0�|�"�@�_�'%&z�p8)��b|"L|�����A��Sp"��U�7_� �Tr`#�����A�0�d��\��9�x�yZ���Ӄczh�^��k�r��%0��-�k��мM��G����Ʊ��
���qx����yd,�B�L�!|w~�`��8F%Ms� �� "�j�e(�:u�=#�
�ME�Y�k�m���%b��.~��B��?S��G�1�(z@�|K�H耕49��Gy@S/"�2��$��j�!���r8{�a����A>��ވ$��8ң�]4*��[�2HzJ��Uj�d��VEQ�[��      {   F  x��XMo7=�~�B��nI.�]�5E�\zh�[/��m�$v �A��@l7E�p��h��=�(;�O�/p�Qg��%K�ȑ�R ������p�P�1/�U�-W˵r�5}���ʇ��Of��_�.s��s`z��N;YXJ�Nkq�K]���wN�<h��݌��V�5��륬ݺ;4��K��W���=�l�.��5���6���0B#�R�H����X0_��B�j�و�� 
�Q�ȧ��H�A�s �͞���~�f^��6��X� ���r�l���Yl�6��{�����Z���=K�a�����O��"���.����G��@ށ���=��;K�}�����m�ѹ�qtq�+�o�:���j�}���`��:���4�Х"&���P�<"\�A �$���R��Uo�C=�x�^]NH�4��Z�J���c�?�Ƿl�6Zw)�!���R��A�)?�$tL��ظV�9�9)���`�J�K�����G\l	s)3/>2<��K]<�BMc2�"�$�&/���|^�����i���]L���:�\Lո�_���}����^3���tO���b.�̣X��Q/��Iҗ!vنr̳���f�@�*2�M��6�B��A�uj�~� ����3��5�!����y'�2}�sc�^�� "4�e'˅��r�19��h�A�%X�\��i��D�����_�����y�F<�^$���y7;?�݈��%��b(�F�JDusm�&�N&kbPV��U���������ia��[E�}l�@�B�\=�\���ᠼ�
�sO�Tz�*�%<�ÛjRPF�����S��Jʩ����C��(+Q�.a���§<ַ\	]�RA\�
c�/�c~��~�����4q�h���%��\r�s�Y�5�E"�\$�ԏ����|*my����Y�����|��\o�/"<>=0:��y��@�3�S5�*�|;�������(T�.�e̸/���cU@����9W����D�8��fw���:���S�&z�F5�`e�'��5h8=��$1�Q�I�N�(�"����y(����ǲ$�",H�����8
3()k ��3�W��0zU@����
1��h�A�\@un�㷃"ȷ���o�Э.�����-;��N[�Y�gU���x��❻��}l�kl��'��0�1�|1�5��b�(a���!eO3��\2/�i���<g5� Y����G	m�e�j�	����'�N��P�W-'��y@=��U��4"�p��J
������,���� g A�+��aU�x1��� ���jz��[���S���سlkG{y��){:��m�H��S�ۆC��~�d�a�r��	l�fvq�s�WG/�k������ȹb.!O���B�y�)U����H�d!O���N+��;��:���~�}D�i :��3��.l��'���5����-��0�;��ľ v�e0��9�g�],|		����#���iy�EXS�ҠrHe�d�����*��, �A�X	����1j0���R`�p�L�~�\yI�5�g�����4�r*�����a���h4�['"�      ]      x������ � �      _   �   x�3�t��-H̫T�/�K-⬮�420��54�5�T04�21�2��333�60�#�e7�%�(5�$����f�&�%�S�,�Q�)�E���hX^qIQ)�{��͌�1%73�|�9�K
�J�7�bo��qqq o/��      a      x�u�I�� E��)rߑ�f������F�]�}=_�����`�"~!�*����WI��d�mW�bU��"��)�h�.q�F�xL�B�2~��r�	i�O����yރRU����R�m<�����*P�2�U1��t��g�~�T5O0�-�]2����3�o�*Qdç�4��pYb�R:jC���ҍ/�˹B�b����\Z���#�KJ���7�A�i�y���(��t���?1"������Z�4�%�i�/��vB(��[�xk��}	r����qh3�
Hܼ��*v^n�y�*kUo�ż)�zN���bj	��]����x�쫔Șw���J���7��"���tԞ�/���v�F������]R�_��=�жƢi�/)��m�r�xG�+�X ���c�H�x��%f�'?�^�f���X�����?%����b�p*>a`k�o*��e�P�%NUd[�w���R^����]~�R>�/���>9������w�Ic�i`x��'��w��Fc��7����\W      �   �   x�}�A
�0E���H&ML��t+HhCi��Loo@��������$:�G�RWX��i��s�c��w�,��P
h�P������g��Fʙ��K�n���
��������c:�t�v��*�
mio�)�|X��Ԩ++5��l��i�s����K�38�)�1��S;�c	      =   |  x�uT�n�0��_�)QG7EѢH�nOF�6��R��}�J�$�̙]rgg�S���q��$��c���Ê�!�e��aog���"�6?-��������6���9��H��v�9C$~��D�������k�2��g�n�;؟6\���Չ7�_P���f��9Z�;f��L��/���y:��\�!JI��ϝmwv��YtJ�ƹ���[sL=�����9AKFnmػ��D�8�~��/H��D�06чE]�BS����c�9ٸ���)��M0�`Ю٣�V��l�pΩҔO痛�e0C"M�|uC�U���vQT��� ��$Ҹ���.�(�Hz���$ղ�z���t +����m]cr�d�I��x�����,�F~!9Yp`�$-ȧ�/�ִ��*������M���.{~�4�	���mQb^5�^�=)z�"n���:��Ξ(G���}�s/�8�q s��U����<hA����)S=���!u��F;��E�ą^3&�?�X�ȜWvڶ�5�Sv�x�2g�����d������L��L뭳]�.�dZUXp��=�����������(&A�y:]�O�����t�o���ӊ��6�ғV>��T�K@��yY��Z�V����n      }      x������ � �      e   <   x�3�,I-.1�4�420��54�5�T04�21�2��336�60�#�e�o�iD��=... 	9�      g   �  x�͖�O�@��ݿ�Y/��tf�NOxу��/⡰V�-i!&j8G5�_�W�����?�ʹ�����(F�;-�:��g޼)2�G�q�1ö6�k.1�Fj��Q����?���w�O������?){ƣ���4J�Y�����f}>��N�3n'M��ʂ�\ӱ301�L�L�ض������ZQ��������=p��׼�mB�=~Z��x?��vsm�6��d���#�e��'! r�X�C�mW��	њ�ar��`��e�c��]4¿Ő[�&7Q�@��[,��m�&�Jzٖ�?�?�!���.�f/�)���>L8�މ�SK�.~T� 't1$Hn�:|!�M���o�[Y`�'�=�W��d7���v#Z�&��P��Z�u�遉`�R,L�F��ѻ�r�-E�~Y���d[��@��W��Cj'%F�=��#1@:�܆���h5;ɺ�67��Ԃ��������!��b�y$�C��C1�ޫQe�a6��>� /��B5^
 � Ee��8����2p��]w\),��JC@p����ץ�:�k1�=���������p)��rm_̓@�6�`h�񪅘��M9�G\�ge�4����H �����%����j:�+�{�
�q�(�!-�u^�P|�P��E�b��\�鸝Sb9%�(�w�3yʝ��3a8�޻y���2��CT�p^���JUdF� �N�v�� "� �]a2�I&�=<{ ��a�`ZK�=�4�<B�"»��RG�0�Dd5���_RI�-�Tʳ�y�B�I�D�i�Bј+%�A��� i46�t>)�x��T&}��.0	eN���r �������� ���6PVzo�&<ZnE]�Z�,|E�:�n�0m<�Z��JĹK3��RL l֪�j� z���      i   �  x��X[oE~^���_a6s�>+!$�x��JU���K�c�R��H�� �T�@���4"�����3�Nb�I�MUHb�vv���|�|�,Q�P� �Ԓ
1L(",��L҄q����VD�'��@��9(��Ƀ���󴿉r��?r�~�'/�a2���x����l����Yh6�WFi�����aX���/�����k����&qe�~0�w��y7uq��4�`4��]YƟ��\2�Jƻ�i���-�A���6?R���]7mND� .B�-9ӹ��븇�r<M�èZ�Q�����E��>��Q}��O�\8�_��`��j0�q����{��8�~zV��l���N��I����;{ٞ��}6�m�р�ܽ0ٺ϶Fno���[a����؇�����ܶ��D/$�YY���O��"� ZR������S\x^�������(?�dzbI�#J�E��B�eƲ(�=��R�XA�	\	RH���7�*�#��	K�\.(�@��^&p����ue	m�s�y]	��6$p��%��%�y�չ0ռ�H��FY-�'$��H��PR�
l䯤A�%l�N���^����۩|�L�����W�\ʌYz.}G�;���4E�=��di�7.��O_��_�����n��4��9%��c�7曄��A�/n��g�N�9�͙���s�V�ފT�D�x��y��R�p̓���JR(fs\a��E ����zS[yɄgl���P�Ձ^Y�7���3��uM��nC�G/|�^�����,�e��2P-eb��d�t�jNI������RD�*Q�`k�(*t�N�s���N����-�9o,+��橺�y�j��j��]rXa��Hb(�R]%���Q�v�,hb5`o��<΄��꒮Ԫ� �_Rɴ4+T�R��T��G2sA��FT�t�U�zk�3]I#4����:V���Ë�>|t���3�W�����~3��/�#�xIԓ�����S�XT��e?�C�?���O����<"�����A=#�=�Pg��R��<��^���5!Fua|a֊3TL9�՝ʗm��fT�QMY�,��QW:���׶a���o�4�zX�|s�VMV�8�e.�#�=�����A�yMT���*��IQY�����eakyKͅ�X�r��M�27�i�qݹ����K�j���]�i�j	�Z��u�ь����=�Q=����c�3��5Ꜣ��O�f�:j v�()�G)*3&�
�u�tB����ŪrjЭ���"��:�r}��"OYt�c=#B�<)p�0�����JN
UV����B�R'Ln�P�E�����[��z���-�tM�1= �,mӏC5zWl�%��5�o����)��H�NOm��S�E"�}��z��U+?      m      x������ � �      �   w   x�}ͱ�0���~��(�/������ �/$�Ҫ���;�Ҡ����S��2
,Ͳ/m �?��|'�
4�s�V8&V�V�*�eAO�to��Na���I����"�8$�6f~Sf4�         �   x�}�A�0E�p
��d�!$�Yz�s4:Vk��,�{ ���$�L�0��g}��A\H��D�0�ſ�a���+GB�PC,Yu>�;ĕڥE�Z3:��'b#T��1'��`=TÆ�� n�F�>�I<�����G|�x��.l���<K9�W�B[�J�`���so~�/����_��X      w   |  x���Mn1���)�/,�W�=A�=A��͌��xz>�O�#ǒj��;�����G���	�i`�����C�����!�!�4�P�ěH�	%Q}��H�!0�����J~�M,���w0�rMa
E�C٤��B0�>ʰG�Kk�/���P19A�l!��X{�S���a8��H֚���T������~�)K���è'��M0m�HF\��~W�S�F���xpPՓu$��`݊�t[�xP�
�%�9
s�v?�&i���ckO��ۊɏ���t�f,K�8ʕ0`�%�%t��f��!��^X�d��.�Y���Fo'��>�I��`�ɩNy�YbM��D/�\)�q�-G��{���`���[��ru�Ĳ�Q�&f�/�k�1��ⲐMNK���bXXwˡU�z��z&R/Eq�dOp��g�r��������b��1kF�-���Y� )�v,��T�Et*ߢ����z��9QۤC��t�x ���KTo�c�6�Im �@;'���Ix�W��Q0�����Af	���,=[ pR����+i��q�3x�{X}��.-IS��� �A��%�؟��E�j�Z�l�0!���x��}2^�$h�6���v#TO��=������l��˱^CY�����X��6>3֌j�î�,�����:E�{x�,��i���Z^m�4Kk��b�z��M��|�.�}����k(˹�n��x�X������_�a�PVp����W�=.a�Z���?.ޅ�w���w(������|��yC�[o�9hd�
�(6�=,�Ӟ&��S�f�Ey�{������.&�,W���"m��g�>~&u�hR�Q>
k_�b�d_�CR�L���������*9�?�j�8      o      x��[I�9]�
��Ԝ�����ќB��/��EQ��?�����&!����ڧ�U��R�F�/�dc�M?	>	���dXP�̐����+����j��C�)�� ���ux���[�����z�l�߶� �X�d�z��B��N:�X�W�n/$[1~��O����	*�&���$V��?_)�}!�
�,������AC� �ÛRT�2ڈP(4d# ���S:�;G���Z�C:K4>��ܱ�T����,qK�qA�	R*)�7���ؼ~p\e�ðC5�쒴'��=�����N��n�B��Yb�A���
Mq*`�D9r��t�p�P8�3�8h�y�Ha��5�T�9"=�}>��Q�@�$N �Z���8,�$_��o"�ٵ `�t>���ł�D
R����-��I;;7�7TU>$�YCQ���9�j�J�"X�]���9���^��Zhѕ]�O��xP������^�i�@�Ro�!��sw�7b&�4Z�P+]�#�`�EN�+΢�O�l�ܯQ���ާ@1��s?�@�`�k�u<8H��/��㌡r��-t
i(��nS&��"�`�'ǂ�Z���I�?,�(<��bA���EI���(�EH�o�H:@q�N~DW�vf7u)�gD7��Μ�
Y�$7�i�%H�@N�
�z;)~Y�� 1�h�A�a�#)�o�~�ϐ��!zP�"��82���s�ɱ 9���C�7�
C�4o+�Ѷ�\'��n9�PU�'߀C.�O�4u��]�f�>)K G�Ow{C��,�2�&G��������⣥E��Q8٥�8'��Y.>x_c�H_g�]�$w�C滴$9ܸ��� �[9�������t�zl�d?~�ߕ¹���)�Z��:kI99}>c�i�����cF�����ʥE>�%X�p��Pv�r$w�$�K�<n_��<�J$u;{��ު�jrb+GRpQ�$W,G{CM�l�H
�`����S��TII��e�Qޏ��$��mH�U�i͵͐�!u�?3ƓOD���J�L� =,�wt���}8�5n('��\�"X�ڰg�o5�nO ͇\�L��@��t	~��쵨����|cAR[����'��qd�ſZg�hS���'яy�Z�E9��s���#�,N�u嘯
p,�}t :�i�s�"P%+]���������D��7���I��#sD���Lg�I��t�)=�OJ��������䀪6j�E�_�o*���̍�`z@���i���9�\\y��z������<�sH��uz���`W]����b������T� �
M�n�P.o(I����[����8(�L+�&s ]�s�	�7נ��H�+	e�5��B�H���>v$�ɭ%�J�D)�
��V#�\ƃ�������v�Ҫ�0˻J?D��B��Ua��K�M��,
U3Kc��BJK�`�ܐ���,�+�6Ǩ$���TI��'g���cu4��e����k�b�!-���.&J�m�h�b�&�@[�+��K�tYR��C>�-�v��E!�>��n��X�':ΐ�!m/��f�Sv�z��u7�VTٴ�d��q����CM�(����ҘD��;.P�=�͐7��Ȣ�ql�h�4������<��,ͤ���r�$�߄���XD�?���5]a�$���{��r�B.�0n��[����|@�4yu���83X�BS�`�<<(*�~��rD����l��p4������z>]����!��d��V<�A6B��ҥx1܂���V5�vF��擤pb�U*��u��uW
�z	}!��1� z��|�&I�]�Q��5o�����ZM�������{HSY( ,ճ |���F!�,��J^��>xlAh�96�72m9�̰l���L�d���M����W��"Y2x�'1(�b�]�AD�6�f-�� ���4��wh|KR3&�m�/�`5�Yq��E�4��f�֌o$���0dw:�}���cc�n�*S�/�L9b9Z�BE�@�Wm�H� ����7
#�V���@ށ���� �;��%Y���&�h	�棚JR�W/��=P��⯱M(c����2����K0s�)���y�iҒ��9  1HNe�bV���J���Fb0w��n���$�[΂l|ߒ5���Ctpc��EFq�ܺ��B�k�(_�}<�i�W`9�b���2�s�Y�ײ��&2L�џWdA:��f/CG�v-��vr,��]�}.F��|��"҂t͞�@�18b�q(T�YBW�pL	�3Z�䨖��mH,	n�g���Z��AVsw�n���h�A����!uzn����Hrõ�ֳ m����żR����MUˮ���jh�u����q�T�@/�~7ס�,�Dc��*�8��s�D�xR������U��"[�gC�_3S�%*]��($II����(d�O�u��ML�[	C�H8Ƃ�Y��|��<��l��g����O��k��!���T��8���HnH��D��N�n1�$kڝ�Y�1�2��pWḋ_�el��@@A%�����up��s����&���8��6��¿V�ջ[˂���h�9�A�[Ԩ�XO��U���\fѥAReRqD�7t�D��o,�C)��(��aH��O����C�^F����I~aJ�U]P"y�rz�]є���<�sk����wgǲ k�N�;0ųP�Hu@�s�Ȳ�)��/��q�5ѳd7򔮹�Cr�Ğ5��ސ����#�Q���|"�z�,��n�����#9�m#pۨ1�Y<��I�;�*J�����E�n�?�_H8� I2g�q�7��r�oH�H��p23��D[:��@:=#H��,J!q���;%�e۠�� �c�s����s$��[<O3��_MU��i7H{��8�~���k��m�Ї��_���&Y�78�H���3I�+�h\k�=;ߠn�!��$Ud��(�$��k]=	�t����6y�f˙w�
��&Y����Az�!�%X	Hǰm�v@�2G�'�S�K��D�(�{����4�d�i�ԌDf�y
ڇT�8EPl5�pr�s�q������6t=?�j�7�9��0�d��=^��žA�����/
��o{Kv����3�M�)A���dA�H�ö�ER��V�Ő�_x�f���f�P֒^�3/��!��j�	>$�KRQ۹�ҲQ�x�66Q}0�O�.�ؕ����b��<(H9RE�b$2�r-f�D$�QLk�4�4S��Y���7F4&���"���!� Qb�k��(߹g��A���K_�8Q���+<��Cԡ���"��3,�<%K�m�"�����K�1E�S���mz�J�'ǂ4�Ü���q��I%Ni��=�+d�r���dίg����mYt�h��l�bБ,H��%Ⱥ�?�rB�l	vw{Ch,��3�gI)n�c<9r/�{�Fx$9~9Ef���qg�X8���Y((�����Gh{C]Oq�)mdWrk�n�Y-'ɂ�c{���d��s$�sn"�4��*�9H}�⡡��w�{�$��<#�nòǺ2�}B@�&��Oސ��ٚ泑�A�����ccϮ���}��Je���-Y��}LBP��_÷A�a)qߦ����uRb׾PQnS�5��i����|�#�8D4P�F��u����ܢH#�fy 4U�5�#���[+��$��S_$�'������
����+o�H*_�MD�2����7�.R*v�+�u�T��٤�rr�:x��[CUj�?��Я���{0ؠa�<�ڧ��YJ��OD�e�аT��_�˩ɳ������O٥����Zܒ�i��쎀�[2�:z/I
��$Y~"������VcH�:���r�pP�]<�A������q/A~��r��h?�K�[��{�w\ۡf7�|��P����
�Cm�6��~-,9�����ˤ�u<�T�������zr���Z'��s]KP�x��c!�epN�-�i�պ�>9���Gq��P�zw'憆}�lH;C�{� Y   :�X��*ȉ#g�où��I��H#�#)�p.��l���p�I�%���ވ)"ÿ(�xݭ87{ #a_�_��$��bH�������!�t�      k      x��[[o\�u~�
�����e��-P-ry��b_�)�y.�)�@"q�%.$n�-�*�v,˖�����:3$�BJ�-'v!�Ùs�����������p֙�={<��觳Of�uf��}4{�<�=<z�3���>�=�=���Ls�F�[�o��^������O�jU�/ŕT��E#�,��Er)8����(���3m;�s��4�;�Sm�!�I�V�O��:wO:���w���r��n��s=n���[�.�[\���q�heE��Pj���i��F8GE���`8������OF�����꧝�x^�䶤�[d��u�{���x�h���!�R�U
��F%8�Ni�������R^H�ϱ��5x��ˬ'MO���,[����=ae��5�m�Z
6�T���0vŐs<�ݟ=��ޛ}��xx�)��9{��	7���A��eF�E۸�#]}r�F��`�h��]UUVa&���6\9�U0���8�μ��v&���޵k7�q���i8OF�4���I�Q�q�vˤ˦L���x��M�w��p{LcvM����QbW�h�>������,R���<����x����W�nm��ޤ�No��8SN����a�?=���4��h8��6�8�_9쨎�T�c��'Dc��b�D��g7veP��4������XEL���@~��||���A� e�bPw����m�|��D�0��	�c0.FƜr4�1甜�vk��s�َ1�B``��^k�v]���3��ݗ_ޞ�?���>���*>�0)7�#����.�g�ȩtҟ�:�k�������#�>@�M����{��ke��{��E7�dgQtmD#�-_rx��yz�y�\�aJ}>���F��'�<o��[���/���ם��w2z.Шk��<|��:-��~�����pP:wڙ��z�ۃŃ���k��D0���ϖ��&Th��������gΗmN�Cl�1o������7=B4�`2��֕�&��F�Ր�RK��]��wg��O�ϗg�a��XJ.���F�����W)�8Ʌ`@���42�jR��0M�������
i�ǘ��M��9�{Z��J���L��o�Z��� "��*pY�������ysb�-��ѿ�|��27�A�����hwG"�BT%M�ZQ�p6fƫ漘X���!qZJ��U�����mA�9Rg�ȶ6�{,Y
�q������`d�ŗ�0���{-K{H�q��խ������W���[vg�N��B78zw@�'h��ş�3yTn�q�7�{�}t�{�T���{�;�!b,�� ��0Owәx��N���c����5[��ٟ��h���)Ps��Fz4��ه��}*8��*)���I�8c�ׇ"��E�Q�%p�3�H9�5Ωe$Z���V��1�!����{9�b�O�Ǿ8z�&%>}����Vt1@�� �ז`�+��v�K+X�.G���� �J	���1�@\�@��aj��:�{Τ��I'�M<D�<WAD@�C�Y�cp�P.A��yYIU�(>2��3h�A��|�Y�����X'EJ1��lm���NH�d�0n�AE ��� %���I��x���	m�:˘���l���tO�.Z^E�H�5*���I��ѕZ���E��V$X�� >��r�	�`�]��4�&���N�$J �e�C�aE� �RL�=�#k�6���A�:�E�BájzK��1fY�hK�mBGk����R`�}��+�Fk�,%�c��'�
�B��W⶜h�Z���V��=\5~3P�u�6�.��Z���@Z	��m��u���]	�Go�lxDx�ѩi���5��X�z�Y��*�ó�B��g�<������-��t���1F�:�8�_$h?O)q��[�Pa����+�^R�"�(��t�R-?�5��x��-�
L ZDx���1�J�b	�>h���xw�y����~�+�S b*T���Y]����I��j.��s�G�{i,-���GZ3��vA~t�yL�o��MA-�%86]�j,�"vh)��Vk�y<%W>��=�u�����)�I����q��(.T�d5�@�(fb� b �$�.��,���X���L����yV�Hr�*FS�3��%��3�V&�ڂI$&�h�\LP�7|�)N�8!�n���a	c.�2F��~��	�Z��&��R"`�����Ͳ�=���fy���9�9i����9��"0j�(sVѢֱY�I��~��&�xj�V���٘I��D\��K�3�̂�&⊒ ��*�6��S�'�Bf���Q 4�Z���,�v:/��:���xq��k��x4��\����N���;�A����~���$�����~8m�����p����2�x7
؉\;�����P�)z�dZƗ�p���e�P�n�[���|�(L�u���l��8������:=B�S�VƓ� 8ҙJ&؈����E���<)S�I�ˠ0�d�C��ɂ���0E�?�'��bK���$��p����r�s�%��e��d��0o\*�T��g9 zu1W�C�1��n��bs�s�و0*C�6�,"��"$�=�J&'��$��pe0���/�
B�$f��	��U�¿eb�n��W��J"A�dkS�m>e<���78(�5��ݜ'��&=�m��=���Zv��	ؠn8�+�d��"�ϿZ���x:�g,�*UyQXQ5"Ę�A�9���Y��LQ^���`�LZ�`�M�r���3C�9�b,-!��Kp�/	���/�d0R�ń�ҫ\3O��I���2�JX �0�"�l��\q�`��Ȓ;���bn��J�q5�`ǖ��5*;Lc�p��T����2��T. �,�&3b5��HJwy��:�@ Q#��e�ΡoγR(ydI�1�0.@dm@@�l��J�m`�:�(!��㋇@��!BZ�ymL�p��o-:U��j�l�� (�ʣ�t��^�V��d2Q��F�e�d��*�
 \�)0L�L|�9�8m�-r�U�ĺjtP������+m�`*�n@a��ۢr�p��%@1$PY1���X.�4kA><,�� )z�#�8�R�,�h(� �e��4�܀�g�G�O��gi[�H�G��H����i���J�q��Zv���3���;}L�5��ّ���_o���eu�N�-Dr��I�?Ǥ��[XV'(rQ�/���؇wZ�rs�<q(!�$u�4�93q�[�-��zvZ
����>�u�n��^}���ʚ��H�J��E����2��_DTV�4����Va�$h����<L@	��5Ę�
Ik���c�:#Ko	���V]��c�u�����g��K��I�+mb`�3(C��Z?EH%k���g2J���m�e]mT P�Ǉ�xPl�ND�v�5�ϧYf�c�`ܦ5���|���҉�2�e�2��������g����<ʾ���1F�]N��f�l (V�h���Eh.�J�f-���J��;�K����:^�h4:�4�� �DUV&�2@ZY,"�pl8�^D>�� ��,�E{n��b9w;�r�ҦG���nL��Zǽ��nK
ﯮ,�Ӗ?A����:�:�-�A��5��B��ϣ� D���<�ŔQ53GS�Y�#X$�|���S8z*�鹪t���۰����n�f��H��S���Y`���~�i�[���x���w���n��o�3�8�����~?����SPׅ��{������t�=��/F�6b�5�Ny�'TO�����,HlO`�F��"v�ʤ���Z�>$2��[;������6Z �����ᭆ�U���ٟ1ԔV��S�c�_��Å��oï���Ub�ʫ0�i%-CL	\
Bd�a"=��V2�O���.'їu��赐��a��	�<�.��u���댊ݐ�� ��⺲��.<e%io�MQ8 �T����Rm�7\�����l���{FR\ 	�֓��]�ڄ�C1�d��g�h�R�Ii�H�B� �  �j�:T+��(���f��p����B����.U��e�<c
%!��uT<�z����I/��6�*��I��H���A�m�°�=-�V�l�A�@�+7h�Um��i�[�"<� d�D�a�34[�uB̰O����k��9��H�D��	2VF)�jSU�!��X-]F� �0����-<�Y;Y��u�6I J���hXKVj����b����0}?�=܄�)}�|�F�����!�_�?�����
��D6�B˱h��v�l>�?����L��Uew����\;��w0���#�b��e$���x9�x���hw������N'V�e�-�o.������݉G������ξ\l�w��ѯ�~A��l�0G�L[��L���%Q�}���.F�&�s2=��w��=���y)O1̬��{�M���?�m�ʷ_I�,Y� p7��[��gí����������%�|�cq�p�������,���'W�lƝp3�1����sFiӵsk��
��M�x�u�'���d��)� �:(݋=����/��Ÿ}������f:Dl1�S�6ұ��m�,}SO�Ƴ�%��J|��K��6��x:7�d���ýpP�2!�:�3�	:�
�J�]������B���T�����I�M�i��I��wBN'[����8h��T|�v.w���].]F�b�4�s��=����X��
I��UG�Km��^����[6���r��A���k�T��6����l��ߨp^Je.G�����hT���FY�(M�$k�.g�B�-��%0��H��gY$k�+V��<ڒi��'T�I��e�9�P�C��N����%p�t��^�l=/,e0G�BQ�ɶ:�\��s��lR���¾�c�'�U��Y[�5��ରEy%��ʻ�嚶�+�e!p����eUy2?�h8,�2�RfM_
��ҮU/��,���	�Z�qN�bC���N����:$�5�-�d#�d>�s�&����v/I�
5�
��*���Q�'���1P(�w�ej9��-�>O�S���?�3STsyZ��gR�[Z��v���wtV6���N8��T׮�h,�4O����t���,ED&�Ǐʸ�o��ZfwNY���փ�o�Ք7h#���|O��O���᪉0�/fϽ�`�2����m[3�+�w�g��?�Q�[��c�^��}W��i' y}�7�~m�?z�#{f�ϸn>(��`��G3�Z.uˋ�D<�E+����h�0�i�`[��Z��i�_��Y�]y��r���%���      �   M  x���9n1c��+�)Q�#��Má�p��[�MF6�J��\����۷F�p�H:����b%?1�	�#�~g�#r��e��#��paW$�0>�'�~8>��E`9��aFC���z�x�Гa�(�Y��D��FB�	Լ~��|��Cۤ�p�e3n�K��8X�Sg��׊�^).��mP�����vU�q�d����<2!��Z+��r�tT�j�V��*\�����#¢��n�魂]�3�:��!�c��K="Ľ��\�h��i�6�u�͎3"��N�����F��cB$��#�ŉ� %v�̈�����%$      �   �  x�}���7E��WLn��b=X��`8r�',Ȓ�������pz�pp�����&b����/�ǟ����/��M�@=���p�Y��~!9܄�C��K�SK�sa�\sI���6>������=�'�w��V��"E_x��Xԗ����a�X[�����x,�����t+����>�@�8���M߳�i�u����"�1�"1$����$��>gd5̙N�×2�=P�T��K�^ʷoW��@��=�zT��µ��-ƃሼSH��Er��TD"����9|m!zfN1���Гlћ-��� ݣ�{�Ur�7+~(�E���v�qDO���$�n�˧�����`�i�?[�Ԛ{� ��g���MȊ�6��{m֑Аjm\�Lw�|�1{XP�ŸE�ރ&O��%5���FP	E�%�~t`�	�	�Nr�
�9X��=Ao���2�]p��Ur��!>�|�����x�̋�ErQ7 RJ^dZ�-߾tk3��gQ�2�O��ݕo!���{\�r�\��T�6�0�y��}|)�e��,�h��K�D�mK;.���0Xp�
4<�l��$��z�ɪȶ�,��h(G�=S|º�Z�TS�EC�O���I[�Un;}a�!�.g&���%��&�P��<�d�,�.���)����a��E�!����3<�V�!n���d�+g\�4��h r���g�ՐpW���7�!m2m I��Bݢͫ��>d���q�b�G�`�u��Z%gg[��v�0c;�A���&J�j]X���\c���}�Jekt:���J|^��ːiwI���/,}7�窶=q�9�HӦa�Q'�4ɮz�����s��+��=��iZ�Ju�T������z4���xF}��:��׉%HO`w�C;O=��`��*ZsHl��Rf	S�!� �vb���Dv/9
[���XU���4���K��#�:�-����'�;�l��-�6��,c��2qj:�
���?v����J��9�/��|�     