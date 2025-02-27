; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_bus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }

@port_base = common dso_local global i64 0, align 8
@SCSI_Cntl = common dso_local global i64 0, align 8
@SCSI_Mode_Cntl = common dso_local global i64 0, align 8
@PARITY_MASK = common dso_local global i32 0, align 4
@TMC_Cntl = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdomain_16x0_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load i64, i64* @port_base, align 8
  %7 = load i64, i64* @SCSI_Cntl, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outb(i32 1, i64 %8)
  %10 = call i32 @do_pause(i32 2)
  %11 = load i64, i64* @port_base, align 8
  %12 = load i64, i64* @SCSI_Cntl, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i32 0, i64 %13)
  %15 = call i32 @do_pause(i32 115)
  %16 = load i64, i64* @port_base, align 8
  %17 = load i64, i64* @SCSI_Mode_Cntl, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 0, i64 %18)
  %20 = load i32, i32* @PARITY_MASK, align 4
  %21 = load i64, i64* @port_base, align 8
  %22 = load i64, i64* @TMC_Cntl, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 %20, i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @local_irq_restore(i64 %25)
  %27 = load i32, i32* @SUCCESS, align 4
  ret i32 %27
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @do_pause(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
