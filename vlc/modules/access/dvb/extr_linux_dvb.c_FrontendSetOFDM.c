
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int hierarchy_information; int guard_interval; int transmission_mode; int constellation; void* code_rate_LP; void* code_rate_HP; int bandwidth; } ;
struct TYPE_6__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int inversion; int frequency; } ;
struct dvb_frontend_event {TYPE_2__ u; int inversion; int frequency; } ;
struct TYPE_7__ {int i_frontend_handle; } ;
typedef TYPE_3__ dvb_sys_t ;


 int DecodeBandwidth (int *) ;
 int DecodeHierarchy (int *) ;
 int DecodeInversion (int *) ;
 int DecodeTransmission (int *) ;
 scalar_t__ EWOULDBLOCK ;
 void* FEC_NONE ;
 int FE_GET_EVENT ;
 int FE_SET_FRONTEND ;
 int GUARD_INTERVAL_AUTO ;
 int QAM_AUTO ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,struct dvb_frontend_parameters*) ;
 int msg_Err (int *,char*,int ) ;
 int var_GetInteger (int *,char*) ;
 int vlc_strerror_c (scalar_t__) ;

__attribute__((used)) static int FrontendSetOFDM( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    struct dvb_frontend_parameters fep;



    fep.frequency = var_GetInteger( p_access, "dvb-frequency" );

    fep.inversion = DecodeInversion( p_access );

    fep.u.ofdm.bandwidth = DecodeBandwidth( p_access );
    fep.u.ofdm.code_rate_HP = FEC_NONE;
    fep.u.ofdm.code_rate_LP = FEC_NONE;
    fep.u.ofdm.constellation = QAM_AUTO;
    fep.u.ofdm.transmission_mode = DecodeTransmission( p_access );
    fep.u.ofdm.guard_interval = GUARD_INTERVAL_AUTO;
    fep.u.ofdm.hierarchy_information = DecodeHierarchy( p_access );


    for( ; ; )
    {
        struct dvb_frontend_event event;
        if ( ioctl( p_sys->i_frontend_handle, FE_GET_EVENT, &event ) < 0
              && errno == EWOULDBLOCK )
            break;
    }


    if( ioctl( p_sys->i_frontend_handle, FE_SET_FRONTEND, &fep ) < 0 )
    {
        msg_Err( p_access, "frontend error: %s", vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}
