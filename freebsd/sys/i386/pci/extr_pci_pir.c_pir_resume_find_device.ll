; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pir_resume_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_pir.c_pir_resume_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PIR_entry = type { i32, i32, i32 }
%struct.PIR_intpin = type { i64 }
%struct.pci_dev_lookup = type { i64, i32, %struct.PIR_intpin*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PIR_entry*, %struct.PIR_intpin*, i8*)* @pir_resume_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pir_resume_find_device(%struct.PIR_entry* %0, %struct.PIR_intpin* %1, i8* %2) #0 {
  %4 = alloca %struct.PIR_entry*, align 8
  %5 = alloca %struct.PIR_intpin*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pci_dev_lookup*, align 8
  store %struct.PIR_entry* %0, %struct.PIR_entry** %4, align 8
  store %struct.PIR_intpin* %1, %struct.PIR_intpin** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.pci_dev_lookup*
  store %struct.pci_dev_lookup* %9, %struct.pci_dev_lookup** %7, align 8
  %10 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %11 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pci_dev_lookup*, %struct.pci_dev_lookup** %7, align 8
  %14 = getelementptr inbounds %struct.pci_dev_lookup, %struct.pci_dev_lookup* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.pci_dev_lookup*, %struct.pci_dev_lookup** %7, align 8
  %19 = getelementptr inbounds %struct.pci_dev_lookup, %struct.pci_dev_lookup* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %3
  br label %43

23:                                               ; preds = %17
  %24 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %25 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pci_dev_lookup*, %struct.pci_dev_lookup** %7, align 8
  %28 = getelementptr inbounds %struct.pci_dev_lookup, %struct.pci_dev_lookup* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %30 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pci_dev_lookup*, %struct.pci_dev_lookup** %7, align 8
  %33 = getelementptr inbounds %struct.pci_dev_lookup, %struct.pci_dev_lookup* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.PIR_intpin*, %struct.PIR_intpin** %5, align 8
  %35 = load %struct.PIR_entry*, %struct.PIR_entry** %4, align 8
  %36 = getelementptr inbounds %struct.PIR_entry, %struct.PIR_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds %struct.PIR_intpin, %struct.PIR_intpin* %34, i64 %39
  %41 = load %struct.pci_dev_lookup*, %struct.pci_dev_lookup** %7, align 8
  %42 = getelementptr inbounds %struct.pci_dev_lookup, %struct.pci_dev_lookup* %41, i32 0, i32 2
  store %struct.PIR_intpin* %40, %struct.PIR_intpin** %42, align 8
  br label %43

43:                                               ; preds = %23, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
