; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_convert_buswidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_convert_buswidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_buswidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_buswidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
