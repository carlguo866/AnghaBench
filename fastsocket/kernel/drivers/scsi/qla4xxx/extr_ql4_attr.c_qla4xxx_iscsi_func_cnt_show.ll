; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_attr.c_qla4xxx_iscsi_func_cnt_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_attr.c_qla4xxx_iscsi_func_cnt_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_qla_host = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @qla4xxx_iscsi_func_cnt_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_iscsi_func_cnt_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_qla_host*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @class_to_shost(%struct.device* %9)
  %11 = call %struct.scsi_qla_host* @to_qla_host(i32 %10)
  store %struct.scsi_qla_host* %11, %struct.scsi_qla_host** %8, align 8
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %13 = call i64 @is_qla40XX(%struct.scsi_qla_host* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(i32) #1

declare dso_local i32 @class_to_shost(%struct.device*) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
