; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"comedi%d: c6xdigio: remove\0A\00", align 1
@C6XDIGIO_SIZE = common dso_local global i32 0, align 4
@c6xdigio_pnp_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @c6xdigio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c6xdigio_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @C6XDIGIO_SIZE, align 4
  %16 = call i32 @release_region(i64 %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %27 = call i32 @free_irq(i64 %25, %struct.comedi_device* %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = call i32 @pnp_unregister_driver(i32* @c6xdigio_pnp_driver)
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @pnp_unregister_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
