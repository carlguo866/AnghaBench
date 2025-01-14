
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int credits; int echo_credits; int oplock_credits; scalar_t__ in_flight; int req_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline bool
zero_credits(struct TCP_Server_Info *server)
{
 int val;

 spin_lock(&server->req_lock);
 val = server->credits + server->echo_credits + server->oplock_credits;
 if (server->in_flight == 0 && val == 0) {
  spin_unlock(&server->req_lock);
  return 1;
 }
 spin_unlock(&server->req_lock);
 return 0;
}
