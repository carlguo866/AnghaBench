; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_na_get_initiatorname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nodeattrib.c_iscsit_na_get_initiatorname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_node_acl = type { %struct.se_node_acl }
%struct.se_node_acl = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iscsi_node_acl*)* @iscsit_na_get_initiatorname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iscsit_na_get_initiatorname(%struct.iscsi_node_acl* %0) #0 {
  %2 = alloca %struct.iscsi_node_acl*, align 8
  %3 = alloca %struct.se_node_acl*, align 8
  store %struct.iscsi_node_acl* %0, %struct.iscsi_node_acl** %2, align 8
  %4 = load %struct.iscsi_node_acl*, %struct.iscsi_node_acl** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_node_acl, %struct.iscsi_node_acl* %4, i32 0, i32 0
  store %struct.se_node_acl* %5, %struct.se_node_acl** %3, align 8
  %6 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  %7 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
