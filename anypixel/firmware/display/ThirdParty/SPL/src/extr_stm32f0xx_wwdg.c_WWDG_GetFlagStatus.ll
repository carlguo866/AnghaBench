; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_wwdg.c_WWDG_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_wwdg.c_WWDG_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@RESET = common dso_local global i64 0, align 8
@WWDG = common dso_local global %struct.TYPE_2__* null, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WWDG_GetFlagStatus() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @RESET, align 8
  store i64 %2, i64* %1, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WWDG, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RESET, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @SET, align 8
  store i64 %9, i64* %1, align 8
  br label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @RESET, align 8
  store i64 %11, i64* %1, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i64, i64* %1, align 8
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
