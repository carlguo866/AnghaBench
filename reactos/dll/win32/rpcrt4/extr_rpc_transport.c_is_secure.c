
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* QOS; } ;
struct TYPE_13__ {TYPE_5__ common; } ;
struct TYPE_11__ {TYPE_3__* qos; } ;
struct TYPE_9__ {TYPE_1__* HttpCredentials; } ;
struct TYPE_10__ {scalar_t__ AdditionalSecurityInfoType; TYPE_2__ u; } ;
struct TYPE_8__ {int Flags; } ;
typedef TYPE_6__ RpcConnection_http ;
typedef int BOOL ;


 scalar_t__ RPC_C_AUTHN_INFO_TYPE_HTTP ;
 int RPC_C_HTTP_FLAG_USE_SSL ;

__attribute__((used)) static BOOL is_secure(RpcConnection_http *httpc)
{
    return httpc->common.QOS &&
           (httpc->common.QOS->qos->AdditionalSecurityInfoType == RPC_C_AUTHN_INFO_TYPE_HTTP) &&
           (httpc->common.QOS->qos->u.HttpCredentials->Flags & RPC_C_HTTP_FLAG_USE_SSL);
}
