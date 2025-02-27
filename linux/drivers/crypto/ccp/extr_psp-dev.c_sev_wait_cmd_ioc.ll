; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_wait_cmd_ioc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_wait_cmd_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_device = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_device*, i32*, i32)* @sev_wait_cmd_ioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sev_wait_cmd_ioc(%struct.psp_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psp_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psp_device* %0, %struct.psp_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %10 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %13 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = mul i32 %15, %16
  %18 = call i32 @wait_event_timeout(i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %26 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.psp_device*, %struct.psp_device** %5, align 8
  %29 = getelementptr inbounds %struct.psp_device, %struct.psp_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %27, %32
  %34 = call i32 @ioread32(i64 %33)
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %21
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
