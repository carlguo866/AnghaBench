; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_copy_unroll.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_copy_unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@IRT_CDATA = common dso_local global i64 0, align 8
@IRT_U8 = common dso_local global i64 0, align 8
@CREC_COPY_MAXUNROLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64, i64)* @crec_copy_unroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_copy_unroll(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @IRT_CDATA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i64, i64* @IRT_U8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @lj_fls(i64 %17)
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %15, %4
  br label %23

23:                                               ; preds = %56, %22
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @CREC_COPY_MAXUNROLL, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %62

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 %36, i64* %40, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %10, align 8
  br label %24

51:                                               ; preds = %24
  %52 = load i64, i64* %8, align 8
  %53 = ashr i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, 2
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %23, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %34
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i32 @lj_fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
