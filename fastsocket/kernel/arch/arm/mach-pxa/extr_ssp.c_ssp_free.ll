; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_device = type { %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }

@ssp_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device already free\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssp_free(%struct.ssp_device* %0) #0 {
  %2 = alloca %struct.ssp_device*, align 8
  store %struct.ssp_device* %0, %struct.ssp_device** %2, align 8
  %3 = call i32 @mutex_lock(i32* @ssp_lock)
  %4 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %5 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %10 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %14 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.ssp_device*, %struct.ssp_device** %2, align 8
  %17 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %15, %8
  %22 = call i32 @mutex_unlock(i32* @ssp_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
