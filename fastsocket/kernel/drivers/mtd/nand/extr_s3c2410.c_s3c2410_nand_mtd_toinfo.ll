; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_mtd_toinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_mtd_toinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_nand_info = type { i32 }
%struct.mtd_info = type { i32 }
%struct.TYPE_2__ = type { %struct.s3c2410_nand_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c2410_nand_info* (%struct.mtd_info*)* @s3c2410_nand_mtd_toinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %3 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %4 = call %struct.TYPE_2__* @s3c2410_nand_mtd_toours(%struct.mtd_info* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  ret %struct.s3c2410_nand_info* %6
}

declare dso_local %struct.TYPE_2__* @s3c2410_nand_mtd_toours(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
