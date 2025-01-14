
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int matrix_row_t ;


 scalar_t__ DEBOUNCE ;
 int GPIOA ;
 int GPIOB ;
 int GPIOC ;
 int GPIOD ;
 int MATRIX_ROWS ;
 int debouncing ;
 int debouncing_time ;
 int* matrix ;
 int* matrix_debouncing ;
 int palClearPad (int ,int) ;
 int palReadPort (int ) ;
 int palSetPad (int ,int) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int wait_us (int) ;

uint8_t matrix_scan(void)
{
    for (int row = 0; row < MATRIX_ROWS; row++) {
        matrix_row_t data = 0;


        switch (row) {
            case 0: palSetPad(GPIOB, 11); break;
            case 1: palSetPad(GPIOB, 10); break;
            case 2: palSetPad(GPIOB, 2); break;
            case 3: palSetPad(GPIOB, 1); break;
            case 4: palSetPad(GPIOB, 0); break;
        }

        wait_us(20);


        data = ((palReadPort(GPIOA) & 0x8000UL) >> 15) |
            ((palReadPort(GPIOC) & 0x1C00UL) >> 9) |
      ((palReadPort(GPIOD) & 0x0004UL) << 2) |
      ((palReadPort(GPIOB) & 0x03F8UL) << 2) |
      ((palReadPort(GPIOA) & 0x000CUL) << 10);


        switch (row) {
         case 0: palClearPad(GPIOB, 11); break;
         case 1: palClearPad(GPIOB, 10); break;
         case 2: palClearPad(GPIOB, 2); break;
         case 3: palClearPad(GPIOB, 1); break;
         case 4: palClearPad(GPIOB, 0); break;
        }

        if (matrix_debouncing[row] != data) {
            matrix_debouncing[row] = data;
            debouncing = 1;
            debouncing_time = timer_read();
        }
    }

    if (debouncing && timer_elapsed(debouncing_time) > DEBOUNCE) {
        for (int row = 0; row < MATRIX_ROWS; row++) {
            matrix[row] = matrix_debouncing[row];
        }
        debouncing = 0;
    }
    return 1;
}
