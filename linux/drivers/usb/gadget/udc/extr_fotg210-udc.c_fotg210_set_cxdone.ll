; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_set_cxdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_set_cxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { i64 }

@FOTG210_DCFESR = common dso_local global i64 0, align 8
@DCFESR_CX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_udc*)* @fotg210_set_cxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_set_cxdone(%struct.fotg210_udc* %0) #0 {
  %2 = alloca %struct.fotg210_udc*, align 8
  %3 = alloca i32, align 4
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %2, align 8
  %4 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %5 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FOTG210_DCFESR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ioread32(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @DCFESR_CX_DONE, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.fotg210_udc*, %struct.fotg210_udc** %2, align 8
  %15 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FOTG210_DCFESR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
