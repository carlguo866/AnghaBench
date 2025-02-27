; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_lib.c_rtc_ktime_to_tm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_lib.c_rtc_ktime_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }
%struct.timespec64 = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_ktime_to_tm(i32 %0) #0 {
  %2 = alloca %struct.rtc_time, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call { i32, i64 } @ktime_to_timespec64(i32 %6)
  %8 = bitcast %struct.timespec64* %5 to { i32, i64 }*
  %9 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 0
  %10 = extractvalue { i32, i64 } %7, 0
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 1
  %12 = extractvalue { i32, i64 } %7, 1
  store i64 %12, i64* %11, align 8
  %13 = bitcast %struct.timespec64* %4 to i8*
  %14 = bitcast %struct.timespec64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %18, %1
  %23 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @rtc_time64_to_tm(i32 %24, %struct.rtc_time* %2)
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local { i32, i64 } @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
