; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipepoll.c_report_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipepoll.c_report_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c" %s state %s: \00", align 1
@filetype = common dso_local global i64 0, align 8
@FT_PIPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Pipe\00", align 1
@FT_SOCKETPAIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Sock\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @report_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_state(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @filetype, align 8
  %4 = load i64, i64* @FT_PIPE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  %8 = load i64, i64* @filetype, align 8
  %9 = load i64, i64* @FT_SOCKETPAIR, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %6 ], [ %12, %7 ]
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
