
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
struct TYPE_15__ {scalar_t__ last_t; int guid; int usages; int machine_urls; } ;
struct TYPE_14__ {scalar_t__ last_t; int flags; int usages; } ;
struct TYPE_13__ {int url; } ;
struct TYPE_12__ {int machines_urls_count; } ;
typedef TYPE_1__ REGISTRY_URL ;
typedef TYPE_2__ REGISTRY_MACHINE_URL ;
typedef TYPE_3__ REGISTRY_MACHINE ;


 int D_REGISTRY ;
 int REGISTRY_URL_FLAGS_EXPIRED ;
 int debug (int ,char*,int ,int ) ;
 TYPE_2__* dictionary_get (int ,int ) ;
 scalar_t__ likely (int) ;
 TYPE_10__ registry ;
 TYPE_2__* registry_machine_url_allocate (TYPE_3__*,TYPE_1__*,scalar_t__) ;

REGISTRY_MACHINE_URL *registry_machine_link_to_url(REGISTRY_MACHINE *m, REGISTRY_URL *u, time_t when) {
    debug(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): searching for URL in machine", m->guid, u->url);

    REGISTRY_MACHINE_URL *mu = dictionary_get(m->machine_urls, u->url);
    if(!mu) {
        debug(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): not found", m->guid, u->url);
        mu = registry_machine_url_allocate(m, u, when);
        registry.machines_urls_count++;
    }
    else {
        debug(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): found", m->guid, u->url);
        mu->usages++;
        if(likely(mu->last_t < (uint32_t)when)) mu->last_t = (uint32_t)when;
    }

    m->usages++;
    if(likely(m->last_t < (uint32_t)when)) m->last_t = (uint32_t)when;

    if(mu->flags & REGISTRY_URL_FLAGS_EXPIRED) {
        debug(D_REGISTRY, "registry_machine_link_to_url('%s', '%s'): accessing an expired URL.", m->guid, u->url);
        mu->flags &= ~REGISTRY_URL_FLAGS_EXPIRED;
    }

    return mu;
}
