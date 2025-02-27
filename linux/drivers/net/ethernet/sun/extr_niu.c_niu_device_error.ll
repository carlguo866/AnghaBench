; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_device_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_device_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@SYS_ERR_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Core device error, stat[%llx]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_device_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_device_error(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %4 = load i32, i32* @SYS_ERR_STAT, align 4
  %5 = call i64 @nr64(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.niu*, %struct.niu** %2, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @netdev_err(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.niu*, %struct.niu** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @niu_log_device_error(%struct.niu* %11, i64 %12)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  ret i32 %15
}

declare dso_local i64 @nr64(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

declare dso_local i32 @niu_log_device_error(%struct.niu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
