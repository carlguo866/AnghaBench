; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da2_node_tree_p.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_da2_node_tree_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_node_entry = type { i32 }
%struct.xfs_da_intnode = type { %struct.xfs_da_node_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_da_node_entry* (%struct.xfs_da_intnode*)* @xfs_da2_node_tree_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_da_node_entry* @xfs_da2_node_tree_p(%struct.xfs_da_intnode* %0) #0 {
  %2 = alloca %struct.xfs_da_intnode*, align 8
  store %struct.xfs_da_intnode* %0, %struct.xfs_da_intnode** %2, align 8
  %3 = load %struct.xfs_da_intnode*, %struct.xfs_da_intnode** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_da_intnode, %struct.xfs_da_intnode* %3, i32 0, i32 0
  %5 = load %struct.xfs_da_node_entry*, %struct.xfs_da_node_entry** %4, align 8
  ret %struct.xfs_da_node_entry* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
