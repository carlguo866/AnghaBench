; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat.c_beat_set_rtc_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_beat.c_beat_set_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beat_set_rtc_time(%struct.rtc_time* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtc_time*, align 8
  %4 = alloca i32, align 4
  store %struct.rtc_time* %0, %struct.rtc_time** %3, align 8
  %5 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %6 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1900
  %9 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %10 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %14 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %20 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rtc_time*, %struct.rtc_time** %3, align 8
  %23 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mktime(i64 %8, i64 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @beat_rtc_write(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mktime(i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @beat_rtc_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
