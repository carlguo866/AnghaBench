; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkbk_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkbk_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32, i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"feature-barrier\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"writing feature-barrier (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_blkbk_barrier(i32 %0, %struct.backend_info* %1, i32 %2) #0 {
  %4 = alloca %struct.xenbus_transaction, align 4
  %5 = alloca %struct.backend_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xenbus_device*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  store %struct.backend_info* %1, %struct.backend_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.backend_info*, %struct.backend_info** %5, align 8
  %11 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %10, i32 0, i32 0
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %11, align 8
  store %struct.xenbus_device* %12, %struct.xenbus_device** %7, align 8
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @xenbus_printf(i32 %18, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %24 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
