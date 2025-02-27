; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bset_next_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bset_next_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bset = type opaque
%struct.btree_keys = type { i32 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bset* (%struct.btree_keys*, i32)* @bset_next_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bset* @bset_next_set(%struct.btree_keys* %0, i32 %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bset*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %7 = call %struct.TYPE_2__* @bset_tree_last(%struct.btree_keys* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.bset*
  store %struct.bset* %10, %struct.bset** %5, align 8
  %11 = load %struct.bset*, %struct.bset** %5, align 8
  %12 = bitcast %struct.bset* %11 to i8*
  %13 = load %struct.bset*, %struct.bset** %5, align 8
  %14 = bitcast %struct.bset* %13 to i8*
  %15 = call i32 @set_bytes(i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @roundup(i32 %15, i32 %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %12, i64 %18
  %20 = bitcast i8* %19 to %struct.bset*
  ret %struct.bset* %20
}

declare dso_local %struct.TYPE_2__* @bset_tree_last(%struct.btree_keys*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @set_bytes(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
