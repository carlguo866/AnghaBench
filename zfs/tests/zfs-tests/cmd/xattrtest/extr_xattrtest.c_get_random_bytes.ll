; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_get_random_bytes.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_get_random_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @get_random_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_random_bytes(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %25, %26
  %28 = call i64 @read(i32 %21, i8* %24, i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %7, align 8
  br label %16

36:                                               ; preds = %31, %16
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @close(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
