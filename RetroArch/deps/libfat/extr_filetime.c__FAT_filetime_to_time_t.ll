; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_filetime.c__FAT_filetime_to_time_t.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_filetime.c__FAT_filetime_to_time_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_filetime_to_time_t(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 11
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = ashr i32 %9, 5
  %11 = and i32 %10, 63
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 31
  %15 = shl i32 %14, 1
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 31
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 5
  %22 = and i32 %21, 15
  %23 = sub nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 9
  %27 = add nsw i32 %26, 80
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = call i32 @mktime(%struct.tm* %5)
  ret i32 %30
}

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
