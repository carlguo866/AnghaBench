; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_read_l2wmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_event.c_csky_pmu_read_l2wmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"<0, 0x37>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<0, 0x36>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @csky_pmu_read_l2wmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csky_pmu_read_l2wmc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = call i64 @cprgr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* %3, align 8
  %7 = call i64 @cprgr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i64 %7, i64* %1, align 8
  %8 = call i64 @cprgr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* %2, align 8
  br label %9

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %5, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = shl i32 %15, 32
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* %1, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = or i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @cprgr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
