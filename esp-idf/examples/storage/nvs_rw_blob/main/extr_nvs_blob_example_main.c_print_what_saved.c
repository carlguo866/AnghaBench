
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int nvs_handle_t ;
typedef int int32_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NVS_NOT_FOUND ;
 scalar_t__ ESP_OK ;
 int NVS_READWRITE ;
 int STORAGE_NAMESPACE ;
 int free (int*) ;
 int* malloc (size_t) ;
 int nvs_close (int ) ;
 scalar_t__ nvs_get_blob (int ,char*,int*,size_t*) ;
 scalar_t__ nvs_get_i32 (int ,char*,int*) ;
 scalar_t__ nvs_open (int ,int ,int *) ;
 int printf (char*,...) ;

esp_err_t print_what_saved(void)
{
    nvs_handle_t my_handle;
    esp_err_t err;


    err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
    if (err != ESP_OK) return err;


    int32_t restart_counter = 0;
    err = nvs_get_i32(my_handle, "restart_conter", &restart_counter);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;
    printf("Restart counter = %d\n", restart_counter);


    size_t required_size = 0;

    err = nvs_get_blob(my_handle, "run_time", ((void*)0), &required_size);
    if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;
    printf("Run time:\n");
    if (required_size == 0) {
        printf("Nothing saved yet!\n");
    } else {
        uint32_t* run_time = malloc(required_size);
        err = nvs_get_blob(my_handle, "run_time", run_time, &required_size);
        if (err != ESP_OK) {
            free(run_time);
            return err;
        }
        for (int i = 0; i < required_size / sizeof(uint32_t); i++) {
            printf("%d: %d\n", i + 1, run_time[i]);
        }
        free(run_time);
    }


    nvs_close(my_handle);
    return ESP_OK;
}
