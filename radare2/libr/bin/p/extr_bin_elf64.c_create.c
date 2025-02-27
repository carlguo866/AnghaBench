
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int ut16 ;
typedef int RBuffer ;
typedef int RBinArchOptions ;
typedef int RBin ;


 int B (char const*,int) ;
 int D (int) ;
 int H (int) ;
 int Q (int) ;
 int W (int,int*,int) ;
 int Z (int) ;
 int eprintf (char*) ;
 int * r_buf_new () ;
 int r_buf_size (int *) ;

__attribute__((used)) static RBuffer* create(RBin* bin, const ut8 *code, int codelen, const ut8 *data, int datalen, RBinArchOptions *opt) {
 ut32 p_start, p_phoff, p_phdr;
 ut32 p_vaddr, p_paddr, p_fs, p_fs2;
 ut32 p_ehdrsz, p_phdrsz;
 ut64 filesize, code_va, code_pa, phoff;
 ut16 ehdrsz, phdrsz;
 ut64 baddr = 0x400000LL;
 RBuffer *buf = r_buf_new ();
 r_buf_append_bytes(buf,(const ut8*)("\x7F" "ELF" "\x02\x01\x01\x00"),8);
 r_buf_append_nbytes(buf,8);
 r_buf_append_ut16(buf,2);
 r_buf_append_ut16(buf,62);
 r_buf_append_ut32(buf,1);
 p_start = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 p_phoff = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 r_buf_append_ut64(buf,0);
 r_buf_append_ut32(buf,0);
 p_ehdrsz = r_buf_size (buf);
 r_buf_append_ut16(buf,-1);
 p_phdrsz = r_buf_size (buf);
 r_buf_append_ut16(buf,-1);
 r_buf_append_ut16(buf,1);
 r_buf_append_ut16(buf,0);
 r_buf_append_ut16(buf,0);
 r_buf_append_ut16(buf,0);


 p_phdr = r_buf_size (buf);
 r_buf_append_ut32(buf,1);
 r_buf_append_ut32(buf,5);
 r_buf_append_ut64(buf,0);
 p_vaddr = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 p_paddr = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 p_fs = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 p_fs2 = r_buf_size (buf);
 r_buf_append_ut64(buf,-1);
 r_buf_append_ut64(buf,0x200000);


 ehdrsz = p_phdr;
 phdrsz = r_buf_size (buf) - p_phdr;
 code_pa = r_buf_size (buf);
 code_va = code_pa + baddr;
 phoff = p_phdr;
 filesize = code_pa + codelen + datalen;


 r_buf_write_at(buf,p_start,(const ut8*)(&code_va),8);
 r_buf_write_at(buf,p_phoff,(const ut8*)(&phoff),8);
 r_buf_write_at(buf,p_ehdrsz,(const ut8*)(&ehdrsz),2);
 r_buf_write_at(buf,p_phdrsz,(const ut8*)(&phdrsz),2);
 r_buf_write_at(buf,p_fs,(const ut8*)(&filesize),8);
 r_buf_write_at(buf,p_fs2,(const ut8*)(&filesize),8);

 r_buf_write_at(buf,p_vaddr,(const ut8*)(&baddr),8);
 r_buf_write_at(buf,p_paddr,(const ut8*)(&baddr),8);


 r_buf_append_bytes(buf,(const ut8*)(code),codelen);

 if (data && datalen>0) {
  eprintf ("Warning: DATA section not support for ELF yet\n");
  r_buf_append_bytes(buf,(const ut8*)(data),datalen);
 }
 return buf;
}
