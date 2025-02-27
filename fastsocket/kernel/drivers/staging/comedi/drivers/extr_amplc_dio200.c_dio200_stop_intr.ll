; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_stop_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_dio200.c_dio200_stop_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.dio200_subdev_intr* }
%struct.dio200_subdev_intr = type { i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @dio200_stop_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio200_stop_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.dio200_subdev_intr*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 0
  %8 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %7, align 8
  store %struct.dio200_subdev_intr* %8, %struct.dio200_subdev_intr** %5, align 8
  %9 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %10 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %12 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %14 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.dio200_subdev_intr*, %struct.dio200_subdev_intr** %5, align 8
  %19 = getelementptr inbounds %struct.dio200_subdev_intr, %struct.dio200_subdev_intr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @outb(i32 0, i32 %20)
  br label %22

22:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
