; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_p2p_setsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_p2p_setsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i32, i32, i32)* @scif_p2p_setsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @scif_p2p_setsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.scatterlist* @kcalloc(i32 %11, i32 4, i32 %12)
  store %struct.scatterlist* %13, %struct.scatterlist** %8, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %15 = icmp ne %struct.scatterlist* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @sg_init_table(%struct.scatterlist* %18, i32 %19)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %40, %17
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = call %struct.page* @pfn_to_page(i32 %28)
  store %struct.page* %29, %struct.page** %9, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i64 %32
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sg_set_page(%struct.scatterlist* %33, %struct.page* %34, i32 %35, i32 0)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %44, %struct.scatterlist** %4, align 8
  br label %45

45:                                               ; preds = %43, %16
  %46 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %46
}

declare dso_local %struct.scatterlist* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @pfn_to_page(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
