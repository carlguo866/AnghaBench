; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_show_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_show_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_scan = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"scan: hit [%llx, %llx], size=%lld, align=%lld, color=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_scan*)* @show_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_scan(%struct.drm_mm_scan* %0) #0 {
  %2 = alloca %struct.drm_mm_scan*, align 8
  store %struct.drm_mm_scan* %0, %struct.drm_mm_scan** %2, align 8
  %3 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %2, align 8
  %4 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %2, align 8
  %7 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %2, align 8
  %10 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %2, align 8
  %13 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %2, align 8
  %16 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
