; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/arch/x86_64/extr_exec_prot_support.c_exec_prot_support.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/arch/x86_64/extr_exec_prot_support.c_exec_prot_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"cpuctl identify 0 | grep -q NOX\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"cpuctl identify 0 | grep -q XD\00", align 1
@PERPAGE_XP = common dso_local global i32 0, align 4
@NO_XP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_prot_support() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @system(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 @system(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @PERPAGE_XP, align 4
  store i32 %8, i32* %1, align 4
  br label %11

9:                                                ; preds = %4
  %10 = load i32, i32* @NO_XP, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i64 @system(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
