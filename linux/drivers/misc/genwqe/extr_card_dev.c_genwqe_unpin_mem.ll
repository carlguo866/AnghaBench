; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_genwqe_unpin_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_genwqe_unpin_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32 }
%struct.genwqe_mem = type { i32, i64 }
%struct.dma_mapping = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_file*, %struct.genwqe_mem*)* @genwqe_unpin_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_unpin_mem(%struct.genwqe_file* %0, %struct.genwqe_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genwqe_file*, align 8
  %5 = alloca %struct.genwqe_mem*, align 8
  %6 = alloca %struct.genwqe_dev*, align 8
  %7 = alloca %struct.dma_mapping*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.genwqe_file* %0, %struct.genwqe_file** %4, align 8
  store %struct.genwqe_mem* %1, %struct.genwqe_mem** %5, align 8
  %10 = load %struct.genwqe_file*, %struct.genwqe_file** %4, align 8
  %11 = getelementptr inbounds %struct.genwqe_file, %struct.genwqe_file* %10, i32 0, i32 0
  %12 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  store %struct.genwqe_dev* %12, %struct.genwqe_dev** %6, align 8
  %13 = load %struct.genwqe_mem*, %struct.genwqe_mem** %5, align 8
  %14 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.genwqe_mem*, %struct.genwqe_mem** %5, align 8
  %22 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.genwqe_mem*, %struct.genwqe_mem** %5, align 8
  %28 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.genwqe_mem*, %struct.genwqe_mem** %5, align 8
  %31 = getelementptr inbounds %struct.genwqe_mem, %struct.genwqe_mem* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = and i64 %33, %35
  %37 = add i64 %29, %36
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i64 @round_up(i64 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.genwqe_file*, %struct.genwqe_file** %4, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call %struct.dma_mapping* @genwqe_search_pin(%struct.genwqe_file* %40, i64 %41, i64 %42, i32* null)
  store %struct.dma_mapping* %43, %struct.dma_mapping** %7, align 8
  %44 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %45 = icmp eq %struct.dma_mapping* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %20
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %20
  %50 = load %struct.genwqe_file*, %struct.genwqe_file** %4, align 8
  %51 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %52 = call i32 @genwqe_del_pin(%struct.genwqe_file* %50, %struct.dma_mapping* %51)
  %53 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %54 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %55 = call i32 @genwqe_user_vunmap(%struct.genwqe_dev* %53, %struct.dma_mapping* %54)
  %56 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %57 = call i32 @kfree(%struct.dma_mapping* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %46, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local %struct.dma_mapping* @genwqe_search_pin(%struct.genwqe_file*, i64, i64, i32*) #1

declare dso_local i32 @genwqe_del_pin(%struct.genwqe_file*, %struct.dma_mapping*) #1

declare dso_local i32 @genwqe_user_vunmap(%struct.genwqe_dev*, %struct.dma_mapping*) #1

declare dso_local i32 @kfree(%struct.dma_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
