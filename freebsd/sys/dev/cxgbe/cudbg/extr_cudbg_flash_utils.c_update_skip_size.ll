; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_update_skip_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_flash_utils.c_update_skip_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_flash_sec_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_skip_size(%struct.cudbg_flash_sec_info* %0, i64 %1) #0 {
  %3 = alloca %struct.cudbg_flash_sec_info*, align 8
  %4 = alloca i64, align 8
  store %struct.cudbg_flash_sec_info* %0, %struct.cudbg_flash_sec_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.cudbg_flash_sec_info*, %struct.cudbg_flash_sec_info** %3, align 8
  %7 = getelementptr inbounds %struct.cudbg_flash_sec_info, %struct.cudbg_flash_sec_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %5
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
