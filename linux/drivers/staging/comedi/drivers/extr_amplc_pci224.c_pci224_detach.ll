; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci224_private* }
%struct.pci224_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pci224_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pci224_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  store %struct.pci224_private* %6, %struct.pci224_private** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = call i32 @comedi_pci_detach(%struct.comedi_device* %7)
  %9 = load %struct.pci224_private*, %struct.pci224_private** %3, align 8
  %10 = icmp ne %struct.pci224_private* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.pci224_private*, %struct.pci224_private** %3, align 8
  %13 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  %16 = load %struct.pci224_private*, %struct.pci224_private** %3, align 8
  %17 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @comedi_pci_detach(%struct.comedi_device*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
