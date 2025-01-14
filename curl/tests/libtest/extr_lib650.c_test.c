
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
struct curl_httppost {int dummy; } ;
struct curl_forms {char* value; int option; } ;
typedef int flbuf ;
typedef int CURLcode ;
typedef scalar_t__ CURLFORMcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLFORM_ARRAY ;
 int CURLFORM_CONTENTHEADER ;
 int CURLFORM_CONTENTSLENGTH ;
 int CURLFORM_CONTENTTYPE ;
 int CURLFORM_COPYCONTENTS ;
 int CURLFORM_COPYNAME ;
 int CURLFORM_END ;
 int CURLFORM_FILE ;
 int CURLFORM_FILECONTENT ;
 int CURLFORM_FILENAME ;
 int CURLFORM_NAMELENGTH ;
 int CURLFORM_PTRCONTENTS ;
 int CURLFORM_PTRNAME ;
 int CURLOPT_HEADER ;
 int CURLOPT_HTTPPOST ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 int count_chars ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 scalar_t__ curl_formadd (struct curl_httppost**,struct curl_httppost**,int ,...) ;
 int curl_formfree (struct curl_httppost*) ;
 int curl_formget (struct curl_httppost*,void*,int ) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int curl_msnprintf (char*,int,char*,unsigned long) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 char* data ;
 int fprintf (int ,char*) ;
 char* libtest_arg2 ;
 char* name ;
 int printf (char*,int) ;
 int stderr ;
 int strlen (char*) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *curl = ((void*)0);
  CURLcode res = TEST_ERR_MAJOR_BAD;
  CURLFORMcode formrc;
  struct curl_slist *headers, *headers2 = ((void*)0);
  struct curl_httppost *formpost = ((void*)0);
  struct curl_httppost *lastptr = ((void*)0);
  struct curl_forms formarray[3];
  size_t formlength = 0;
  char flbuf[32];
  long contentlength = 0;

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }


  headers = curl_slist_append(((void*)0), "X-customheader-1: Header 1 data");
  if(!headers) {
    goto test_cleanup;
  }
  headers2 = curl_slist_append(headers, "X-customheader-2: Header 2 data");
  if(!headers2) {
    goto test_cleanup;
  }
  headers = headers2;
  headers2 = curl_slist_append(headers, "Content-Type: text/plain");
  if(!headers2) {
    goto test_cleanup;
  }
  headers = headers2;
  formrc = curl_formadd(&formpost, &lastptr,
                        CURLFORM_COPYNAME, &name,
                        CURLFORM_COPYCONTENTS, &data,
                        CURLFORM_CONTENTHEADER, headers,
                        CURLFORM_END);

  if(formrc) {
    printf("curl_formadd(1) = %d\n", (int) formrc);
    goto test_cleanup;
  }

  contentlength = (long)(strlen(data) - 1);


  formarray[0].option = CURLFORM_PTRCONTENTS;
  formarray[0].value = data;
  formarray[1].option = CURLFORM_CONTENTSLENGTH;
  formarray[1].value = (char *)(size_t)contentlength;
  formarray[2].option = CURLFORM_END;
  formarray[2].value = ((void*)0);
  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_PTRNAME, name,
                        CURLFORM_NAMELENGTH, strlen(name) - 1,
                        CURLFORM_ARRAY, formarray,
                        CURLFORM_FILENAME, "remotefile.txt",
                        CURLFORM_END);

  if(formrc) {
    printf("curl_formadd(2) = %d\n", (int) formrc);
    goto test_cleanup;
  }




  data[0]++;


  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "multifile",
                        CURLFORM_FILE, libtest_arg2,
                        CURLFORM_FILE, libtest_arg2,
                        CURLFORM_CONTENTTYPE, "text/whatever",
                        CURLFORM_FILE, libtest_arg2,
                        CURLFORM_END);

  if(formrc) {
    printf("curl_formadd(3) = %d\n", (int) formrc);
    goto test_cleanup;
  }


  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "filecontents",
                        CURLFORM_FILECONTENT, libtest_arg2,
                        CURLFORM_END);

  if(formrc) {
    printf("curl_formadd(4) = %d\n", (int) formrc);
    goto test_cleanup;
  }





  curl_formget(formpost, (void *) &formlength, count_chars);


  curl_msnprintf(flbuf, sizeof(flbuf), "%lu", (unsigned long) formlength);
  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "formlength",
                        CURLFORM_COPYCONTENTS, &flbuf,
                        CURLFORM_END);
  if(formrc) {
    printf("curl_formadd(5) = %d\n", (int) formrc);
    goto test_cleanup;
  }


  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "standardinput",
                        CURLFORM_FILE, "-",
                        CURLFORM_END);
  if(formrc) {
    printf("curl_formadd(6) = %d\n", (int) formrc);
    goto test_cleanup;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    goto test_cleanup;
  }


  test_setopt(curl, CURLOPT_URL, URL);


  test_setopt(curl, CURLOPT_HTTPPOST, formpost);


  test_setopt(curl, CURLOPT_VERBOSE, 1L);


  test_setopt(curl, CURLOPT_HEADER, 1L);


  res = curl_easy_perform(curl);

test_cleanup:


  curl_easy_cleanup(curl);


  curl_formfree(formpost);
  curl_slist_free_all(headers);

  curl_global_cleanup();

  return res;
}
