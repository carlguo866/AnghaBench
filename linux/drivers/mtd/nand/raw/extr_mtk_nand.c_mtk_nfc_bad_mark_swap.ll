; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_bad_mark_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_bad_mark_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mtk_nfc_nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @mtk_nfc_bad_mark_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_bad_mark_swap(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %9 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %13 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %12)
  store %struct.mtk_nfc_nand_chip* %13, %struct.mtk_nfc_nand_chip** %8, align 8
  %14 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %15 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %22 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %26 = call i64 @mtk_data_len(%struct.nand_chip* %25)
  %27 = mul i64 %24, %26
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %9, align 8
  br label %42

30:                                               ; preds = %3
  %31 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %34, %38
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %30, %20
  %43 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @swap(i32 %47, i32 %51)
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i64 @mtk_data_len(%struct.nand_chip*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
