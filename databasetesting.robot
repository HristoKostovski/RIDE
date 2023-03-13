*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         kostovski
${dbuser}         root
${dbpasswd}       ${EMPTY}
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
TC1
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM modeli    @{queryResults}
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

TC2
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Check if exists in Database    SELECT * FROM marki
    @{queryResults}    Query    SELECT * FROM marki

TC_selectmarki_sp
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    Call _select_marki()
    FOR    ${row}    IN    @{queryResults}
        LOG    ${row}
    END

TC_insert_marki
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    INSERT INTO marki(marki_name,country,eu) Values('TOYOTA','JAP',2)    @{queryResults}

TC_marki_bycountry
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    SELECT *FROM marki WHERE country like 'UK'    @{queryResults}

TC_country like
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    SELECT*FROM marki WHERE country LIKE 'JAP' OR country like 'UK'    @{queryResults}

TC_countryeu
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    SELECT *FROM marki WHERE EU='1'    @{queryResults}

TC_orderby desc
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    SELECT*FROM marki ORDER BY marki_name DESC    @{queryResults}

TC MARKI
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM marki    @{queryResults}
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

TC_modeli A
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    SELECT*FROM modeli WHERE modeli_name LIKE'A%'    @{queryResults}

TC_modeli cena boja
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    SELECT*FROM modeli WHERE color LIKE 'black' AND price>=1000    @{queryResults}

TC_modeli_ceni
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    SELECT*FROM modeli WHERE price BETWEEN 1000 AND 2000    @{queryResults}

TC_selectmarki
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    SELECT * FROM modeli ORDER BY price ASC    @{queryResults}

TC_modelinajskapo
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    SELECT*FROM modeli ORDER BY price ASC LIMIT 1

TC_modelinajevtino
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    SELECT*FROM modeli ORDER BY price DESC LIMIT 1    @{queryResults}

TC_call_insertmarki
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    CALL _insert_marki('BMW','US','0')

TC_callmarkidesc
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    CALL _marki_desc

TC_callmarkibycountry
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    CALL _marki_country('IT','UK')

TC_callupdate
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    marki
    Execute Sql String    CALL _update_marki('AUDi','JAP','13')

TC_call_modelinajevtino
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    CALL _modeli_najevtino

TC_callnajskapo
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    CALL _modeli_najskapo

TC_call_colour
    Connect to Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must exist    modeli
    Execute Sql String    CALL _modeli_cena_boja ('black')
