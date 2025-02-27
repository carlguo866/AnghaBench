; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_daq_dio24.c_dio24_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_daq_dio24.c_dio24_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"comedi%d: ni_daq_dio24: remove\0A\00", align 1
@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@pcmcia_bustype = common dso_local global i64 0, align 8
@DIO24_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dio24_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio24_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 0
  %17 = call i32 @subdev_8255_cleanup(%struct.comedi_device* %12, i64 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @pcmcia_bustype, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @DIO24_SIZE, align 4
  %34 = call i32 @release_region(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24, %18
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = call i32 @free_irq(i64 %43, %struct.comedi_device* %44)
  br label %46

46:                                               ; preds = %40, %35
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @subdev_8255_cleanup(%struct.comedi_device*, i64) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
