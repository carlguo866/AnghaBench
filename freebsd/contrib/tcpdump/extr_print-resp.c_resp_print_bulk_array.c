
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int GET_LENGTH (int *,int,int const*,int) ;
 int SKIP_OPCODE (int const*,int) ;
 int TEST_RET_LEN_NORETURN (int) ;
 int resp_parse (int *,int const*,int) ;
 int resp_print_empty (int *) ;
 int resp_print_invalid (int *) ;
 int resp_print_length_negative (int *) ;
 int resp_print_length_too_large (int *) ;
 int resp_print_null (int *) ;

__attribute__((used)) static int
resp_print_bulk_array(netdissect_options *ndo, register const u_char *bp, int length) {
    u_int length_cur = length;
    int array_len, i, ret_len;


    SKIP_OPCODE(bp, length_cur);


    GET_LENGTH(ndo, length_cur, bp, array_len);

    if (array_len > 0) {

        for (i = 0; i < array_len; i++) {
            ret_len = resp_parse(ndo, bp, length_cur);

            TEST_RET_LEN_NORETURN(ret_len);

            bp += ret_len;
            length_cur -= ret_len;
        }
    } else {

        switch(array_len) {
            case 0: resp_print_empty(ndo); break;
            case (-1): resp_print_null(ndo); break;
            case (-2): goto trunc;
            case (-3): resp_print_length_too_large(ndo); break;
            case (-4): resp_print_length_negative(ndo); break;
            default: resp_print_invalid(ndo); break;
        }
    }

    return (length - length_cur);

trunc:
    return (-1);
}
