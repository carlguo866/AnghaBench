; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_slot_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_get_slot_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_slot_ctx = type { i32 }
%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i64, i64 }

@XHCI_CTX_TYPE_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xhci_slot_ctx* @xhci_get_slot_ctx(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1) #0 {
  %3 = alloca %struct.xhci_slot_ctx*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_container_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %5, align 8
  %6 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %7 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XHCI_CTX_TYPE_DEVICE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.xhci_slot_ctx*
  store %struct.xhci_slot_ctx* %15, %struct.xhci_slot_ctx** %3, align 8
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @CTX_SIZE(i32 %22)
  %24 = add nsw i64 %19, %23
  %25 = inttoptr i64 %24 to %struct.xhci_slot_ctx*
  store %struct.xhci_slot_ctx* %25, %struct.xhci_slot_ctx** %3, align 8
  br label %26

26:                                               ; preds = %16, %11
  %27 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %3, align 8
  ret %struct.xhci_slot_ctx* %27
}

declare dso_local i64 @CTX_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
