; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.h_btree_prev_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.h_btree_prev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_write = type { i32 }
%struct.btree = type { %struct.btree_write* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btree_write* (%struct.btree*)* @btree_prev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btree_write* @btree_prev_write(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  store %struct.btree* %0, %struct.btree** %2, align 8
  %3 = load %struct.btree*, %struct.btree** %2, align 8
  %4 = getelementptr inbounds %struct.btree, %struct.btree* %3, i32 0, i32 0
  %5 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %6 = load %struct.btree*, %struct.btree** %2, align 8
  %7 = call i32 @btree_node_write_idx(%struct.btree* %6)
  %8 = xor i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %5, i64 %9
  ret %struct.btree_write* %10
}

declare dso_local i32 @btree_node_write_idx(%struct.btree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
