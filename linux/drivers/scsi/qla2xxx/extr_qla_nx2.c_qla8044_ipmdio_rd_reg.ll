; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_ipmdio_rd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx2.c_qla8044_ipmdio_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32, i32, i32)* @qla8044_ipmdio_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla8044_ipmdio_rd_reg(%struct.scsi_qla_host* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @qla8044_poll_wait_for_ready(%struct.scsi_qla_host* %14, i32 %15, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %40

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = or i32 1073741824, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host* %24, i32 %25, i32 %26)
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @qla8044_poll_wait_for_ready(%struct.scsi_qla_host* %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %40

35:                                               ; preds = %21
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host* %36, i32 %37, i32* %13)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %34, %20
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @qla8044_poll_wait_for_ready(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla8044_wr_reg_indirect(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @qla8044_rd_reg_indirect(%struct.scsi_qla_host*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
