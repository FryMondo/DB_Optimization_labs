create or replace PROCEDURE insert_values_into_cities AS
    type city_list_t IS VARRAY(10) OF VARCHAR2(40);
    city_list city_list_t := city_list_t('New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix',
                                         'Philadelphia', 'San Antonio', 'San Diego', 'Dallas', 'San Jose');
    v_chosen_city VARCHAR2(100);
    v_index       NUMBER;
BEGIN
    FOR i IN 1..100000 LOOP
            v_index := FLOOR(SYS.DBMS_RANDOM.VALUE(1, 11));

            v_chosen_city := city_list(v_index) || ' ' || i;

            INSERT INTO CITIES (name)
            VALUES (v_chosen_city);
        END LOOP;

    COMMIT;
END insert_values_into_cities;