--------------------------------------------------------
--  File created - Sunday-May-28-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HOTEL_BOOKING
--------------------------------------------------------

  CREATE TABLE "HOTEL_BOOKING" ("HOTEL_ID" VARCHAR2(20), "BOOKING_ID" VARCHAR2(20), "NUMBER_OF_BOOKING" VARCHAR2(20)) ;

   COMMENT ON COLUMN "HOTEL_BOOKING"."BOOKING_ID" IS 'FOREIGN KEY FROM USER_BOOKING';
--------------------------------------------------------
--  DDL for Table HOTEL_LOCATION
--------------------------------------------------------

  CREATE TABLE "HOTEL_LOCATION" ("HOTEL_ID" VARCHAR2(20), "HOTEL_STATE" VARCHAR2(20), "HOTEL_CITY" VARCHAR2(20)) ;
--------------------------------------------------------
--  DDL for Table HOTEL_MANAGEMENT
--------------------------------------------------------

  CREATE TABLE "HOTEL_MANAGEMENT" ("HOTEL_ID" VARCHAR2(20), "HOTEL_REGISTRATION_NUMBER" VARCHAR2(20), "HOTEL_ADDRESS" VARCHAR2(40), "HOTEL_EMAIADDRESS" VARCHAR2(30), "HOTEL_CONTACT" VARCHAR2(20), "HOTEL_CAPACITY" NUMBER, "HOTEL_IMAGES" VARCHAR2(20), "OWNER_ID" VARCHAR2(20), "RATING" VARCHAR2(20), "REVIEW" VARCHAR2(100)) ;

   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."HOTEL_REGISTRATION_NUMBER" IS 'hotel Licence number';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."HOTEL_ADDRESS" IS 'city , state maintained in another table';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."HOTEL_EMAIADDRESS" IS 'future: maintaing emial and contact in another table';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."HOTEL_CAPACITY" IS 'contating seats vacant / available ';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."HOTEL_IMAGES" IS 'not mandatory but preferred ';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."OWNER_ID" IS 'FOREIGN_KEY (HOTEL_OWNER_INFO)';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."RATING" IS 'star format';
   COMMENT ON COLUMN "HOTEL_MANAGEMENT"."REVIEW" IS 'all users review display';
--------------------------------------------------------
--  DDL for Table HOTEL_OWNNER_INFO
--------------------------------------------------------

  CREATE TABLE "HOTEL_OWNNER_INFO" ("OWNER_NAME" VARCHAR2(30), "OWNER_ID" VARCHAR2(20), "OWNER_CONTACT" VARCHAR2(20), "OWNER_EMAIL" VARCHAR2(20)) ;

   COMMENT ON COLUMN "HOTEL_OWNNER_INFO"."OWNER_ID" IS 'will act as foreign key for Hotel_management table';
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" ("USER_ID" VARCHAR2(20), "USER_ACCOUNT_ID" VARCHAR2(20), "USER_NAME" VARCHAR2(20)) ;
--------------------------------------------------------
--  DDL for Table USER_ACCOUNT
--------------------------------------------------------

  CREATE TABLE "USER_ACCOUNT" ("USER_ID" VARCHAR2(20), "PASSWORD" VARCHAR2(20), "LAST_1_PASSWORD" VARCHAR2(20), "LAST_2_PASSWORD" VARCHAR2(20), "LAST_3_PASSWORD" VARCHAR2(20), "USER_STATUS" VARCHAR2(20), "PASSWORD_RETRY_COUNT" NUMBER, "USER_ACCOUNT_ID" VARCHAR2(20)) ;

   COMMENT ON COLUMN "USER_ACCOUNT"."USER_ID" IS 'FOREIGN KEY FROM USERS';
   COMMENT ON COLUMN "USER_ACCOUNT"."LAST_1_PASSWORD" IS 'FUTURE SCOPE';
   COMMENT ON COLUMN "USER_ACCOUNT"."LAST_2_PASSWORD" IS 'FUTURE SCOPE';
   COMMENT ON COLUMN "USER_ACCOUNT"."USER_STATUS" IS 'ACTICE / DEACTIVE';
   COMMENT ON COLUMN "USER_ACCOUNT"."PASSWORD_RETRY_COUNT" IS 'ACT AS FLAG AUTOINCREMENT';
--------------------------------------------------------
--  DDL for Table USER_BOOKING
--------------------------------------------------------

  CREATE TABLE "USER_BOOKING" ("USER_ID" VARCHAR2(20), "BOOKING_ID" VARCHAR2(20), "NUMBER_OF_BOOKING" VARCHAR2(20), "BOOKING_DATE_TIME" VARCHAR2(20), "LAST_BOOKING_DETAILS" VARCHAR2(20)) ;
