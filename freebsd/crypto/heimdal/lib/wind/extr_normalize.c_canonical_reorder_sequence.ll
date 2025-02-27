; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_canonical_reorder_sequence.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_normalize.c_canonical_reorder_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @canonical_reorder_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @canonical_reorder_sequence(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ule i64 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  store i64 1, i64* %5, align 8
  br label %11

11:                                               ; preds = %48, %10
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %44, %15
  %18 = load i64, i64* %6, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @_wind_combining_class(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @_wind_combining_class(i32 %30)
  %32 = icmp slt i64 %25, %31
  br label %33

33:                                               ; preds = %20, %17
  %34 = phi i1 [ false, %17 ], [ %32, %20 ]
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32*, i32** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @swap_char(i32* %38, i32* %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %6, align 8
  br label %17

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %11

51:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @_wind_combining_class(i32) #1

declare dso_local i32 @swap_char(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
