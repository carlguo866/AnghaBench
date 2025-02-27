; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_dax_direct_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_pmem_dax_direct_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { i32 }
%struct.pmem_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dax_device*, i32, i64, i8**, i32*)* @pmem_dax_direct_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmem_dax_direct_access(%struct.dax_device* %0, i32 %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.dax_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pmem_device*, align 8
  store %struct.dax_device* %0, %struct.dax_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.dax_device*, %struct.dax_device** %6, align 8
  %13 = call %struct.pmem_device* @dax_get_private(%struct.dax_device* %12)
  store %struct.pmem_device* %13, %struct.pmem_device** %11, align 8
  %14 = load %struct.pmem_device*, %struct.pmem_device** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i64 @__pmem_direct_access(%struct.pmem_device* %14, i32 %15, i64 %16, i8** %17, i32* %18)
  ret i64 %19
}

declare dso_local %struct.pmem_device* @dax_get_private(%struct.dax_device*) #1

declare dso_local i64 @__pmem_direct_access(%struct.pmem_device*, i32, i64, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
