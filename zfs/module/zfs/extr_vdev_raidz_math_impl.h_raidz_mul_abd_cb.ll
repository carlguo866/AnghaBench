; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_mul_abd_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math_impl.h_raidz_mul_abd_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUL_D = common dso_local global i32 0, align 4
@MUL_STRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @raidz_mul_abd_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raidz_mul_abd_cb(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = call i32 (...) @MUL_DEFINE()
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %54, %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %18, 4
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* @MUL_D, align 4
  %26 = call i32 @LOAD(i32* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MUL_D, align 4
  %29 = call i32 @MUL(i32 %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* @MUL_D, align 4
  %34 = call i32 @STORE(i32* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* @MUL_STRIDE, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* @MUL_D, align 4
  %42 = call i32 @LOAD(i32* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MUL_D, align 4
  %45 = call i32 @MUL(i32 %43, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* @MUL_STRIDE, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* @MUL_D, align 4
  %53 = call i32 @STORE(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %21
  %55 = load i32, i32* @MUL_STRIDE, align 4
  %56 = mul nsw i32 2, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %16

60:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @MUL_DEFINE(...) #1

declare dso_local i32 @LOAD(i32*, i32) #1

declare dso_local i32 @MUL(i32, i32) #1

declare dso_local i32 @STORE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
