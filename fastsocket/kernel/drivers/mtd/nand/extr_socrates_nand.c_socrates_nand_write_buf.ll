; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_socrates_nand.c_socrates_nand_write_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_socrates_nand.c_socrates_nand_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.socrates_nand_host* }
%struct.socrates_nand_host = type { i32 }

@FPGA_NAND_ENABLE = common dso_local global i32 0, align 4
@FPGA_NAND_CMD_WRITE = common dso_local global i32 0, align 4
@FPGA_NAND_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @socrates_nand_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socrates_nand_write_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.socrates_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  store %struct.nand_chip* %12, %struct.nand_chip** %8, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %14, align 8
  store %struct.socrates_nand_host* %15, %struct.socrates_nand_host** %9, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.socrates_nand_host*, %struct.socrates_nand_host** %9, align 8
  %22 = getelementptr inbounds %struct.socrates_nand_host, %struct.socrates_nand_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FPGA_NAND_ENABLE, align 4
  %25 = load i32, i32* @FPGA_NAND_CMD_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FPGA_NAND_DATA_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %26, %33
  %35 = call i32 @out_be32(i32 %23, i32 %34)
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %16

39:                                               ; preds = %16
  ret void
}

declare dso_local i32 @out_be32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
