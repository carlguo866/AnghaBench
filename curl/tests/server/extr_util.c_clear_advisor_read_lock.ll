; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_util.c_clear_advisor_read_lock.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_util.c_clear_advisor_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Error removing lock file %s error: %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_advisor_read_lock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @unlink(i8* %6)
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @EINTR, align 4
  %14 = icmp eq i32 %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %5, label %17

17:                                               ; preds = %15
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @logmsg(i8*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
