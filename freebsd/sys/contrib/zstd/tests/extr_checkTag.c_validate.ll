; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_checkTag.c_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_checkTag.c_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_VERSION_STRING = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i8*, i8** @ZSTD_VERSION_STRING, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 118
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %34

20:                                               ; preds = %13
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %34

25:                                               ; preds = %20
  %26 = load i8*, i8** @ZSTD_VERSION_STRING, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @strncmp(i8* %26, i8* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %24, %19, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
