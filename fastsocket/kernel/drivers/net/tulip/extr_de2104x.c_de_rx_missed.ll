; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_rx_missed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_rx_missed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RxMissedOver = common dso_local global i32 0, align 4
@RxMissedMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*, i32)* @de_rx_missed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_rx_missed(%struct.de_private* %0, i32 %1) #0 {
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RxMissedOver, align 4
  %7 = and i32 %5, %6
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @RxMissedMask, align 4
  %12 = load %struct.de_private*, %struct.de_private** %3, align 8
  %13 = getelementptr inbounds %struct.de_private, %struct.de_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, %11
  store i32 %16, i32* %14, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RxMissedMask, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.de_private*, %struct.de_private** %3, align 8
  %22 = getelementptr inbounds %struct.de_private, %struct.de_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %20
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %17, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
