; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_scheduler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_scheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_tx_scheduler(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %3 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %4 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %9 = call i32 @carl9170_tx_ampdu(%struct.ar9170* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %12 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %17 = call i32 @carl9170_tx(%struct.ar9170* %16)
  br label %18

18:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @carl9170_tx_ampdu(%struct.ar9170*) #1

declare dso_local i32 @carl9170_tx(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
