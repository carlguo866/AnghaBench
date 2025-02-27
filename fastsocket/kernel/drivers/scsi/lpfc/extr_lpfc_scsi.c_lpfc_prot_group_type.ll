; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_prot_group_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_prot_group_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.scsi_cmnd = type { i32 }

@LPFC_PG_TYPE_INVALID = common dso_local global i32 0, align 4
@LPFC_PG_TYPE_NO_DIF = common dso_local global i32 0, align 4
@LPFC_PG_TYPE_DIF_BUF = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"9021 Unsupported protection op:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.scsi_cmnd*)* @lpfc_prot_group_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_prot_group_type(%struct.lpfc_hba* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load i32, i32* @LPFC_PG_TYPE_INVALID, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = call zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd* %8)
  store i8 %9, i8* %6, align 1
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %16 [
    i32 131, label %12
    i32 130, label %12
    i32 133, label %14
    i32 128, label %14
    i32 132, label %14
    i32 129, label %14
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @LPFC_PG_TYPE_NO_DIF, align 4
  store i32 %13, i32* %5, align 4
  br label %26

14:                                               ; preds = %2, %2, %2, %2
  %15 = load i32, i32* @LPFC_PG_TYPE_DIF_BUF, align 4
  store i32 %15, i32* %5, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = icmp ne %struct.lpfc_hba* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* @LOG_FCP, align 4
  %23 = load i8, i8* %6, align 1
  %24 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 zeroext %23)
  br label %25

25:                                               ; preds = %19, %16
  br label %26

26:                                               ; preds = %25, %14, %12
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local zeroext i8 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
