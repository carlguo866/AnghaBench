; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_callout_remaining_ticks.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_callout_remaining_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_callout = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"ble_npl_callout_remaining_ticks(%p, %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ble_npl_callout_remaining_ticks(%struct.ble_npl_callout* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ble_npl_callout*, align 8
  %5 = alloca i64, align 8
  store %struct.ble_npl_callout* %0, %struct.ble_npl_callout** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @DEBUG_CALLOUT_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_callout* %6, i32 %8)
  %10 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %4, align 8
  %11 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ble_npl_callout*, %struct.ble_npl_callout** %4, align 8
  %17 = getelementptr inbounds %struct.ble_npl_callout, %struct.ble_npl_callout* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %3, align 8
  br label %22

21:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i32 @DEBUG_CALLOUT_printf(i8*, %struct.ble_npl_callout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
