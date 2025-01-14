
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_sriov_alias_guid_info_rec_det {int guid_indexes; int status; int all_recs; } ;
struct mlx4_ib_dev {int dummy; } ;


 int GUID_REC_SIZE ;
 int IB_SA_GUIDINFO_REC_GID0 ;
 int IB_SA_GUIDINFO_REC_GID1 ;
 int IB_SA_GUIDINFO_REC_GID2 ;
 int IB_SA_GUIDINFO_REC_GID3 ;
 int IB_SA_GUIDINFO_REC_GID4 ;
 int IB_SA_GUIDINFO_REC_GID5 ;
 int IB_SA_GUIDINFO_REC_GID6 ;
 int IB_SA_GUIDINFO_REC_GID7 ;
 int MLX4_GUID_INFO_STATUS_IDLE ;
 int NUM_ALIAS_GUID_IN_REC ;
 int NUM_ALIAS_GUID_REC_IN_PORT ;
 int memset (int ,int ,int) ;
 int set_administratively_guid_record (struct mlx4_ib_dev*,int,int,struct mlx4_sriov_alias_guid_info_rec_det*) ;

__attribute__((used)) static void set_all_slaves_guids(struct mlx4_ib_dev *dev, int port)
{
 int j;
 struct mlx4_sriov_alias_guid_info_rec_det rec_det ;

 for (j = 0 ; j < NUM_ALIAS_GUID_REC_IN_PORT ; j++) {
  memset(rec_det.all_recs, 0, NUM_ALIAS_GUID_IN_REC * GUID_REC_SIZE);
  rec_det.guid_indexes = (!j ? 0 : IB_SA_GUIDINFO_REC_GID0) |
   IB_SA_GUIDINFO_REC_GID1 | IB_SA_GUIDINFO_REC_GID2 |
   IB_SA_GUIDINFO_REC_GID3 | IB_SA_GUIDINFO_REC_GID4 |
   IB_SA_GUIDINFO_REC_GID5 | IB_SA_GUIDINFO_REC_GID6 |
   IB_SA_GUIDINFO_REC_GID7;
  rec_det.status = MLX4_GUID_INFO_STATUS_IDLE;
  set_administratively_guid_record(dev, port, j, &rec_det);
 }
}
