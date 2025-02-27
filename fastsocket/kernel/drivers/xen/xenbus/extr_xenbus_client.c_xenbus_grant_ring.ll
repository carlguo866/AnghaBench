; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_grant_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_grant_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"granting access to ring page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_grant_ring(%struct.xenbus_device* %0, i64 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @gnttab_grant_foreign_access(i32 %8, i64 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %14, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @gnttab_grant_foreign_access(i32, i64, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
