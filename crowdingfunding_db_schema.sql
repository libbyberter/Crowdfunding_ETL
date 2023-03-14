-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/G5JyUi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "subcategories" (
    "subcategory_id" varchar(30)   NOT NULL,
    "subcategory" varchar(30)   NOT NULL,
    CONSTRAINT "pk_subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "categories" (
    "category_id" varchar(30)   NOT NULL,
    "category" varchar(30)   NOT NULL,
    CONSTRAINT "pk_categories" PRIMARY KEY (
        "category_id"
     )
);



CREATE TABLE "contact" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "email" varchar(300)   NOT NULL,
    CONSTRAINT "pk_contact" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" int NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" Varchar(300)   NOT NULL,
    "description" Varchar(300)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(30)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(30)   NOT NULL,
    "currency" varchar(30)   NOT NULL,
    "launched_date" varchar(30)   NOT NULL,
    "end_date" varchar(30)   NOT NULL,
    "category_id" varchar(30)   NOT NULL,
    "subcategory_id" varchar(30)   NOT NULL,
	CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "categories" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategories" ("subcategory_id");