--------------------------------------------------------
--  DDL for Table USER_PROFILE
--------------------------------------------------------

  CREATE TABLE "USER_PROFILE" ("FIRSTNAME" VARCHAR2(20), "USER_ID" VARCHAR2(20), "MIDDLENAME" VARCHAR2(20), "LASTNAME" VARCHAR2(20), "EMAILID" VARCHAR2(50), "PERMANENTADDRESS" VARCHAR2(100), "TEMPORARYADDRESS" VARCHAR2(100), "CONTACT" VARCHAR2(20), "ALTERNATENUMBER" VARCHAR2(20)) ;

   COMMENT ON COLUMN "USER_PROFILE"."MIDDLENAME" IS 'OPTIONAL';
   COMMENT ON COLUMN "USER_PROFILE"."TEMPORARYADDRESS" IS 'CHECKBOX IF PERMANENT AND TEMPORARY ARE SAME SO DIRECTLY INFO CAN BE COPIED';
   COMMENT ON COLUMN "USER_PROFILE"."ALTERNATENUMBER" IS 'IN CASE CONTACT NUMBER IS NOT REACHABLE ';
--------------------------------------------------------
--  DDL for Sequence DEMO_CUST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEMO_CUST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_ORDER_ITEMS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEMO_ORDER_ITEMS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_ORD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEMO_ORD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_PROD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEMO_PROD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEMO_USERS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEMO_USERS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into HOTEL_BOOKING
SET DEFINE OFF;
REM INSERTING into HOTEL_LOCATION
SET DEFINE OFF;
REM INSERTING into HOTEL_MANAGEMENT
SET DEFINE OFF;
REM INSERTING into HOTEL_OWNNER_INFO
SET DEFINE OFF;
REM INSERTING into USERS
SET DEFINE OFF;
REM INSERTING into USER_ACCOUNT
SET DEFINE OFF;
REM INSERTING into USER_BOOKING
SET DEFINE OFF;
REM INSERTING into USER_PROFILE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index HOTEL_OWNNER_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOTEL_OWNNER_INFO_PK" ON "HOTEL_OWNNER_INFO" ("OWNER_ID") ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USERS_PK" ON "USERS" ("USER_ID") ;
--------------------------------------------------------
--  DDL for Index USER_BOOKING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER_BOOKING_PK" ON "USER_BOOKING" ("BOOKING_ID") ;
--------------------------------------------------------
--  DDL for Index USER_ACCOUNT_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER_ACCOUNT_PK1" ON "USER_ACCOUNT" ("USER_ACCOUNT_ID") ;
--------------------------------------------------------
--  DDL for Index USER_PROFILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USER_PROFILE_PK" ON "USER_PROFILE" ("USER_ID") ;
--------------------------------------------------------
--  DDL for Index HOTEL_BOOKING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOTEL_BOOKING_PK" ON "HOTEL_BOOKING" ("HOTEL_ID") ;
--------------------------------------------------------
--  DDL for Index HOTEL_MANAGEMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOTEL_MANAGEMENT_PK" ON "HOTEL_MANAGEMENT" ("HOTEL_ID") ;
--------------------------------------------------------
--  DDL for Index HOTEL_LOCATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOTEL_LOCATION_PK" ON "HOTEL_LOCATION" ("HOTEL_ID") ;
--------------------------------------------------------
--  DDL for Function CUSTOM_AUTH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CUSTOM_AUTH" (p_username in VARCHAR2, p_password in VARCHAR2)
return BOOLEAN
is
  l_password varchar2(4000);
  l_stored_password varchar2(4000);
  l_expires_on date;
  l_count number;
begin
-- First, check to see if the user is in the user table
select count(*) into l_count from demo_users where user_name = p_username;
if l_count > 0 then
  -- First, we fetch the stored hashed password & expire date
  select password, expires_on into l_stored_password, l_expires_on
   from demo_users where user_name = p_username;

  -- Next, we check to see if the user's account is expired
  -- If it is, return FALSE
  if l_expires_on > sysdate or l_expires_on is null then

    -- If the account is not expired, we have to apply the custom hash
    -- function to the password
    l_password := custom_hash(p_username, p_password);

    -- Finally, we compare them to see if they are the same and return
    -- either TRUE or FALSE
    if l_password = l_stored_password then
      return true;
    else
      return false;
    end if;
  else
    return false;
  end if;
else
  -- The username provided is not in the DEMO_USERS table
  return false;
end if;
end;

/
--------------------------------------------------------
--  DDL for Function CUSTOM_HASH
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CUSTOM_HASH" (p_username in varchar2, p_password in varchar2)
return varchar2
is
  l_password varchar2(4000);
  l_salt varchar2(4000) := '9I01K9DD7P0LARWAYK8EBE4ICKXG45';
begin

-- This function should be wrapped, as the hash algorhythm is exposed here.
-- You can change the value of l_salt or the method of which to call the
-- DBMS_OBFUSCATOIN toolkit, but you much reset all of your passwords
-- if you choose to do this.

