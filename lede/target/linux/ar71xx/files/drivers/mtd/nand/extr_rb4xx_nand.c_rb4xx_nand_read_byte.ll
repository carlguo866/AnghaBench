; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb4xx_nand.c_rb4xx_nand_read_byte.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb4xx_nand.c_rb4xx_nand_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"rb4xx_nand: read data failed, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mtd_info*)* @rb4xx_nand_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @rb4xx_nand_read_byte(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  store i8 0, i8* %3, align 1
  %5 = call i32 @rb4xx_cpld_read(i8* %3, i32 1)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i8 -1, i8* %3, align 1
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i8, i8* %3, align 1
  ret i8 %12
}

declare dso_local i32 @rb4xx_cpld_read(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
