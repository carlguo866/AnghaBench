; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_alloc_palette_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_lcdc.c_alloc_palette_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@lcdc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX_PALETTE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to alloc palette memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @alloc_palette_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_palette_ram() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MAX_PALETTE_SIZE, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @dma_alloc_wc(i32 %4, i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 2), i32 %6)
  store i32* %7, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 1), align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %21

17:                                               ; preds = %0
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcdc, i32 0, i32 0), align 8
  %19 = load i32, i32* @MAX_PALETTE_SIZE, align 4
  %20 = call i32 @memset(i32* %18, i32 0, i32 %19)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32* @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
