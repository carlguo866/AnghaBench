; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_vmd.c_vmd_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { %struct.vmd_irq* }
%struct.vmd_irq = type { %struct.vmd_irq_list* }
%struct.vmd_irq_list = type { i32 }
%struct.msi_msg = type { i32, i64, i32 }
%struct.vmd_dev = type { i32 }

@MSI_ADDR_BASE_HI = common dso_local global i32 0, align 4
@MSI_ADDR_BASE_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @vmd_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmd_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.vmd_irq*, align 8
  %6 = alloca %struct.vmd_irq_list*, align 8
  %7 = alloca %struct.vmd_dev*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load %struct.vmd_irq*, %struct.vmd_irq** %9, align 8
  store %struct.vmd_irq* %10, %struct.vmd_irq** %5, align 8
  %11 = load %struct.vmd_irq*, %struct.vmd_irq** %5, align 8
  %12 = getelementptr inbounds %struct.vmd_irq, %struct.vmd_irq* %11, i32 0, i32 0
  %13 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %12, align 8
  store %struct.vmd_irq_list* %13, %struct.vmd_irq_list** %6, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %15 = call %struct.vmd_dev* @irq_data_get_irq_handler_data(%struct.irq_data* %14)
  store %struct.vmd_dev* %15, %struct.vmd_dev** %7, align 8
  %16 = load i32, i32* @MSI_ADDR_BASE_HI, align 4
  %17 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %18 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @MSI_ADDR_BASE_LO, align 4
  %20 = load %struct.vmd_dev*, %struct.vmd_dev** %7, align 8
  %21 = load %struct.vmd_irq_list*, %struct.vmd_irq_list** %6, align 8
  %22 = call i32 @index_from_irqs(%struct.vmd_dev* %20, %struct.vmd_irq_list* %21)
  %23 = call i32 @MSI_ADDR_DEST_ID(i32 %22)
  %24 = or i32 %19, %23
  %25 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %26 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local %struct.vmd_dev* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i32 @MSI_ADDR_DEST_ID(i32) #1

declare dso_local i32 @index_from_irqs(%struct.vmd_dev*, %struct.vmd_irq_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
