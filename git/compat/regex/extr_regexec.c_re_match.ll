; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regexec.c_re_match.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regexec.c_re_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i32 }
%struct.re_registers = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @re_match(%struct.re_pattern_buffer* %0, i8* %1, i32 %2, i32 %3, %struct.re_registers* %4) #0 {
  %6 = alloca %struct.re_pattern_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.re_registers*, align 8
  store %struct.re_pattern_buffer* %0, %struct.re_pattern_buffer** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.re_registers* %4, %struct.re_registers** %10, align 8
  %11 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.re_registers*, %struct.re_registers** %10, align 8
  %17 = call i32 @re_search_stub(%struct.re_pattern_buffer* %11, i8* %12, i32 %13, i32 %14, i32 0, i32 %15, %struct.re_registers* %16, i32 1)
  ret i32 %17
}

declare dso_local i32 @re_search_stub(%struct.re_pattern_buffer*, i8*, i32, i32, i32, i32, %struct.re_registers*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
