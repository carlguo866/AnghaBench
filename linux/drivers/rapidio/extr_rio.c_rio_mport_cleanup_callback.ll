; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_mport_cleanup_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_mport_cleanup_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.rio_dev = type { i32 }

@rio_bus_type = common dso_local global i32 0, align 4
@RIO_DEVICE_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @rio_mport_cleanup_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_mport_cleanup_callback(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rio_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rio_dev* @to_rio_dev(%struct.device* %6)
  store %struct.rio_dev* %7, %struct.rio_dev** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @rio_bus_type
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.rio_dev*, %struct.rio_dev** %5, align 8
  %14 = load i32, i32* @RIO_DEVICE_SHUTDOWN, align 4
  %15 = call i32 @rio_del_device(%struct.rio_dev* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local %struct.rio_dev* @to_rio_dev(%struct.device*) #1

declare dso_local i32 @rio_del_device(%struct.rio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
