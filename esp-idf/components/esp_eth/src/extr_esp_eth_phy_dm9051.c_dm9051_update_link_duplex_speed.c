
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ link_status; int addr; TYPE_2__* eth; } ;
typedef TYPE_1__ phy_dm9051_t ;
typedef scalar_t__ eth_speed_t ;
typedef scalar_t__ eth_link_t ;
typedef scalar_t__ eth_duplex_t ;
struct TYPE_12__ {scalar_t__ (* phy_reg_read ) (TYPE_2__*,int ,int ,int *) ;scalar_t__ (* on_state_changed ) (TYPE_2__*,int ,void*) ;} ;
typedef TYPE_2__ esp_eth_mediator_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_13__ {scalar_t__ fdx10; scalar_t__ fdx100; scalar_t__ hdx100; int val; } ;
typedef TYPE_3__ dscsr_reg_t ;
struct TYPE_14__ {scalar_t__ link_status; int val; } ;
typedef TYPE_4__ bmsr_reg_t ;


 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 scalar_t__ ETH_DUPLEX_FULL ;
 scalar_t__ ETH_DUPLEX_HALF ;
 scalar_t__ ETH_LINK_DOWN ;
 scalar_t__ ETH_LINK_UP ;
 int ETH_PHY_BMSR_REG_ADDR ;
 int ETH_PHY_DSCSR_REG_ADDR ;
 scalar_t__ ETH_SPEED_100M ;
 scalar_t__ ETH_SPEED_10M ;
 int ETH_STATE_DUPLEX ;
 int ETH_STATE_LINK ;
 int ETH_STATE_SPEED ;
 int PHY_CHECK (int,char*,int ) ;
 int err ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int *) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ,int *) ;
 scalar_t__ stub3 (TYPE_2__*,int ,void*) ;
 scalar_t__ stub4 (TYPE_2__*,int ,void*) ;
 scalar_t__ stub5 (TYPE_2__*,int ,void*) ;

__attribute__((used)) static esp_err_t dm9051_update_link_duplex_speed(phy_dm9051_t *dm9051)
{
    esp_eth_mediator_t *eth = dm9051->eth;
    eth_speed_t speed = ETH_SPEED_10M;
    eth_duplex_t duplex = ETH_DUPLEX_HALF;
    bmsr_reg_t bmsr;
    dscsr_reg_t dscsr;
    PHY_CHECK(eth->phy_reg_read(eth, dm9051->addr, ETH_PHY_BMSR_REG_ADDR, &(bmsr.val)) == ESP_OK,
              "read BMSR failed", err);
    eth_link_t link = bmsr.link_status ? ETH_LINK_UP : ETH_LINK_DOWN;

    if (dm9051->link_status != link) {

        if (link == ETH_LINK_UP) {
            PHY_CHECK(eth->phy_reg_read(eth, dm9051->addr, ETH_PHY_DSCSR_REG_ADDR, &(dscsr.val)) == ESP_OK,
                      "read DSCSR failed", err);
            if (dscsr.fdx100 || dscsr.hdx100) {
                speed = ETH_SPEED_100M;
            } else {
                speed = ETH_SPEED_10M;
            }
            if (dscsr.fdx100 || dscsr.fdx10) {
                duplex = ETH_DUPLEX_FULL;
            } else {
                duplex = ETH_DUPLEX_HALF;
            }
            PHY_CHECK(eth->on_state_changed(eth, ETH_STATE_SPEED, (void *)speed) == ESP_OK,
                      "change speed failed", err);
            PHY_CHECK(eth->on_state_changed(eth, ETH_STATE_DUPLEX, (void *)duplex) == ESP_OK,
                      "change duplex failed", err);
        }
        PHY_CHECK(eth->on_state_changed(eth, ETH_STATE_LINK, (void *)link) == ESP_OK,
                  "change link failed", err);
        dm9051->link_status = link;
    }
    return ESP_OK;
err:
    return ESP_FAIL;
}
