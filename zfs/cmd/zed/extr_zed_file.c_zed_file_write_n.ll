; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_file.c_zed_file_write_n.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_file.c_zed_file_write_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zed_file_write_n(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %28, %26, %3
  %14 = load i64, i64* %9, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @write(i32 %17, i8* %18, i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @EINTR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %13

27:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %40

28:                                               ; preds = %16
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %8, align 8
  br label %13

37:                                               ; preds = %13
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
