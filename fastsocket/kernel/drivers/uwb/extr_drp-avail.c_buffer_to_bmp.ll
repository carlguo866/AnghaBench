; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp-avail.c_buffer_to_bmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp-avail.c_buffer_to_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*, i64)* @buffer_to_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_to_bmp(i64* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub i64 %18, %19
  %21 = icmp uge i64 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub i64 %24, %25
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i64 [ 8, %22 ], [ %26, %23 ]
  store i64 %28, i64* %9, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @get_val(i32* %29, i64 %30, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = udiv i64 %35, 8
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 8
  store i64 %39, i64* %8, align 8
  br label %13

40:                                               ; preds = %13
  ret void
}

declare dso_local i64 @get_val(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
