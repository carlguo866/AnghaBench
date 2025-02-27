; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_fsl_upm.c_fun_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 (%struct.nand_chip.0*, i32, i32)* }
%struct.nand_chip.0 = type opaque
%struct.fsl_upm_nand = type { i32, i64*, i64 }

@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_MAX_CHIPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @fun_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fun_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_upm_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.fsl_upm_nand* @to_fsl_upm_nand(i32 %7)
  store %struct.fsl_upm_nand* %8, %struct.fsl_upm_nand** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32 (%struct.nand_chip.0*, i32, i32)*, i32 (%struct.nand_chip.0*, i32, i32)** %14, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %17 = bitcast %struct.nand_chip* %16 to %struct.nand_chip.0*
  %18 = load i32, i32* @NAND_CMD_NONE, align 4
  %19 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %20 = or i32 0, %19
  %21 = call i32 %15(%struct.nand_chip.0* %17, i32 %18, i32 %20)
  br label %57

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NAND_MAX_CHIPS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %32 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %34 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fsl_upm_nand*, %struct.fsl_upm_nand** %5, align 8
  %37 = getelementptr inbounds %struct.fsl_upm_nand, %struct.fsl_upm_nand* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %35, %42
  %44 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  br label %56

54:                                               ; preds = %25, %22
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %29
  br label %57

57:                                               ; preds = %56, %11
  ret void
}

declare dso_local %struct.fsl_upm_nand* @to_fsl_upm_nand(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
