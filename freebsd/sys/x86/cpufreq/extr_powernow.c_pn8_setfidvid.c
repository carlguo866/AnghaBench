
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int u_int ;
struct pn_softc {int mvs; int rvo; unsigned long long pll; int vst; int irt; int errata; scalar_t__ fsb; } ;


 int COUNT_OFF_IRT (int ) ;
 int COUNT_OFF_VST (int ) ;
 int ENXIO ;
 int FID_TO_VCO_FID (int) ;
 int PENDING_STUCK ;
 int PN8_STA_CFID (unsigned long long) ;
 int PN8_STA_CVID (unsigned long long) ;
 int abs (int) ;
 int pn8_read_pending_wait (unsigned long long*) ;
 int pn8_write_fidvid (int,int,unsigned long long,unsigned long long*) ;

__attribute__((used)) static int
pn8_setfidvid(struct pn_softc *sc, int fid, int vid)
{
 uint64_t status;
 int cfid, cvid;
 int rvo;
 int rv;
 u_int val;

 rv = pn8_read_pending_wait(&status);
 if (rv)
  return (rv);

 cfid = PN8_STA_CFID(status);
 cvid = PN8_STA_CVID(status);

 if (fid == cfid && vid == cvid)
  return (0);





 while (cvid > vid) {
  val = cvid - (1 << sc->mvs);
  rv = pn8_write_fidvid(cfid, (val > 0) ? val : 0, 1ULL, &status);
  if (rv) {
   sc->errata |= PENDING_STUCK;
   return (rv);
  }
  cvid = PN8_STA_CVID(status);
  COUNT_OFF_VST(sc->vst);
 }


 for (rvo = sc->rvo; rvo > 0 && cvid > 0; --rvo) {



  rv = pn8_write_fidvid(cfid, cvid - 1, 1ULL, &status);
  if (rv) {
   sc->errata |= PENDING_STUCK;
   return (rv);
  }
  cvid = PN8_STA_CVID(status);
  COUNT_OFF_VST(sc->vst);
 }


 if (cfid != fid) {
  u_int vco_fid, vco_cfid, fid_delta;

  vco_fid = FID_TO_VCO_FID(fid);
  vco_cfid = FID_TO_VCO_FID(cfid);

  while (abs(vco_fid - vco_cfid) > 2) {
   fid_delta = (vco_cfid & 1) ? 1 : 2;
   if (fid > cfid) {
    if (cfid > 7)
     val = cfid + fid_delta;
    else
     val = FID_TO_VCO_FID(cfid) + fid_delta;
   } else
    val = cfid - fid_delta;
   rv = pn8_write_fidvid(val, cvid,
       sc->pll * (uint64_t) sc->fsb,
       &status);
   if (rv) {
    sc->errata |= PENDING_STUCK;
    return (rv);
   }
   cfid = PN8_STA_CFID(status);
   COUNT_OFF_IRT(sc->irt);

   vco_cfid = FID_TO_VCO_FID(cfid);
  }

  rv = pn8_write_fidvid(fid, cvid,
      sc->pll * (uint64_t) sc->fsb,
      &status);
  if (rv) {
   sc->errata |= PENDING_STUCK;
   return (rv);
  }
  cfid = PN8_STA_CFID(status);
  COUNT_OFF_IRT(sc->irt);
 }


 if (cvid != vid) {
  rv = pn8_write_fidvid(cfid, vid, 1ULL, &status);
  cvid = PN8_STA_CVID(status);
  COUNT_OFF_VST(sc->vst);
 }


 if (cfid != fid || cvid != vid)
  rv = ENXIO;

 return (rv);
}
