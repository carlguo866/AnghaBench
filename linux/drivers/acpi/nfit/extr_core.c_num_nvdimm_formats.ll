; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_num_nvdimm_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_num_nvdimm_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.nfit_mem = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*)* @num_nvdimm_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_nvdimm_formats(%struct.nvdimm* %0) #0 {
  %2 = alloca %struct.nvdimm*, align 8
  %3 = alloca %struct.nfit_mem*, align 8
  %4 = alloca i32, align 4
  store %struct.nvdimm* %0, %struct.nvdimm** %2, align 8
  %5 = load %struct.nvdimm*, %struct.nvdimm** %2, align 8
  %6 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %5)
  store %struct.nfit_mem* %6, %struct.nfit_mem** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.nfit_mem*, %struct.nfit_mem** %3, align 8
  %8 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.nfit_mem*, %struct.nfit_mem** %3, align 8
  %16 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
