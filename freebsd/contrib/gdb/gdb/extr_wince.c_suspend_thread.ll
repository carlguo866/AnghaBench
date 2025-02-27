; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_suspend_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_suspend_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"SuspendThread handle\00", align 1
@GDB_SUSPENDTHREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SuspendThread result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @suspend_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @s, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @GDB_SUSPENDTHREAD, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @puthandle(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* @GDB_SUSPENDTHREAD, align 4
  %12 = call i64 @getdword(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %7, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i32 @puthandle(i8*, i32, i32) #1

declare dso_local i64 @getdword(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
