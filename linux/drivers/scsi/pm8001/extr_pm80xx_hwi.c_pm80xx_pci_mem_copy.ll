; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_pci_mem_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_pci_mem_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm80xx_pci_mem_copy(%struct.pm8001_hba_info* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %37, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 %23, 4
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 65536
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %14, align 8
  br label %17

42:                                               ; preds = %17
  ret void
}

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
