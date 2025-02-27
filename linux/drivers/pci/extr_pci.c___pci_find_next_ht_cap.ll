; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_find_next_ht_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_find_next_ht_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@PCI_FIND_CAP_TTL = common dso_local global i32 0, align 4
@HT_CAPTYPE_SLAVE = common dso_local global i32 0, align 4
@HT_CAPTYPE_HOST = common dso_local global i32 0, align 4
@HT_3BIT_CAP_MASK = common dso_local global i32 0, align 4
@HT_5BIT_CAP_MASK = common dso_local global i32 0, align 4
@PCI_CAP_ID_HT = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_CAP_LIST_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @__pci_find_next_ht_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_find_next_ht_cap(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @PCI_FIND_CAP_TTL, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HT_CAPTYPE_SLAVE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HT_CAPTYPE_HOST, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @HT_3BIT_CAP_MASK, align 4
  store i32 %21, i32* %11, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @HT_5BIT_CAP_MASK, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PCI_CAP_ID_HT, align 4
  %33 = call i32 @__pci_find_next_cap_ttl(i32 %27, i32 %30, i32 %31, i32 %32, i32* %9)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %54, %24
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 3
  %41 = call i32 @pci_read_config_byte(%struct.pci_dev* %38, i32 %40, i32* %10)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %67

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %4, align 4
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCI_CAP_LIST_NEXT, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @PCI_CAP_ID_HT, align 4
  %65 = call i32 @__pci_find_next_cap_ttl(i32 %57, i32 %60, i32 %63, i32 %64, i32* %9)
  store i32 %65, i32* %6, align 4
  br label %34

66:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %52, %45
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @__pci_find_next_cap_ttl(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
