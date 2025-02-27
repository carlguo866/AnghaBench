; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_file_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_file_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_flush.blnk = internal global [2 x i8] zeroinitializer, align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed seek on file %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed write to file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_flush(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %28

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SEEK_CUR, align 4
  %13 = call i64 @lseek(i32 %11, i32 -1, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @errno, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @syswarn(i32 1, i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %28

19:                                               ; preds = %10
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @write(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @file_flush.blnk, i64 0, i64 0), i32 1)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @errno, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @syswarn(i32 1, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %15, %9
  ret void
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*) #1

declare dso_local i64 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
