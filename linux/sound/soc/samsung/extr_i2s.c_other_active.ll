; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_other_active.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_other_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_dai = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2s_dai*)* @other_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @other_active(%struct.i2s_dai* %0) #0 {
  %2 = alloca %struct.i2s_dai*, align 8
  store %struct.i2s_dai* %0, %struct.i2s_dai** %2, align 8
  %3 = load %struct.i2s_dai*, %struct.i2s_dai** %2, align 8
  %4 = call i64 @other_rx_active(%struct.i2s_dai* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.i2s_dai*, %struct.i2s_dai** %2, align 8
  %8 = call i64 @other_tx_active(%struct.i2s_dai* %7)
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

declare dso_local i64 @other_rx_active(%struct.i2s_dai*) #1

declare dso_local i64 @other_tx_active(%struct.i2s_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
