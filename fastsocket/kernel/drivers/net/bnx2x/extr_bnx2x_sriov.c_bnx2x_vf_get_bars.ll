; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_get_bars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_get_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x_virtf = type { i32* }
%struct.bnx2x_vf_bar_info = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_bar_info*)* @bnx2x_vf_get_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_get_bars(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_bar_info* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_bar_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_bar_info* %2, %struct.bnx2x_vf_bar_info** %6, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bnx2x_vf_bar_info*, %struct.bnx2x_vf_bar_info** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vf_bar_info, %struct.bnx2x_vf_bar_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.bnx2x_vf_bar_info*, %struct.bnx2x_vf_bar_info** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vf_bar_info, %struct.bnx2x_vf_bar_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bnx2x_vf_bar_info*, %struct.bnx2x_vf_bar_info** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2x_vf_bar_info, %struct.bnx2x_vf_bar_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %16

39:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
