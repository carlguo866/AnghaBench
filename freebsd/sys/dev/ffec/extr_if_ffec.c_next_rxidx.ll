; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_next_rxidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_next_rxidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32 }

@RX_DESC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffec_softc*, i32)* @next_rxidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_rxidx(%struct.ffec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RX_DESC_COUNT, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ 0, %9 ], [ %12, %10 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
