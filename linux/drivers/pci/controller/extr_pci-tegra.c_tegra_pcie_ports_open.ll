; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_ports_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_ports_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.tegra_pcie* }
%struct.tegra_pcie = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.tegra_pcie* }

@tegra_pcie_ports_seq_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tegra_pcie_ports_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_ports_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tegra_pcie*, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %10, align 8
  store %struct.tegra_pcie* %11, %struct.tegra_pcie** %6, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call i32 @seq_open(%struct.file* %12, i32* @tegra_pcie_ports_seq_ops)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.seq_file*, %struct.seq_file** %20, align 8
  store %struct.seq_file* %21, %struct.seq_file** %7, align 8
  %22 = load %struct.tegra_pcie*, %struct.tegra_pcie** %6, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %24 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %23, i32 0, i32 0
  store %struct.tegra_pcie* %22, %struct.tegra_pcie** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
