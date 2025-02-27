; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_caps_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_caps_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@HFI1_CAP_LOCKED_SMASK = common dso_local global i64 0, align 8
@HFI1_CAP_K2U = common dso_local global i64 0, align 8
@HFI1_CAP_USER_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @hfi1_caps_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_caps_get(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  %6 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %7 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @HFI1_CAP_LOCKED_SMASK, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @HFI1_CAP_K2U, align 8
  %17 = and i64 %15, %16
  %18 = load i64, i64* @HFI1_CAP_USER_SHIFT, align 8
  %19 = shl i64 %17, %18
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @scnprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %24)
  ret i32 %25
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
