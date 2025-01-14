
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ engine_len; scalar_t__ engine_boots; scalar_t__ engine_time; int engine_id; } ;
struct TYPE_7__ {scalar_t__ priv_proto; scalar_t__ auth_proto; int auth_key; int priv_key; int sec_name; } ;
struct snmp_pdu {int flags; TYPE_2__ engine; TYPE_1__ user; } ;
typedef enum snmp_code { ____Placeholder_snmp_code } snmp_code ;
struct TYPE_11__ {int engine_len; scalar_t__ engine_boots; scalar_t__ engine_time; int engine_id; } ;
struct TYPE_9__ {scalar_t__ priv_proto; scalar_t__ auth_proto; int auth_key; int priv_key; } ;
struct TYPE_10__ {int status; scalar_t__ user_engine_len; TYPE_3__ suser; int user_engine_id; } ;


 scalar_t__ SNMP_AUTH_NOAUTH ;
 int SNMP_CODE_BADENGINE ;
 int SNMP_CODE_BADSECLEVEL ;
 int SNMP_CODE_BADUSER ;
 int SNMP_CODE_NOTINTIME ;
 int SNMP_CODE_OK ;
 int SNMP_MSG_AUTH_FLAG ;
 int SNMP_MSG_AUTODISCOVER ;
 int SNMP_MSG_PRIV_FLAG ;
 scalar_t__ SNMP_PRIV_NOPRIV ;
 scalar_t__ SNMP_TIME_WINDOW ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,int) ;
 TYPE_6__ snmpd_engine ;
 scalar_t__ strlen (int ) ;
 int update_snmpd_engine_time () ;
 TYPE_4__* usm_find_user (int ,int,int ) ;
 TYPE_4__* usm_user ;

__attribute__((used)) static enum snmp_code
snmp_pdu_auth_user(struct snmp_pdu *pdu)
{
 usm_user = ((void*)0);


 if (pdu->engine.engine_len == 0 && strlen(pdu->user.sec_name) == 0) {
  pdu->engine.engine_len = snmpd_engine.engine_len;
  memcpy(pdu->engine.engine_id, snmpd_engine.engine_id,
      snmpd_engine.engine_len);
  update_snmpd_engine_time();
  pdu->engine.engine_boots = snmpd_engine.engine_boots;
  pdu->engine.engine_time = snmpd_engine.engine_time;
  pdu->flags |= SNMP_MSG_AUTODISCOVER;
  return (SNMP_CODE_OK);
 }

 if ((usm_user = usm_find_user(pdu->engine.engine_id,
     pdu->engine.engine_len, pdu->user.sec_name)) == ((void*)0) ||
     usm_user->status != 1 )
  return (SNMP_CODE_BADUSER);

 if (usm_user->user_engine_len != snmpd_engine.engine_len ||
     memcmp(usm_user->user_engine_id, snmpd_engine.engine_id,
     snmpd_engine.engine_len) != 0)
  return (SNMP_CODE_BADENGINE);

 pdu->user.priv_proto = usm_user->suser.priv_proto;
 memcpy(pdu->user.priv_key, usm_user->suser.priv_key,
     sizeof(pdu->user.priv_key));


 if ((pdu->flags & SNMP_MSG_AUTH_FLAG) != 0) {
  update_snmpd_engine_time();
  pdu->user.auth_proto = usm_user->suser.auth_proto;
  memcpy(pdu->user.auth_key, usm_user->suser.auth_key,
      sizeof(pdu->user.auth_key));

  if (pdu->engine.engine_boots == 0 &&
      pdu->engine.engine_time == 0) {
   update_snmpd_engine_time();
       pdu->flags |= SNMP_MSG_AUTODISCOVER;
   return (SNMP_CODE_OK);
  }

  if (pdu->engine.engine_boots != snmpd_engine.engine_boots ||
      abs(pdu->engine.engine_time - snmpd_engine.engine_time) >
      SNMP_TIME_WINDOW)
   return (SNMP_CODE_NOTINTIME);
 }

 if (((pdu->flags & SNMP_MSG_PRIV_FLAG) != 0 &&
     (pdu->flags & SNMP_MSG_AUTH_FLAG) == 0) ||
     ((pdu->flags & SNMP_MSG_AUTH_FLAG) == 0 &&
     usm_user->suser.auth_proto != SNMP_AUTH_NOAUTH) ||
     ((pdu->flags & SNMP_MSG_PRIV_FLAG) == 0 &&
     usm_user->suser.priv_proto != SNMP_PRIV_NOPRIV))
  return (SNMP_CODE_BADSECLEVEL);

 return (SNMP_CODE_OK);
}
