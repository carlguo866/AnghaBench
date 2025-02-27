; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_reserve.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utildarray.h_darray_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.darray*, i64)* @darray_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @darray_reserve(i64 %0, %struct.darray* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.darray*, %struct.darray** %5, align 8
  %13 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ule i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %3
  br label %54

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 %18, %19
  %21 = call i8* @bmalloc(i64 %20)
  store i8* %21, i8** %7, align 8
  %22 = load %struct.darray*, %struct.darray** %5, align 8
  %23 = getelementptr inbounds %struct.darray, %struct.darray* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.darray*, %struct.darray** %5, align 8
  %29 = getelementptr inbounds %struct.darray, %struct.darray* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.darray*, %struct.darray** %5, align 8
  %33 = getelementptr inbounds %struct.darray, %struct.darray* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %31, %34
  %36 = call i32 @memcpy(i8* %27, i8* %30, i64 %35)
  br label %37

37:                                               ; preds = %26, %17
  %38 = load %struct.darray*, %struct.darray** %5, align 8
  %39 = getelementptr inbounds %struct.darray, %struct.darray* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.darray*, %struct.darray** %5, align 8
  %44 = getelementptr inbounds %struct.darray, %struct.darray* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @bfree(i8* %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.darray*, %struct.darray** %5, align 8
  %50 = getelementptr inbounds %struct.darray, %struct.darray* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.darray*, %struct.darray** %5, align 8
  %53 = getelementptr inbounds %struct.darray, %struct.darray* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %16
  ret void
}

declare dso_local i8* @bmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
