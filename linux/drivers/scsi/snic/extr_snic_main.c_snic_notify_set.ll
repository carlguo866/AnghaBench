; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_notify_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_notify_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, i32 }

@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@SNIC_MSIX_ERR_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Interrupt mode should be setup before devcmd notify set %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*)* @snic_notify_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_notify_set(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.snic*, %struct.snic** %2, align 8
  %6 = getelementptr inbounds %struct.snic, %struct.snic* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @svnic_dev_get_intr_mode(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.snic*, %struct.snic** %2, align 8
  %14 = getelementptr inbounds %struct.snic, %struct.snic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNIC_MSIX_ERR_NOTIFY, align 4
  %17 = call i32 @svnic_dev_notify_set(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.snic*, %struct.snic** %2, align 8
  %20 = getelementptr inbounds %struct.snic, %struct.snic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @SNIC_HOST_ERR(i32 %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 -1, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @svnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @svnic_dev_notify_set(i32, i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
