; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_get_link_speed_and_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_get_link_speed_and_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SPEED_SDR = common dso_local global i32 0, align 4
@IB_WIDTH_1X = common dso_local global i32 0, align 4
@IB_SPEED_QDR = common dso_local global i32 0, align 4
@IB_SPEED_DDR = common dso_local global i32 0, align 4
@IB_WIDTH_4X = common dso_local global i32 0, align 4
@IB_SPEED_EDR = common dso_local global i32 0, align 4
@IB_SPEED_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @get_link_speed_and_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_link_speed_and_width(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %43 [
    i32 1000, label %8
    i32 10000, label %13
    i32 20000, label %18
    i32 25000, label %23
    i32 40000, label %28
    i32 50000, label %33
    i32 100000, label %38
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* @IB_SPEED_SDR, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @IB_WIDTH_1X, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  br label %48

13:                                               ; preds = %3
  %14 = load i32, i32* @IB_SPEED_QDR, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @IB_WIDTH_1X, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load i32, i32* @IB_SPEED_DDR, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @IB_WIDTH_4X, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %48

23:                                               ; preds = %3
  %24 = load i32, i32* @IB_SPEED_EDR, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @IB_WIDTH_1X, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %48

28:                                               ; preds = %3
  %29 = load i32, i32* @IB_SPEED_QDR, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @IB_WIDTH_4X, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %48

33:                                               ; preds = %3
  %34 = load i32, i32* @IB_SPEED_HDR, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IB_WIDTH_1X, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %48

38:                                               ; preds = %3
  %39 = load i32, i32* @IB_SPEED_EDR, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IB_WIDTH_4X, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %48

43:                                               ; preds = %3
  %44 = load i32, i32* @IB_SPEED_SDR, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IB_WIDTH_1X, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38, %33, %28, %23, %18, %13, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
