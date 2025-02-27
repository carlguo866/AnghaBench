; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_find.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64 }

@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.darray*, i8*, i64)* @darray_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @darray_find(i64 %0, %struct.darray* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.darray*, %struct.darray** %7, align 8
  %14 = getelementptr inbounds %struct.darray, %struct.darray* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %9, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %39, %4
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.darray*, %struct.darray** %7, align 8
  %23 = getelementptr inbounds %struct.darray, %struct.darray* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.darray*, %struct.darray** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i8* @darray_item(i64 %27, %struct.darray* %28, i64 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @memcmp(i8* %31, i8* %32, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %5, align 8
  br label %44

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %20

42:                                               ; preds = %20
  %43 = load i64, i64* @DARRAY_INVALID, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @darray_item(i64, %struct.darray*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
