; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.c_NCR_700_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_53c700.c_NCR_700_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@NCR_700_MAX_TAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32)* @NCR_700_change_queue_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR_700_change_queue_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NCR_700_MAX_TAGS, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @NCR_700_MAX_TAGS, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
