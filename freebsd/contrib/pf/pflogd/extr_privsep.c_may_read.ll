; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_may_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_may_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @may_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %41, %34, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = sub i64 %21, %22
  %24 = call i64 @read(i32 %17, i8* %20, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  switch i64 %25, label %37 [
    i64 -1, label %26
    i64 0, label %36
  ]

26:                                               ; preds = %16
  %27 = load i32, i32* @errno, align 4
  %28 = load i32, i32* @EINTR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @errno, align 4
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  br label %12

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %16, %35
  store i32 1, i32* %4, align 4
  br label %43

37:                                               ; preds = %16
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %37
  br label %12

42:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
