
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int portstr ;
typedef int hints ;


 int IPPROTO_TCP ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int errx (int,char*,char const*,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int stub1 (int,char const*,char const*) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

int
client_doit (const char *hostname, int port, const char *service,
      int (*func)(int, const char *hostname, const char *service))
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    char portstr[NI_MAXSERV];

    memset (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    snprintf (portstr, sizeof(portstr), "%u", ntohs(port));

    error = getaddrinfo (hostname, portstr, &hints, &ai);
    if (error) {
 errx (1, "%s: %s", hostname, gai_strerror(error));
 return -1;
    }

    for (a = ai; a != ((void*)0); a = a->ai_next) {
 int s;

 s = socket (a->ai_family, a->ai_socktype, a->ai_protocol);
 if (s < 0)
     continue;
 if (connect (s, a->ai_addr, a->ai_addrlen) < 0) {
     warn ("connect(%s)", hostname);
     close (s);
     continue;
 }
 freeaddrinfo (ai);
 return (*func) (s, hostname, service);
    }
    warnx ("failed to contact %s", hostname);
    freeaddrinfo (ai);
    return 1;
}
