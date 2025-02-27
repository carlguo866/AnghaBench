; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mf6x4.c_mf6x4_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mf6x4.c_mf6x4_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.mf6x4_private* }
%struct.mf6x4_private = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @mf6x4_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mf6x4_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.mf6x4_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 0
  %6 = load %struct.mf6x4_private*, %struct.mf6x4_private** %5, align 8
  store %struct.mf6x4_private* %6, %struct.mf6x4_private** %3, align 8
  %7 = load %struct.mf6x4_private*, %struct.mf6x4_private** %3, align 8
  %8 = icmp ne %struct.mf6x4_private* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.mf6x4_private*, %struct.mf6x4_private** %3, align 8
  %11 = getelementptr inbounds %struct.mf6x4_private, %struct.mf6x4_private* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.mf6x4_private*, %struct.mf6x4_private** %3, align 8
  %16 = getelementptr inbounds %struct.mf6x4_private, %struct.mf6x4_private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @iounmap(i64 %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.mf6x4_private*, %struct.mf6x4_private** %3, align 8
  %21 = getelementptr inbounds %struct.mf6x4_private, %struct.mf6x4_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.mf6x4_private*, %struct.mf6x4_private** %3, align 8
  %26 = getelementptr inbounds %struct.mf6x4_private, %struct.mf6x4_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @iounmap(i64 %27)
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %32 = call i32 @comedi_pci_detach(%struct.comedi_device* %31)
  ret void
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @comedi_pci_detach(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
