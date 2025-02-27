; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_rm_lnkcnt_zero_file.c_mover.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/cddl/zfs/bin/extr_rm_lnkcnt_zero_file.c_mover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s.%03d\00", align 1
@filebase = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"renaming file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mover(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i64, i64* @TRUE, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = call i32 (...) @pickidx()
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %12 = load i8*, i8** @filebase, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = load i8*, i8** @filebase, align 8
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %17 = call i32 @rename(i8* %15, i8* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20, %9
  br label %6

27:                                               ; preds = %6
  ret i8* null
}

declare dso_local i32 @pickidx(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
