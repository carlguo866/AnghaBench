; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c___amd64_write_pci_cfg_dword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c___amd64_write_pci_cfg_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s: error writing to F%dx%03x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__amd64_write_pci_cfg_dword(%struct.pci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @pci_write_config_dword(%struct.pci_dev* %10, i32 %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @PCI_FUNC(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @amd64_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @amd64_warn(i8*, i8*, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
