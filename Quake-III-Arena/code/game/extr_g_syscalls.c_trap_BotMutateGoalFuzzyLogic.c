
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_MUTATE_GOAL_FUZZY_LOGIC ;
 int syscall (int ,int,float) ;

void trap_BotMutateGoalFuzzyLogic(int goalstate, float range) {
 syscall( BOTLIB_AI_MUTATE_GOAL_FUZZY_LOGIC, goalstate, range );
}
