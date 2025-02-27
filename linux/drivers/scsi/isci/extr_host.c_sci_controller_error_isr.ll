; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_error_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_host.c_sci_controller_error_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SMU_ISR_QUEUE_ERROR = common dso_local global i32 0, align 4
@SMU_ISR_QUEUE_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*)* @sci_controller_error_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_controller_error_isr(%struct.isci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  %5 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %6 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @readl(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @SMU_ISR_QUEUE_ERROR, align 4
  %11 = load i32, i32* @SMU_ISR_QUEUE_SUSPEND, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %20 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @writel(i32 255, i32* %22)
  %24 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %25 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @writel(i32 0, i32* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
