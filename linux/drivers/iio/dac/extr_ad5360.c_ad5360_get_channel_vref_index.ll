; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_get_channel_vref_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5360.c_ad5360_get_channel_vref_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5360_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5360_state*, i32)* @ad5360_get_channel_vref_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5360_get_channel_vref_index(%struct.ad5360_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ad5360_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ad5360_state* %0, %struct.ad5360_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ad5360_state*, %struct.ad5360_state** %3, align 8
  %8 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = udiv i32 %6, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ad5360_state*, %struct.ad5360_state** %3, align 8
  %15 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp uge i32 %13, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.ad5360_state*, %struct.ad5360_state** %3, align 8
  %22 = getelementptr inbounds %struct.ad5360_state, %struct.ad5360_state* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
