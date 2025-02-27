; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_siig_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_siig_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unknown SIIG card\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @pci_siig_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_siig_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 65280
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 4096
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_siig10x_init(%struct.pci_dev* %12)
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 8192
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_siig20x_init(%struct.pci_dev* %18)
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = call i32 @moan_device(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.pci_dev* %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %17, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pci_siig10x_init(%struct.pci_dev*) #1

declare dso_local i32 @pci_siig20x_init(%struct.pci_dev*) #1

declare dso_local i32 @moan_device(i8*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
