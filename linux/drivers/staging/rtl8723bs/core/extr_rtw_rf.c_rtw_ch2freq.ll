; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_rf.c_rtw_ch2freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_rf.c_rtw_ch2freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ch_freq_map = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_ch2freq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ch_freq_map, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load i64, i64* %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ch_freq_map, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ch_freq_map, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %28

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %5

28:                                               ; preds = %18, %5
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ch_freq_map, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i64 2412, i64* %4, align 8
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
