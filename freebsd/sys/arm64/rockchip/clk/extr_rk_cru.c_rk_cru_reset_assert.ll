; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_cru.c_rk_cru_reset_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_cru.c_rk_cru_reset_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_cru_softc = type { i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @rk_cru_reset_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_cru_reset_assert(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rk_cru_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.rk_cru_softc* @device_get_softc(i32 %12)
  store %struct.rk_cru_softc* %13, %struct.rk_cru_softc** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %8, align 8
  %16 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %8, align 8
  %23 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = sdiv i64 %26, 16
  %28 = mul nsw i64 %27, 4
  %29 = add nsw i64 %25, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %6, align 8
  %32 = srem i64 %31, 16
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %8, align 8
  %35 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %34, i32 0, i32 2
  %36 = call i32 @mtx_lock(i32* %35)
  store i32 0, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %21
  %43 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 1, %46
  %48 = shl i32 %47, 16
  %49 = or i32 %45, %48
  %50 = call i32 @CCU_WRITE4(%struct.rk_cru_softc* %43, i32 %44, i32 %49)
  %51 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %8, align 8
  %52 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %51, i32 0, i32 2
  %53 = call i32 @mtx_unlock(i32* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %42, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.rk_cru_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @CCU_WRITE4(%struct.rk_cru_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
