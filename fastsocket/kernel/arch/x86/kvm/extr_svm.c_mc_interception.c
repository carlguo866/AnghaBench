
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;



__attribute__((used)) static int mc_interception(struct vcpu_svm *svm)
{
 return 1;
}
