; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_dev_xtal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_dev_xtal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HYDRA_CRYSTAL_SETTING = common dso_local global i32 0, align 4
@HYDRA_CRYSTAL_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxl*, i32, i32, i32)* @cfg_dev_xtal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_dev_xtal(%struct.mxl* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mxl*, %struct.mxl** %5, align 8
  %10 = getelementptr inbounds %struct.mxl, %struct.mxl* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.mxl*, %struct.mxl** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @update_by_mnemonic(%struct.mxl* %19, i32 -1876950956, i32 23, i32 1, i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 24000000
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.mxl*, %struct.mxl** %5, align 8
  %27 = load i32, i32* @HYDRA_CRYSTAL_SETTING, align 4
  %28 = call i32 @write_register(%struct.mxl* %26, i32 %27, i32 0)
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.mxl*, %struct.mxl** %5, align 8
  %31 = load i32, i32* @HYDRA_CRYSTAL_SETTING, align 4
  %32 = call i32 @write_register(%struct.mxl* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.mxl*, %struct.mxl** %5, align 8
  %35 = load i32, i32* @HYDRA_CRYSTAL_CAP, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @write_register(%struct.mxl* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @update_by_mnemonic(%struct.mxl*, i32, i32, i32, i32) #1

declare dso_local i32 @write_register(%struct.mxl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
