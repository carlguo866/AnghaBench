; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_main.c_measure.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_main.c_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"cycles = \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stack = \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (...)*)* @measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @measure(i32 (...)* %0) #0 {
  %2 = alloca i32 (...)*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 (...)* %0, i32 (...)** %2, align 8
  %6 = call i32 (...) @clear_stack()
  %7 = call i32 (...) @reset_cycles()
  store i32 %7, i32* %3, align 4
  %8 = load i32 (...)*, i32 (...)** %2, align 8
  %9 = call i32 (...) %8()
  %10 = call i32 (...) @get_cycles()
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @measure_stack()
  store i32 %11, i32* %5, align 4
  %12 = call i32 @emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i32 @emit_uint32(i32 %15)
  %17 = call i32 @emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 2
  %21 = call i32 @emit_uint32(i32 %20)
  %22 = call i32 @emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @clear_stack(...) #1

declare dso_local i32 @reset_cycles(...) #1

declare dso_local i32 @get_cycles(...) #1

declare dso_local i32 @measure_stack(...) #1

declare dso_local i32 @emit(i8*) #1

declare dso_local i32 @emit_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
