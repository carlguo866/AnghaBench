; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_buf_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_buf_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_RF_CANFAIL = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@DB_RF_NOPREFETCH = common dso_local global i32 0, align 4
@DMU_READ_NO_DECRYPT = common dso_local global i32 0, align 4
@DB_RF_NO_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_buf_hold(i32* %0, i32 %1, i32 %2, i8* %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @DB_RF_CANFAIL, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @DB_RF_NOPREFETCH, align 4
  %23 = load i32, i32* %14, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %21, %6
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @DMU_READ_NO_DECRYPT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @DB_RF_NO_DECRYPT, align 4
  %32 = load i32, i32* %14, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = load i32**, i32*** %11, align 8
  %40 = call i32 @dmu_buf_hold_noread(i32* %35, i32 %36, i32 %37, i8* %38, i32** %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %34
  %44 = load i32**, i32*** %11, align 8
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @dbuf_read(i32* %46, i32* null, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32*, i32** %15, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @dbuf_rele(i32* %52, i8* %53)
  %55 = load i32**, i32*** %11, align 8
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %51, %43
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %13, align 4
  ret i32 %58
}

declare dso_local i32 @dmu_buf_hold_noread(i32*, i32, i32, i8*, i32**) #1

declare dso_local i32 @dbuf_read(i32*, i32*, i32) #1

declare dso_local i32 @dbuf_rele(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
