; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_get_queue_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_get_queue_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_rcb_get_queue_mode(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %20 [
    i32 131, label %8
    i32 129, label %11
    i32 128, label %11
    i32 132, label %14
    i32 130, label %17
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %5, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  store i32 16, i32* %10, align 4
  br label %23

11:                                               ; preds = %3, %3
  %12 = load i32*, i32** %5, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 1, i32* %13, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  store i32 64, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  store i32 16, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  store i32 1, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 16, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17, %14, %11, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
