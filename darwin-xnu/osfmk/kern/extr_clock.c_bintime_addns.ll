; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime_addns.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c_bintime_addns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintime = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bintime*, i32)* @bintime_addns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bintime_addns(%struct.bintime* %0, i32 %1) #0 {
  %3 = alloca %struct.bintime*, align 8
  %4 = alloca i32, align 4
  store %struct.bintime* %0, %struct.bintime** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i64, i64* @NSEC_PER_SEC, align 8
  %7 = trunc i64 %6 to i32
  %8 = sdiv i32 %5, %7
  %9 = load %struct.bintime*, %struct.bintime** %3, align 8
  %10 = getelementptr inbounds %struct.bintime, %struct.bintime* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i64, i64* @NSEC_PER_SEC, align 8
  %15 = trunc i64 %14 to i32
  %16 = srem i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 1266874889
  store i32 %21, i32* %4, align 4
  %22 = load %struct.bintime*, %struct.bintime** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bintime_addx(%struct.bintime* %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
