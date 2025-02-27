
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum eth_filter_action { ____Placeholder_eth_filter_action } eth_filter_action ;
typedef enum ecore_filter_opcode { ____Placeholder_ecore_filter_opcode } ecore_filter_opcode ;





 int ETH_FILTER_ACTION_ADD ;
 int ETH_FILTER_ACTION_REMOVE ;
 int ETH_FILTER_ACTION_REMOVE_ALL ;
 int MAX_ETH_FILTER_ACTION ;

__attribute__((used)) static enum eth_filter_action ecore_filter_action(enum ecore_filter_opcode opcode)
{
 enum eth_filter_action action = MAX_ETH_FILTER_ACTION;

 switch (opcode) {
 case 130:
  action = ETH_FILTER_ACTION_ADD;
  break;
 case 128:
  action = ETH_FILTER_ACTION_REMOVE;
  break;
 case 129:
  action = ETH_FILTER_ACTION_REMOVE_ALL;
  break;
 default:
  action = MAX_ETH_FILTER_ACTION;
 }

 return action;
}
