; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mbx.c_qla24xx_lun_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mbx.c_qla24xx_lun_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@ql2xasynctmfenable = common dso_local global i64 0, align 8
@TCF_LUN_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Lun\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_lun_reset(%struct.fc_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.fc_port* %0, %struct.fc_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %10 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %8, align 8
  %14 = load i64, i64* @ql2xasynctmfenable, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %18 = call i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %22 = load i32, i32* @TCF_LUN_RESET, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @qla2x00_async_tm_cmd(%struct.fc_port* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %16, %3
  %27 = load i32, i32* @TCF_LUN_RESET, align 4
  %28 = load %struct.fc_port*, %struct.fc_port** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @__qla24xx_issue_tmf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27, %struct.fc_port* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_async_tm_cmd(%struct.fc_port*, i32, i32, i32) #1

declare dso_local i32 @__qla24xx_issue_tmf(i8*, i32, %struct.fc_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
