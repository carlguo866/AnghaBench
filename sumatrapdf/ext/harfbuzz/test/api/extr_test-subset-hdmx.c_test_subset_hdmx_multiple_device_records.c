
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_set_t ;
typedef int hb_face_t ;


 int HB_TAG (char,char,char,char) ;
 int hb_face_destroy (int *) ;
 int hb_set_add (int *,char) ;
 int * hb_set_create () ;
 int hb_set_destroy (int *) ;
 int hb_subset_test_check (int *,int *,int ) ;
 int hb_subset_test_create_input (int *) ;
 int * hb_subset_test_create_subset (int *,int ) ;
 int * hb_subset_test_open_font (char*) ;

__attribute__((used)) static void
test_subset_hdmx_multiple_device_records (void)
{
  hb_face_t *face_abc = hb_subset_test_open_font ("fonts/Roboto-Regular.multihdmx.abc.ttf");
  hb_face_t *face_a = hb_subset_test_open_font ("fonts/Roboto-Regular.multihdmx.a.ttf");

  hb_set_t *codepoints = hb_set_create ();
  hb_face_t *face_abc_subset;
  hb_set_add (codepoints, 'a');
  face_abc_subset = hb_subset_test_create_subset (face_abc, hb_subset_test_create_input (codepoints));
  hb_set_destroy (codepoints);

  hb_subset_test_check (face_a, face_abc_subset, HB_TAG ('h','d','m','x'));

  hb_face_destroy (face_abc_subset);
  hb_face_destroy (face_abc);
  hb_face_destroy (face_a);
}
