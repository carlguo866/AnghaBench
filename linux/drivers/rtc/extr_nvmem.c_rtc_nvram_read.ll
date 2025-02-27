; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_nvmem.c_rtc_nvram_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_nvmem.c_rtc_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }

@nvram_warning = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @rtc_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_nvram_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load %struct.kobject*, %struct.kobject** %8, align 8
  %14 = call i32 @kobj_to_dev(%struct.kobject* %13)
  %15 = load i32, i32* @nvram_warning, align 4
  %16 = call i32 @dev_warn_once(i32 %14, i32 %15)
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %9, align 8
  %18 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i64, i64* %12, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @nvmem_device_read(i32 %19, i32 %20, i64 %21, i8* %22)
  ret i32 %23
}

declare dso_local i32 @dev_warn_once(i32, i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local i32 @nvmem_device_read(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
