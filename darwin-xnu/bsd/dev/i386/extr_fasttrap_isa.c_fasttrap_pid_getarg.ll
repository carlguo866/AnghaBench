; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_pid_getarg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_fasttrap_isa.c_fasttrap_pid_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fasttrap_pid_getarg(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 (...) @current_thread()
  %12 = load i32, i32* @VALID, align 4
  %13 = call i32 @pal_register_cache_state(i32 %11, i32 %12)
  %14 = call i32 (...) @current_thread()
  %15 = call i64 @find_user_regs(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @fasttrap_anarg(i32* %16, i32 1, i32 %17)
  ret i32 %18
}

declare dso_local i32 @pal_register_cache_state(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @fasttrap_anarg(i32*, i32, i32) #1

declare dso_local i64 @find_user_regs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
