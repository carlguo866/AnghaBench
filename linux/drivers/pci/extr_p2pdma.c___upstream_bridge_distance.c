
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_buf {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef enum pci_p2pdma_map_type { ____Placeholder_pci_p2pdma_map_type } pci_p2pdma_map_type ;


 int PCI_P2PDMA_MAP_BUS_ADDR ;
 int PCI_P2PDMA_MAP_THRU_HOST_BRIDGE ;
 scalar_t__ pci_bridge_has_acs_redir (struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int seq_buf_print_bus_devfn (struct seq_buf*,struct pci_dev*) ;

__attribute__((used)) static enum pci_p2pdma_map_type
__upstream_bridge_distance(struct pci_dev *provider, struct pci_dev *client,
  int *dist, bool *acs_redirects, struct seq_buf *acs_list)
{
 struct pci_dev *a = provider, *b = client, *bb;
 int dist_a = 0;
 int dist_b = 0;
 int acs_cnt = 0;

 if (acs_redirects)
  *acs_redirects = 0;







 while (a) {
  dist_b = 0;

  if (pci_bridge_has_acs_redir(a)) {
   seq_buf_print_bus_devfn(acs_list, a);
   acs_cnt++;
  }

  bb = b;

  while (bb) {
   if (a == bb)
    goto check_b_path_acs;

   bb = pci_upstream_bridge(bb);
   dist_b++;
  }

  a = pci_upstream_bridge(a);
  dist_a++;
 }

 if (dist)
  *dist = dist_a + dist_b;

 return PCI_P2PDMA_MAP_THRU_HOST_BRIDGE;

check_b_path_acs:
 bb = b;

 while (bb) {
  if (a == bb)
   break;

  if (pci_bridge_has_acs_redir(bb)) {
   seq_buf_print_bus_devfn(acs_list, bb);
   acs_cnt++;
  }

  bb = pci_upstream_bridge(bb);
 }

 if (dist)
  *dist = dist_a + dist_b;

 if (acs_cnt) {
  if (acs_redirects)
   *acs_redirects = 1;

  return PCI_P2PDMA_MAP_THRU_HOST_BRIDGE;
 }

 return PCI_P2PDMA_MAP_BUS_ADDR;
}
