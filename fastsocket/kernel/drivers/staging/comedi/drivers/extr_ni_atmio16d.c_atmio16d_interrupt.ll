; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_atmio16d.c_atmio16d_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

@AD_FIFO_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmio16d_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmio16d_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.comedi_device*
  store %struct.comedi_device* %8, %struct.comedi_device** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 1
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 0
  store %struct.comedi_subdevice* %12, %struct.comedi_subdevice** %6, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AD_FIFO_REG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inw(i64 %20)
  %22 = call i32 @comedi_buf_put(i32 %15, i32 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %25 = call i32 @comedi_event(%struct.comedi_device* %23, %struct.comedi_subdevice* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @comedi_buf_put(i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
