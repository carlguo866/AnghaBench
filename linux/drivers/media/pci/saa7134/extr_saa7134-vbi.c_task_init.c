
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_tvnorm {int h_start; int h_stop; int vbi_v_start_0; int vbi_v_stop_0; } ;
struct saa7134_dev {int vbi_hlen; int vbi_vlen; struct saa7134_tvnorm* tvnorm; } ;
struct saa7134_buf {int dummy; } ;


 int SAA7134_DATA_PATH (int) ;
 int SAA7134_VBI_H_LEN1 (int) ;
 int SAA7134_VBI_H_LEN2 (int) ;
 int SAA7134_VBI_H_SCALE_INC1 (int) ;
 int SAA7134_VBI_H_SCALE_INC2 (int) ;
 int SAA7134_VBI_H_START1 (int) ;
 int SAA7134_VBI_H_START2 (int) ;
 int SAA7134_VBI_H_STOP1 (int) ;
 int SAA7134_VBI_H_STOP2 (int) ;
 int SAA7134_VBI_PHASE_OFFSET_CHROMA (int) ;
 int SAA7134_VBI_PHASE_OFFSET_LUMA (int) ;
 int SAA7134_VBI_V_LEN1 (int) ;
 int SAA7134_VBI_V_LEN2 (int) ;
 int SAA7134_VBI_V_START1 (int) ;
 int SAA7134_VBI_V_START2 (int) ;
 int SAA7134_VBI_V_STOP1 (int) ;
 int SAA7134_VBI_V_STOP2 (int) ;
 int VBI_SCALE ;
 int saa_andorb (int ,int,int) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static void task_init(struct saa7134_dev *dev, struct saa7134_buf *buf,
        int task)
{
 struct saa7134_tvnorm *norm = dev->tvnorm;


 saa_writeb(SAA7134_VBI_H_START1(task), norm->h_start & 0xff);
 saa_writeb(SAA7134_VBI_H_START2(task), norm->h_start >> 8);
 saa_writeb(SAA7134_VBI_H_STOP1(task), norm->h_stop & 0xff);
 saa_writeb(SAA7134_VBI_H_STOP2(task), norm->h_stop >> 8);
 saa_writeb(SAA7134_VBI_V_START1(task), norm->vbi_v_start_0 & 0xff);
 saa_writeb(SAA7134_VBI_V_START2(task), norm->vbi_v_start_0 >> 8);
 saa_writeb(SAA7134_VBI_V_STOP1(task), norm->vbi_v_stop_0 & 0xff);
 saa_writeb(SAA7134_VBI_V_STOP2(task), norm->vbi_v_stop_0 >> 8);

 saa_writeb(SAA7134_VBI_H_SCALE_INC1(task), VBI_SCALE & 0xff);
 saa_writeb(SAA7134_VBI_H_SCALE_INC2(task), VBI_SCALE >> 8);
 saa_writeb(SAA7134_VBI_PHASE_OFFSET_LUMA(task), 0x00);
 saa_writeb(SAA7134_VBI_PHASE_OFFSET_CHROMA(task), 0x00);

 saa_writeb(SAA7134_VBI_H_LEN1(task), dev->vbi_hlen & 0xff);
 saa_writeb(SAA7134_VBI_H_LEN2(task), dev->vbi_hlen >> 8);
 saa_writeb(SAA7134_VBI_V_LEN1(task), dev->vbi_vlen & 0xff);
 saa_writeb(SAA7134_VBI_V_LEN2(task), dev->vbi_vlen >> 8);

 saa_andorb(SAA7134_DATA_PATH(task), 0xc0, 0x00);
}
