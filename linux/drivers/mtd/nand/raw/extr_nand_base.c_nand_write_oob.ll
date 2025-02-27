; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_ops = type { i32, i32, i64 }
%struct.nand_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* @nand_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_oob(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %13 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %15 = call i32 @nand_get_device(%struct.nand_chip* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %25 [
    i32 129, label %24
    i32 130, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %20, %20, %20
  br label %26

25:                                               ; preds = %20
  br label %42

26:                                               ; preds = %24
  %27 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %35 = call i32 @nand_do_write_oob(%struct.nand_chip* %32, i32 %33, %struct.mtd_oob_ops* %34)
  store i32 %35, i32* %9, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %40 = call i32 @nand_do_write_ops(%struct.nand_chip* %37, i32 %38, %struct.mtd_oob_ops* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %44 = call i32 @nand_release_device(%struct.nand_chip* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %18
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local i32 @nand_get_device(%struct.nand_chip*) #1

declare dso_local i32 @nand_do_write_oob(%struct.nand_chip*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @nand_do_write_ops(%struct.nand_chip*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @nand_release_device(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
