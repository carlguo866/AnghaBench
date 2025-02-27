; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-dev.c_sp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-dev.c_sp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sp_destroy(%struct.sp_device* %0) #0 {
  %2 = alloca %struct.sp_device*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %2, align 8
  %3 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %4 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %11 = call i32 @ccp_dev_destroy(%struct.sp_device* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %14 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %21 = call i32 @psp_dev_destroy(%struct.sp_device* %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.sp_device*, %struct.sp_device** %2, align 8
  %24 = call i32 @sp_del_device(%struct.sp_device* %23)
  ret void
}

declare dso_local i32 @ccp_dev_destroy(%struct.sp_device*) #1

declare dso_local i32 @psp_dev_destroy(%struct.sp_device*) #1

declare dso_local i32 @sp_del_device(%struct.sp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
