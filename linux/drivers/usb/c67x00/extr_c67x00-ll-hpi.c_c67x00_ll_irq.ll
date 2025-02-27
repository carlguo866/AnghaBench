; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-ll-hpi.c_c67x00_ll_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MBX_OUT_FLG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_ll_irq(%struct.c67x00_device* %0, i32 %1) #0 {
  %3 = alloca %struct.c67x00_device*, align 8
  %4 = alloca i32, align 4
  store %struct.c67x00_device* %0, %struct.c67x00_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MBX_OUT_FLG, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %22

10:                                               ; preds = %2
  %11 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %12 = call i32 @hpi_recv_mbox(%struct.c67x00_device* %11)
  %13 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %14 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %12, i32* %16, align 4
  %17 = load %struct.c67x00_device*, %struct.c67x00_device** %3, align 8
  %18 = getelementptr inbounds %struct.c67x00_device, %struct.c67x00_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @complete(i32* %20)
  br label %22

22:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @hpi_recv_mbox(%struct.c67x00_device*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
