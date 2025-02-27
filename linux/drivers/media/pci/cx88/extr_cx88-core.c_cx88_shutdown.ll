; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@MO_DEV_CNTRL2 = common dso_local global i32 0, align 4
@MO_VID_DMACNTRL = common dso_local global i32 0, align 4
@MO_AUD_DMACNTRL = common dso_local global i32 0, align 4
@MO_TS_DMACNTRL = common dso_local global i32 0, align 4
@MO_VIP_DMACNTRL = common dso_local global i32 0, align 4
@MO_GPHST_DMACNTRL = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@MO_VID_INTMSK = common dso_local global i32 0, align 4
@MO_AUD_INTMSK = common dso_local global i32 0, align 4
@MO_TS_INTMSK = common dso_local global i32 0, align 4
@MO_VIP_INTMSK = common dso_local global i32 0, align 4
@MO_GPHST_INTMSK = common dso_local global i32 0, align 4
@VID_CAPTURE_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx88_shutdown(%struct.cx88_core* %0) #0 {
  %2 = alloca %struct.cx88_core*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %2, align 8
  %3 = load i32, i32* @MO_DEV_CNTRL2, align 4
  %4 = call i32 @cx_write(i32 %3, i32 0)
  %5 = load i32, i32* @MO_VID_DMACNTRL, align 4
  %6 = call i32 @cx_write(i32 %5, i32 0)
  %7 = load i32, i32* @MO_AUD_DMACNTRL, align 4
  %8 = call i32 @cx_write(i32 %7, i32 0)
  %9 = load i32, i32* @MO_TS_DMACNTRL, align 4
  %10 = call i32 @cx_write(i32 %9, i32 0)
  %11 = load i32, i32* @MO_VIP_DMACNTRL, align 4
  %12 = call i32 @cx_write(i32 %11, i32 0)
  %13 = load i32, i32* @MO_GPHST_DMACNTRL, align 4
  %14 = call i32 @cx_write(i32 %13, i32 0)
  %15 = load i32, i32* @MO_PCI_INTMSK, align 4
  %16 = call i32 @cx_write(i32 %15, i32 0)
  %17 = load i32, i32* @MO_VID_INTMSK, align 4
  %18 = call i32 @cx_write(i32 %17, i32 0)
  %19 = load i32, i32* @MO_AUD_INTMSK, align 4
  %20 = call i32 @cx_write(i32 %19, i32 0)
  %21 = load i32, i32* @MO_TS_INTMSK, align 4
  %22 = call i32 @cx_write(i32 %21, i32 0)
  %23 = load i32, i32* @MO_VIP_INTMSK, align 4
  %24 = call i32 @cx_write(i32 %23, i32 0)
  %25 = load i32, i32* @MO_GPHST_INTMSK, align 4
  %26 = call i32 @cx_write(i32 %25, i32 0)
  %27 = load i32, i32* @VID_CAPTURE_CONTROL, align 4
  %28 = call i32 @cx_write(i32 %27, i32 0)
  ret void
}

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
