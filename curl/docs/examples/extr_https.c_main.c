
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_DEFAULT ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (int ) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

int main(void)
{
  CURL *curl;
  CURLcode res;

  curl_global_init(CURL_GLOBAL_DEFAULT);

  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://example.com/");
    res = curl_easy_perform(curl);

    if(res != CURLE_OK)
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));


    curl_easy_cleanup(curl);
  }

  curl_global_cleanup();

  return 0;
}
