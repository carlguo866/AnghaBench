
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_3__ {int key_in_hardware; int key_bytes; scalar_t__ key; } ;
typedef TYPE_1__ esp_aes_context ;


 scalar_t__ AES_KEY_BASE ;
 scalar_t__ AES_MODE_REG ;
 int DPORT_REG_WRITE (scalar_t__,unsigned int) ;
 int ESP_AES_ENCRYPT ;
 int abort () ;

__attribute__((used)) static void esp_aes_setkey_hardware(esp_aes_context *ctx, int mode)
{
    const uint32_t MODE_DECRYPT_BIT = 4;
    unsigned mode_reg_base = (mode == ESP_AES_ENCRYPT) ? 0 : MODE_DECRYPT_BIT;

    ctx->key_in_hardware = 0;

    for (int i = 0; i < ctx->key_bytes/4; ++i) {
        DPORT_REG_WRITE(AES_KEY_BASE + i * 4, *(((uint32_t *)ctx->key) + i));
        ctx->key_in_hardware += 4;
    }

    DPORT_REG_WRITE(AES_MODE_REG, mode_reg_base + ((ctx->key_bytes / 8) - 2));


    if (ctx->key_in_hardware < 16
        || ctx->key_in_hardware != ctx->key_bytes) {
        abort();
    }
}
