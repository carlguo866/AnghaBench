; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i64, i64, %struct.dasd_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_free_device(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  %3 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %4 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %3, i32 0, i32 3
  %5 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %6 = call i32 @kfree(%struct.dasd_device* %5)
  %7 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @free_pages(i64 %9, i32 1)
  %11 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @free_page(i64 %13)
  %15 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @free_pages(i64 %17, i32 1)
  %19 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %20 = call i32 @kfree(%struct.dasd_device* %19)
  ret void
}

declare dso_local i32 @kfree(%struct.dasd_device*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
