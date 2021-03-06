DROP TABLE IF EXISTS PRODUCT_PRICES;
  
CREATE TABLE PRODUCT_PRICES (
  id VARCHAR(50)  PRIMARY KEY,
  product_name VARCHAR(250) NOT NULL,
  price DECIMAL(250) NOT NULL,
  currency CHAR(3) NOT NULL,
  last_updated_time BIGINT NULL
);