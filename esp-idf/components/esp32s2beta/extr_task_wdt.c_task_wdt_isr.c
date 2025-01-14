
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int task_handle; int has_reset; struct TYPE_6__* next; } ;
typedef TYPE_2__ twdt_task_t ;
struct TYPE_5__ {int wdt; } ;
struct TYPE_8__ {int wdt_feed; TYPE_1__ int_clr; scalar_t__ wdt_wprotect; } ;
struct TYPE_7__ {scalar_t__ panic; TYPE_2__* list; } ;


 int ASSERT_EXIT_CRIT_RETURN (int ,int ) ;
 char* DRAM_STR (char*) ;
 int ESP_EARLY_LOGE (int ,char*,...) ;
 int TAG ;
 TYPE_4__ TIMERG0 ;
 scalar_t__ TIMG_WDT_WKEY_VALUE ;
 int VOID_RETURN ;
 int abort () ;
 int esp_task_wdt_isr_user_handler () ;
 int pcTaskGetTaskName (int ) ;
 int portENTER_CRITICAL_ISR (int *) ;
 int portEXIT_CRITICAL_ISR (int *) ;
 int portNUM_PROCESSORS ;
 scalar_t__ tskNO_AFFINITY ;
 TYPE_3__* twdt_config ;
 int twdt_spinlock ;
 scalar_t__ xTaskGetAffinity (int ) ;
 int xTaskGetCurrentTaskHandleForCPU (int) ;

__attribute__((used)) static void task_wdt_isr(void *arg)
{
    portENTER_CRITICAL_ISR(&twdt_spinlock);
    twdt_task_t *twdttask;
    const char *cpu;

    TIMERG0.wdt_wprotect=TIMG_WDT_WKEY_VALUE;
    TIMERG0.wdt_feed=1;
    TIMERG0.wdt_wprotect=0;

    TIMERG0.int_clr.wdt=1;






    ASSERT_EXIT_CRIT_RETURN((twdt_config->list != ((void*)0)), VOID_RETURN);


    ESP_EARLY_LOGE(TAG, "Task watchdog got triggered. The following tasks did not reset the watchdog in time:");
    for (twdttask=twdt_config->list; twdttask!=((void*)0); twdttask=twdttask->next) {
        if (!twdttask->has_reset) {
            cpu=xTaskGetAffinity(twdttask->task_handle)==0?DRAM_STR("CPU 0"):DRAM_STR("CPU 1");
            if (xTaskGetAffinity(twdttask->task_handle)==tskNO_AFFINITY) cpu=DRAM_STR("CPU 0/1");
            ESP_EARLY_LOGE(TAG, " - %s (%s)", pcTaskGetTaskName(twdttask->task_handle), cpu);
        }
    }
    ESP_EARLY_LOGE(TAG, "%s", DRAM_STR("Tasks currently running:"));
    for (int x=0; x<portNUM_PROCESSORS; x++) {
        ESP_EARLY_LOGE(TAG, "CPU %d: %s", x, pcTaskGetTaskName(xTaskGetCurrentTaskHandleForCPU(x)));
    }

    esp_task_wdt_isr_user_handler();
    if (twdt_config->panic){
        ESP_EARLY_LOGE(TAG, "Aborting.");
        portEXIT_CRITICAL_ISR(&twdt_spinlock);


        abort();
    }

    portEXIT_CRITICAL_ISR(&twdt_spinlock);
}
