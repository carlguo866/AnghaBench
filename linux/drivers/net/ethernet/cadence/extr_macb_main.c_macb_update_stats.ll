; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i64 (%struct.macb*, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MACB_PFR = common dso_local global i32 0, align 4
@MACB_TPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_update_stats(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %6 = load %struct.macb*, %struct.macb** %2, align 8
  %7 = getelementptr inbounds %struct.macb, %struct.macb* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32* %9, i32** %3, align 8
  %10 = load %struct.macb*, %struct.macb** %2, align 8
  %11 = getelementptr inbounds %struct.macb, %struct.macb* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* @MACB_PFR, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = ptrtoint i32* %16 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* @MACB_TPF, align 4
  %24 = load i32, i32* @MACB_PFR, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sdiv i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %22, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  br label %31

31:                                               ; preds = %47, %1
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.macb*, %struct.macb** %2, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 0
  %38 = load i64 (%struct.macb*, i32)*, i64 (%struct.macb*, i32)** %37, align 8
  %39 = load %struct.macb*, %struct.macb** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 %38(%struct.macb* %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %41
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 4
  store i32 %51, i32* %5, align 4
  br label %31

52:                                               ; preds = %31
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
