
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitActiveState ;


 int ELEMENTSOF (int const*) ;
 int EXIT_PROGRAM_DEAD_AND_PID_EXISTS ;

 int check_unit_generic (int ,int const*,int ,int ) ;
 int strv_skip (char**,int) ;

__attribute__((used)) static int check_unit_failed(int argc, char *argv[], void *userdata) {
        static const UnitActiveState states[] = {
                128,
        };

        return check_unit_generic(EXIT_PROGRAM_DEAD_AND_PID_EXISTS, states, ELEMENTSOF(states), strv_skip(argv, 1));
}
