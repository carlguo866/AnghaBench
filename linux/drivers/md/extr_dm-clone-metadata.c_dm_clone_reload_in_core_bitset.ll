; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_reload_in_core_bitset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-metadata.c_dm_clone_reload_in_core_bitset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_clone_metadata = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_clone_reload_in_core_bitset(%struct.dm_clone_metadata* %0) #0 {
  %2 = alloca %struct.dm_clone_metadata*, align 8
  %3 = alloca i32, align 4
  store %struct.dm_clone_metadata* %0, %struct.dm_clone_metadata** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %16 = call i32 @__load_bitset_in_core(%struct.dm_clone_metadata* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = load %struct.dm_clone_metadata*, %struct.dm_clone_metadata** %2, align 8
  %19 = getelementptr inbounds %struct.dm_clone_metadata, %struct.dm_clone_metadata* %18, i32 0, i32 0
  %20 = call i32 @up_write(i32* %19)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__load_bitset_in_core(%struct.dm_clone_metadata*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
