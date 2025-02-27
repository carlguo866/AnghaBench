; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_mclk_split_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_get_mclk_split_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_memory_info = type { i64 }

@MEM_TYPE_GDDR3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atom_memory_info*)* @rv770_get_mclk_split_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_get_mclk_split_point(%struct.atom_memory_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atom_memory_info*, align 8
  store %struct.atom_memory_info* %0, %struct.atom_memory_info** %3, align 8
  %4 = load %struct.atom_memory_info*, %struct.atom_memory_info** %3, align 8
  %5 = getelementptr inbounds %struct.atom_memory_info, %struct.atom_memory_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MEM_TYPE_GDDR3, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 30000, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
