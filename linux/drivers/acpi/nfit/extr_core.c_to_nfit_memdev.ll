; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_to_nfit_memdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_to_nfit_memdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_memory_map = type { i32 }
%struct.device = type { i32 }
%struct.nvdimm = type { i32 }
%struct.nfit_mem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_nfit_memory_map* (%struct.device*)* @to_nfit_memdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_nfit_memory_map* @to_nfit_memdev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nvdimm*, align 8
  %4 = alloca %struct.nfit_mem*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.nvdimm* @to_nvdimm(%struct.device* %5)
  store %struct.nvdimm* %6, %struct.nvdimm** %3, align 8
  %7 = load %struct.nvdimm*, %struct.nvdimm** %3, align 8
  %8 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %7)
  store %struct.nfit_mem* %8, %struct.nfit_mem** %4, align 8
  %9 = load %struct.nfit_mem*, %struct.nfit_mem** %4, align 8
  %10 = call %struct.acpi_nfit_memory_map* @__to_nfit_memdev(%struct.nfit_mem* %9)
  ret %struct.acpi_nfit_memory_map* %10
}

declare dso_local %struct.nvdimm* @to_nvdimm(%struct.device*) #1

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local %struct.acpi_nfit_memory_map* @__to_nfit_memdev(%struct.nfit_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
