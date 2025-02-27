; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_node.c_nfs_nhinit_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_node.c_nfs_nhinit_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfs_node_hash_mutex = common dso_local global i32 0, align 4
@nfsnodehashtbl = common dso_local global i64 0, align 8
@desiredvnodes = common dso_local global i32 0, align 4
@M_NFSNODE = common dso_local global i32 0, align 4
@nfsnodehash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_nhinit_finish() #0 {
  %1 = load i32, i32* @nfs_node_hash_mutex, align 4
  %2 = call i32 @lck_mtx_lock(i32 %1)
  %3 = load i64, i64* @nfsnodehashtbl, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @desiredvnodes, align 4
  %7 = load i32, i32* @M_NFSNODE, align 4
  %8 = call i64 @hashinit(i32 %6, i32 %7, i32* @nfsnodehash)
  store i64 %8, i64* @nfsnodehashtbl, align 8
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @nfs_node_hash_mutex, align 4
  %11 = call i32 @lck_mtx_unlock(i32 %10)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
