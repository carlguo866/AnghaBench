; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1525.c_read_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1525.c_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i32, i32* @data, align 4
  %16 = call i64 @strlen(i32 %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @data, align 4
  %20 = call i64 @strlen(i32 %19)
  store i64 %20, i64* %5, align 8
  br label %30

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @data, align 4
  %25 = load i32, i32* @data, align 4
  %26 = call i64 @strlen(i32 %25)
  %27 = call i32 @memcpy(i8* %23, i32 %24, i64 %26)
  %28 = load i32, i32* @data, align 4
  %29 = call i64 @strlen(i32 %28)
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
