; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_cq_desc.h_cq_desc_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_cq_desc.h_cq_desc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cq_desc = type { i32, i32, i32 }

@CQ_DESC_COLOR_SHIFT = common dso_local global i32 0, align 4
@CQ_DESC_COLOR_MASK = common dso_local global i32 0, align 4
@CQ_DESC_TYPE_MASK = common dso_local global i32 0, align 4
@CQ_DESC_Q_NUM_MASK = common dso_local global i32 0, align 4
@CQ_DESC_COMP_NDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cq_desc*, i32*, i32*, i32*, i32*)* @cq_desc_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_desc_dec(%struct.cq_desc* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.cq_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cq_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.cq_desc* %0, %struct.cq_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.cq_desc*, %struct.cq_desc** %6, align 8
  store %struct.cq_desc* %13, %struct.cq_desc** %11, align 8
  %14 = load %struct.cq_desc*, %struct.cq_desc** %11, align 8
  %15 = getelementptr inbounds %struct.cq_desc, %struct.cq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @CQ_DESC_COLOR_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @CQ_DESC_COLOR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = call i32 (...) @rmb()
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @CQ_DESC_TYPE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cq_desc*, %struct.cq_desc** %11, align 8
  %29 = getelementptr inbounds %struct.cq_desc, %struct.cq_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load i32, i32* @CQ_DESC_Q_NUM_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.cq_desc*, %struct.cq_desc** %11, align 8
  %36 = getelementptr inbounds %struct.cq_desc, %struct.cq_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load i32, i32* @CQ_DESC_COMP_NDX_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
