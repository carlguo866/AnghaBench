
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sendReplconf (char*,char*) ;

void sendCapa() {
    sendReplconf("capa", "eof");
}
