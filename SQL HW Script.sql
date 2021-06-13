-- Drop table

-- DROP TABLE "Homework"."transaction";

CREATE TABLE "Homework"."transaction" (
	id int4 NOT NULL,
	"date" timestamp NOT NULL,
	amount float8 NULL,
	card varchar(20) NULL,
	id_merchant int4 NULL,
	CONSTRAINT transaction_pkey PRIMARY KEY (id),
	CONSTRAINT transaction_card_fkey FOREIGN KEY (card) REFERENCES "Homework".credit_card(card),
	CONSTRAINT transaction_id_merchant_fkey FOREIGN KEY (id_merchant) REFERENCES "Homework".merchant(id)
);
