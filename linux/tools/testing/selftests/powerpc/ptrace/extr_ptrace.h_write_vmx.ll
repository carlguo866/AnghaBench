; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace.h_write_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTRACE_SETVRREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ptrace(PTRACE_SETVRREGS) failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_vmx(i32 %0, [2 x i64]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64]*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store [2 x i64]* %1, [2 x i64]** %5, align 8
  %7 = load i32, i32* @PTRACE_SETVRREGS, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load [2 x i64]*, [2 x i64]** %5, align 8
  %10 = bitcast [2 x i64]* %9 to i64**
  %11 = call i32 @ptrace(i32 %7, i32 %8, i32 0, i64** %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @TEST_FAIL, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @TEST_PASS, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ptrace(i32, i32, i32, i64**) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
