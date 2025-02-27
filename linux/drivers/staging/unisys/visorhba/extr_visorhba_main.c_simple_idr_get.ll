; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_simple_idr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_simple_idr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, i8*, i32*)* @simple_idr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_idr_get(%struct.idr* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.idr* %0, %struct.idr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @idr_preload(i32 %10)
  %12 = load i32*, i32** %7, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.idr*, %struct.idr** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @INT_MAX, align 4
  %18 = load i32, i32* @GFP_NOWAIT, align 4
  %19 = call i32 @idr_alloc(%struct.idr* %15, i8* %16, i32 1, i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = call i32 (...) @idr_preload_end()
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(%struct.idr*, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
