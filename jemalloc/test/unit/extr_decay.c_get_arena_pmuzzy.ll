; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_decay.c_get_arena_pmuzzy.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_decay.c_get_arena_pmuzzy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"stats.arenas.0.pmuzzy\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected mallctlbymib() failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @get_arena_pmuzzy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_arena_pmuzzy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [4 x i64], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @do_epoch()
  store i64 4, i64* %4, align 8
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %9 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64* %8, i64* %4)
  %10 = call i32 @assert_d_eq(i32 %9, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  store i64 %12, i64* %13, align 16
  store i64 8, i64* %6, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %15 = load i64, i64* %4, align 8
  %16 = bitcast i64* %5 to i8*
  %17 = call i32 @mallctlbymib(i64* %14, i64 %15, i8* %16, i64* %6, i32* null, i32 0)
  %18 = call i32 @assert_d_eq(i32 %17, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i64, i64* %5, align 8
  ret i64 %19
}

declare dso_local i32 @do_epoch(...) #1

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i8*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
