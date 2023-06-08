--
-- Class Artical as table artical
--

CREATE TABLE "artical" (
  "id" serial,
  "title" text NOT NULL,
  "content" text NOT NULL,
  "publishOn" timestamp without time zone NOT NULL,
  "isPrime" boolean NOT NULL
);

ALTER TABLE ONLY "artical"
  ADD CONSTRAINT artical_pkey PRIMARY KEY (id);


