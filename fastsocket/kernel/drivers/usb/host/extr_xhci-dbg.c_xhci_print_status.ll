; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_print_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_print_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"USBSTS 0x%x:\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  Event ring is %sempty\0A\00", align 1
@STS_EINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"  %sHost System Error\0A\00", align 1
@STS_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"No \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"  HC is %s\0A\00", align 1
@STS_HALT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"halted\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*)* @xhci_print_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_print_status(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @xhci_readl(%struct.xhci_hcd* %4, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @STS_EINT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %20 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @STS_FATAL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %28 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @STS_HALT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %36 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %35)
  ret void
}

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
