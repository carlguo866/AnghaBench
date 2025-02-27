; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_translation_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_translation_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtdmap = type { i32, i64 }

@VTD_GSR_TES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtdmap*)* @vtd_translation_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtd_translation_disable(%struct.vtdmap* %0) #0 {
  %2 = alloca %struct.vtdmap*, align 8
  store %struct.vtdmap* %0, %struct.vtdmap** %2, align 8
  %3 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %4 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %3, i32 0, i32 1
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %7 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @VTD_GSR_TES, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %5

13:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
