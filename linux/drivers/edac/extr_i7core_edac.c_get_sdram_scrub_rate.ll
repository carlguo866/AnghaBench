; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_get_sdram_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_get_sdram_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7core_pvt* }
%struct.i7core_pvt = type { i64, %struct.pci_dev** }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MC_SCRUB_CONTROL = common dso_local global i32 0, align 4
@SCRUBINTERVAL_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @get_sdram_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sdram_scrub_rate(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7core_pvt*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.i7core_pvt*, %struct.i7core_pvt** %11, align 8
  store %struct.i7core_pvt* %12, %struct.i7core_pvt** %4, align 8
  store i64 64, i64* %6, align 8
  %13 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %14 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %17 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %16, i32 0, i32 1
  %18 = load %struct.pci_dev**, %struct.pci_dev*** %17, align 8
  %19 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %18, i64 2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %5, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* @MC_SCRUB_CONTROL, align 4
  %29 = call i32 @pci_read_config_dword(%struct.pci_dev* %27, i32 %28, i64* %9)
  %30 = load i64, i64* @SCRUBINTERVAL_MASK, align 8
  %31 = load i64, i64* %9, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, 1000000
  %39 = mul i64 %38, 64
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @do_div(i64 %40, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %35, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
