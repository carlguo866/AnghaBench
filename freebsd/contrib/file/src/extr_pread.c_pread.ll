; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_pread.c_pread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_pread.c_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pread(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @SEEK_SET, align 4
  %15 = call i32 @lseek(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @read(i32 %19, i8* %20, i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %34

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SEEK_SET, align 4
  %29 = call i32 @lseek(i32 %26, i32 %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %31, %24, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
