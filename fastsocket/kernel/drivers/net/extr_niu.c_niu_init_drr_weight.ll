; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_drr_weight.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_drr_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PT_DRR_WEIGHT_DEFAULT_10G = common dso_local global i32 0, align 4
@PT_DRR_WEIGHT_DEFAULT_1G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_drr_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_drr_weight(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %5 = load %struct.niu*, %struct.niu** %2, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.niu*, %struct.niu** %2, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @phy_decode(i32 %9, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %18 [
    i32 129, label %15
    i32 128, label %17
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @PT_DRR_WEIGHT_DEFAULT_10G, align 4
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load i32, i32* @PT_DRR_WEIGHT_DEFAULT_1G, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load %struct.niu*, %struct.niu** %2, align 8
  %22 = getelementptr inbounds %struct.niu, %struct.niu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PT_DRR_WT(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @nw64(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @phy_decode(i32, i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @PT_DRR_WT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
