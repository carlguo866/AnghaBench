; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_check_sev_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_psp_check_sev_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_device = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"psp does not support SEV\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_device*)* @psp_check_sev_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_check_sev_support(%struct.psp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_device*, align 8
  store %struct.psp_device* %0, %struct.psp_device** %3, align 8
  %4 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %5 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %8 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %6, %11
  %13 = call i32 @ioread32(i64 %12)
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.psp_device*, %struct.psp_device** %3, align 8
  %18 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
