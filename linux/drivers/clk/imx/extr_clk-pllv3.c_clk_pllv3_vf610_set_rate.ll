; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_vf610_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_vf610_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i64, i64, i64, i32 }
%struct.clk_pllv3_vf610_mf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pllv3_vf610_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pllv3_vf610_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_pllv3*, align 8
  %8 = alloca %struct.clk_pllv3_vf610_mf, align 4
  %9 = alloca { i64, i32 }, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %11)
  store %struct.clk_pllv3* %12, %struct.clk_pllv3** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call { i64, i32 } @clk_pllv3_vf610_rate_to_mf(i64 %13, i64 %14)
  store { i64, i32 } %15, { i64, i32 }* %9, align 8
  %16 = bitcast { i64, i32 }* %9 to i8*
  %17 = bitcast %struct.clk_pllv3_vf610_mf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %16, i64 12, i1 false)
  %18 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %19 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 20
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %27 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %34 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %41 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @writel_relaxed(i32 %39, i64 %42)
  %44 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %8, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %47 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %50 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = call i32 @writel_relaxed(i32 %45, i64 %52)
  %54 = getelementptr inbounds %struct.clk_pllv3_vf610_mf, %struct.clk_pllv3_vf610_mf* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %57 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %60 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel_relaxed(i32 %55, i64 %62)
  %64 = load %struct.clk_pllv3*, %struct.clk_pllv3** %7, align 8
  %65 = call i32 @clk_pllv3_wait_lock(%struct.clk_pllv3* %64)
  ret i32 %65
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local { i64, i32 } @clk_pllv3_vf610_rate_to_mf(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_pllv3_wait_lock(%struct.clk_pllv3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
