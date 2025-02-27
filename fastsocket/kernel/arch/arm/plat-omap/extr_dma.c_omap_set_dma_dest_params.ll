; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_dest_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_dest_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_dest_params(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = call i64 (...) @cpu_class_is_omap1()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %6
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @CSDP(i32 %17)
  %19 = call i32 @dma_read(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = and i32 %20, -15873
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 9
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @CSDP(i32 %27)
  %29 = call i32 @dma_write(i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %16, %6
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @CCR(i32 %31)
  %33 = call i32 @dma_read(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = and i32 %34, -49153
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 14
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @CCR(i32 %41)
  %43 = call i32 @dma_write(i32 %40, i32 %42)
  %44 = call i64 (...) @cpu_class_is_omap1()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %30
  %47 = load i64, i64* %10, align 8
  %48 = lshr i64 %47, 16
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @CDSA_U(i32 %50)
  %52 = call i32 @dma_write(i32 %49, i32 %51)
  %53 = load i64, i64* %10, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @CDSA_L(i32 %55)
  %57 = call i32 @dma_write(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %46, %30
  %59 = call i64 (...) @cpu_class_is_omap2()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @CDSA(i32 %64)
  %66 = call i32 @dma_write(i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @CDEI(i32 %69)
  %71 = call i32 @dma_write(i32 %68, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @CDFI(i32 %73)
  %75 = call i32 @dma_write(i32 %72, i32 %74)
  ret void
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CSDP(i32) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @CDSA_U(i32) #1

declare dso_local i32 @CDSA_L(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @CDSA(i32) #1

declare dso_local i32 @CDEI(i32) #1

declare dso_local i32 @CDFI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
