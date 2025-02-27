; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32 (%struct.cnic_dev.0*)* }
%struct.cnic_dev.0 = type opaque

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cnic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.cnic_dev*
  store %struct.cnic_dev* %8, %struct.cnic_dev** %5, align 8
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 0
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %6, align 8
  %12 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %13 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %12, i32 0, i32 0
  %14 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %13, align 8
  %15 = icmp ne i32 (%struct.cnic_dev.0*)* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 0
  %19 = load i32 (%struct.cnic_dev.0*)*, i32 (%struct.cnic_dev.0*)** %18, align 8
  %20 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %21 = bitcast %struct.cnic_dev* %20 to %struct.cnic_dev.0*
  %22 = call i32 %19(%struct.cnic_dev.0* %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %25 = call i32 @cnic_doirq(%struct.cnic_dev* %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @cnic_doirq(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
