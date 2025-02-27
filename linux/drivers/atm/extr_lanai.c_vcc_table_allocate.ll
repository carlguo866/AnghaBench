; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vcc_table_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vcc_table_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i32, %struct.lanai_vcc** }
%struct.lanai_vcc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*)* @vcc_table_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcc_table_allocate(%struct.lanai_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lanai_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.lanai_dev* %0, %struct.lanai_dev** %3, align 8
  %5 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %6 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.lanai_vcc** @vzalloc(i32 %11)
  %13 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %14 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %13, i32 0, i32 1
  store %struct.lanai_vcc** %12, %struct.lanai_vcc*** %14, align 8
  %15 = load %struct.lanai_dev*, %struct.lanai_dev** %3, align 8
  %16 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %15, i32 0, i32 1
  %17 = load %struct.lanai_vcc**, %struct.lanai_vcc*** %16, align 8
  %18 = icmp eq %struct.lanai_vcc** %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.lanai_vcc** @vzalloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
