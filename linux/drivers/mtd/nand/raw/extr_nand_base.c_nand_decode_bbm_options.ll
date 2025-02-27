; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_decode_bbm_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_decode_bbm_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.mtd_info = type { i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_BBM_POS_LARGE = common dso_local global i32 0, align 4
@NAND_BBM_POS_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @nand_decode_bbm_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_decode_bbm_options(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %4)
  store %struct.mtd_info* %5, %struct.mtd_info** %3, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 512
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @NAND_BBM_POS_LARGE, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %10
  %22 = load i32, i32* @NAND_BBM_POS_SMALL, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
