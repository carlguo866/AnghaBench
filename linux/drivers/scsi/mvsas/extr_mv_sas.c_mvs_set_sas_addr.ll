; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_set_sas_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_sas.c_mvs_set_sas_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)* }
%struct.mvs_info = type { i32 }

@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvs_set_sas_addr(%struct.mvs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mvs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = ashr i32 %14, 32
  store i32 %15, i32* %12, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %17, align 8
  %19 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 %18(%struct.mvs_info* %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %24, align 8
  %26 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 %25(%struct.mvs_info* %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %31, align 8
  %33 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 %32(%struct.mvs_info* %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mvs_info*, i32, i32)*, i32 (%struct.mvs_info*, i32, i32)** %38, align 8
  %40 = load %struct.mvs_info*, %struct.mvs_info** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 %39(%struct.mvs_info* %40, i32 %41, i32 %42)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
