; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla28xx_component_bitmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla28xx_component_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla27xx_image_status = type { i32 }

@QLA27XX_SECONDARY_IMAGE = common dso_local global i32 0, align 4
@QLA27XX_PRIMARY_IMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla27xx_image_status*, i32)* @qla28xx_component_bitmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla28xx_component_bitmask(%struct.qla27xx_image_status* %0, i32 %1) #0 {
  %3 = alloca %struct.qla27xx_image_status*, align 8
  %4 = alloca i32, align 4
  store %struct.qla27xx_image_status* %0, %struct.qla27xx_image_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.qla27xx_image_status*, %struct.qla27xx_image_status** %3, align 8
  %6 = getelementptr inbounds %struct.qla27xx_image_status, %struct.qla27xx_image_status* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @QLA27XX_SECONDARY_IMAGE, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QLA27XX_PRIMARY_IMAGE, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