l_password := utl_raw.cast_to_raw(dbms_obfuscation_toolkit.md5
  (input_string => p_password || substr(l_salt,10,13) || p_username ||
    substr(l_salt, 4,10)));
return l_password;
end;

/
--------------------------------------------------------
--  Constraints for Table HOTEL_MANAGEMENT
--------------------------------------------------------

  ALTER TABLE "HOTEL_MANAGEMENT" ADD CONSTRAINT "HOTEL_MANAGEMENT_PK" PRIMARY KEY ("HOTEL_ID") ENABLE;
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("OWNER_ID" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("HOTEL_CAPACITY" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("HOTEL_CONTACT" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("HOTEL_EMAIADDRESS" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("HOTEL_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("HOTEL_REGISTRATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_MANAGEMENT" MODIFY ("HOTEL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOTEL_BOOKING
--------------------------------------------------------

  ALTER TABLE "HOTEL_BOOKING" ADD CONSTRAINT "HOTEL_BOOKING_PK" PRIMARY KEY ("HOTEL_ID") ENABLE;
  ALTER TABLE "HOTEL_BOOKING" MODIFY ("NUMBER_OF_BOOKING" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_BOOKING" MODIFY ("BOOKING_ID" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_BOOKING" MODIFY ("HOTEL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_ACCOUNT
--------------------------------------------------------

  ALTER TABLE "USER_ACCOUNT" ADD CONSTRAINT "USER_ACCOUNT_PK" PRIMARY KEY ("USER_ACCOUNT_ID") ENABLE;
  ALTER TABLE "USER_ACCOUNT" MODIFY ("USER_ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "USER_ACCOUNT" MODIFY ("PASSWORD_RETRY_COUNT" NOT NULL ENABLE);
  ALTER TABLE "USER_ACCOUNT" MODIFY ("USER_STATUS" NOT NULL ENABLE);
  ALTER TABLE "USER_ACCOUNT" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "USER_ACCOUNT" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID") ENABLE;
  ALTER TABLE "USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("USER_ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOTEL_OWNNER_INFO
--------------------------------------------------------

  ALTER TABLE "HOTEL_OWNNER_INFO" ADD CONSTRAINT "HOTEL_OWNNER_INFO_PK" PRIMARY KEY ("OWNER_ID") ENABLE;
  ALTER TABLE "HOTEL_OWNNER_INFO" MODIFY ("OWNER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_OWNNER_INFO" MODIFY ("OWNER_CONTACT" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_OWNNER_INFO" MODIFY ("OWNER_ID" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_OWNNER_INFO" MODIFY ("OWNER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOTEL_LOCATION
--------------------------------------------------------

  ALTER TABLE "HOTEL_LOCATION" ADD CONSTRAINT "HOTEL_LOCATION_PK" PRIMARY KEY ("HOTEL_ID") ENABLE;
  ALTER TABLE "HOTEL_LOCATION" MODIFY ("HOTEL_CITY" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_LOCATION" MODIFY ("HOTEL_STATE" NOT NULL ENABLE);
  ALTER TABLE "HOTEL_LOCATION" MODIFY ("HOTEL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_BOOKING
--------------------------------------------------------

  ALTER TABLE "USER_BOOKING" ADD CONSTRAINT "USER_BOOKING_PK" PRIMARY KEY ("BOOKING_ID") ENABLE;
  ALTER TABLE "USER_BOOKING" MODIFY ("LAST_BOOKING_DETAILS" NOT NULL ENABLE);
  ALTER TABLE "USER_BOOKING" MODIFY ("BOOKING_DATE_TIME" NOT NULL ENABLE);
  ALTER TABLE "USER_BOOKING" MODIFY ("NUMBER_OF_BOOKING" NOT NULL ENABLE);
  ALTER TABLE "USER_BOOKING" MODIFY ("BOOKING_ID" NOT NULL ENABLE);
  ALTER TABLE "USER_BOOKING" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_PROFILE
--------------------------------------------------------

  ALTER TABLE "USER_PROFILE" ADD CONSTRAINT "USER_PROFILE_PK" PRIMARY KEY ("USER_ID") ENABLE;
  ALTER TABLE "USER_PROFILE" MODIFY ("CONTACT" NOT NULL ENABLE);
  ALTER TABLE "USER_PROFILE" MODIFY ("TEMPORARYADDRESS" NOT NULL ENABLE);
  ALTER TABLE "USER_PROFILE" MODIFY ("PERMANENTADDRESS" NOT NULL ENABLE);
  ALTER TABLE "USER_PROFILE" MODIFY ("EMAILID" NOT NULL ENABLE);
  ALTER TABLE "USER_PROFILE" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "USER_PROFILE" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "USER_PROFILE" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
