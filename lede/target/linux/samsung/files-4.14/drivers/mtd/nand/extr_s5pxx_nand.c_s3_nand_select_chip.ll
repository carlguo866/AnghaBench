; ModuleID = '/home/carl/AnghaBench/lede/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s3_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/samsung/files-4.14/drivers/mtd/nand/extr_s5pxx_nand.c_s3_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.s5p_nand_host* }
%struct.s5p_nand_host = type { i64 }

@S5P_NFCONT = common dso_local global i64 0, align 8
@S5P_NFCONT_nFCE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @s3_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3_nand_select_chip(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.s5p_nand_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  store %struct.nand_chip* %10, %struct.nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %12, align 8
  store %struct.s5p_nand_host* %13, %struct.s5p_nand_host** %6, align 8
  %14 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %15 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @S5P_NFCONT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @S5P_NFCONT_nFCE0, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @S5P_NFCONT_nFCE0, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.s5p_nand_host*, %struct.s5p_nand_host** %6, align 8
  %34 = getelementptr inbounds %struct.s5p_nand_host, %struct.s5p_nand_host* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S5P_NFCONT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
