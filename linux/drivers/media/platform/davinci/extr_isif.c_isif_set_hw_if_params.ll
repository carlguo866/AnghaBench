; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_hw_if_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_set_hw_if_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.vpfe_hw_if_param = type { i32 }

@isif_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CCDC_PIXFMT_YCBCR_8BIT = common dso_local global i32 0, align 4
@CCDC_PIXORDER_CBYCRY = common dso_local global i8* null, align 8
@CCDC_PIXFMT_YCBCR_16BIT = common dso_local global i32 0, align 4
@CCDC_PIXFMT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid interface type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_hw_if_param*)* @isif_set_hw_if_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isif_set_hw_if_params(%struct.vpfe_hw_if_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_hw_if_param*, align 8
  store %struct.vpfe_hw_if_param* %0, %struct.vpfe_hw_if_param** %3, align 8
  %4 = load %struct.vpfe_hw_if_param*, %struct.vpfe_hw_if_param** %3, align 8
  %5 = getelementptr inbounds %struct.vpfe_hw_if_param, %struct.vpfe_hw_if_param* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 0), align 8
  %7 = load %struct.vpfe_hw_if_param*, %struct.vpfe_hw_if_param** %3, align 8
  %8 = getelementptr inbounds %struct.vpfe_hw_if_param, %struct.vpfe_hw_if_param* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 132, label %10
    i32 131, label %10
    i32 128, label %10
    i32 133, label %13
    i32 129, label %13
    i32 130, label %16
  ]

10:                                               ; preds = %1, %1, %1
  %11 = load i32, i32* @CCDC_PIXFMT_YCBCR_8BIT, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 3, i32 1), align 8
  %12 = load i8*, i8** @CCDC_PIXORDER_CBYCRY, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 3, i32 0), align 8
  br label %23

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @CCDC_PIXFMT_YCBCR_16BIT, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 3, i32 1), align 8
  %15 = load i8*, i8** @CCDC_PIXORDER_CBYCRY, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 3, i32 0), align 8
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @CCDC_PIXFMT_RAW, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 2, i32 0), align 8
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @isif_cfg, i32 0, i32 1), align 4
  %20 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %16, %13, %10
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
