; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_get_irq_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_get_irq_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i64, %struct.efx_channel** }
%struct.efx_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_get_irq_moderation(%struct.efx_nic* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.efx_channel*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %39

26:                                               ; preds = %4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 3
  %29 = load %struct.efx_channel**, %struct.efx_channel*** %28, align 8
  %30 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.efx_channel*, %struct.efx_channel** %29, i64 %32
  %34 = load %struct.efx_channel*, %struct.efx_channel** %33, align 8
  store %struct.efx_channel* %34, %struct.efx_channel** %9, align 8
  %35 = load %struct.efx_channel*, %struct.efx_channel** %9, align 8
  %36 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %26, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
