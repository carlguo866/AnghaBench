; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/endpoint/extr_pci-epf-core.c_pci_epf_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_epf = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.pci_epf*)* }

@.str = private unnamed_addr constant [32 x i8] c"epf device not bound to driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_epf_unbind(%struct.pci_epf* %0) #0 {
  %2 = alloca %struct.pci_epf*, align 8
  store %struct.pci_epf* %0, %struct.pci_epf** %2, align 8
  %3 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %4 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %9 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %8, i32 0, i32 1
  %10 = call i32 @dev_WARN(i32* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %13 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.pci_epf*)*, i32 (%struct.pci_epf*)** %17, align 8
  %19 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %20 = call i32 %18(%struct.pci_epf* %19)
  %21 = load %struct.pci_epf*, %struct.pci_epf** %2, align 8
  %22 = getelementptr inbounds %struct.pci_epf, %struct.pci_epf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @module_put(i32 %25)
  br label %27

27:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @dev_WARN(i32*, i8*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
