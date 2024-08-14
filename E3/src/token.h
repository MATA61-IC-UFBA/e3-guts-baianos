/* token.h */
typedef enum {
        ID = 256, 
	NUM, 
        // KEY, 
        ARRAY,          //KEYWORD
        BOOLEAN,        //KEYWORD
        CHAR,           //KEYWORD
        ELSE,           //KEYWORD
        FALSE,          //KEYWORD
        FOR,            //KEYWORD
        FUNCTION,       //KEYWORD
        IF,             //KEYWORD
        INTEGER,        //KEYWORD
        PRINT,          //KEYWORD
        RETURN,         //KEYWORD
        STRING,         //KEYWORD
        TRUE,           //KEYWORD
        VOID,           //KEYWORD
        WHILE,          //KEYWORD
        // SYM,         AGORA RETORNA VALOR ASC   
        // SYMC,
        LTE,            // SYMC (<=)
        GTE,            // SYMC (>=)
        EQ,             // SYMC (==)
        NEQ,            // SYMC (!=)
        AND,            // SYMC (&&)
        OR,             // SYMC (||)
        // CHAR,        AGORA RETORNA VALOR ASC
	STR,
	ERROR
} token_t; 