; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_sram.c_sram_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_sram.c_sram_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sram_bank_info = type { %struct.sram_bank_info*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@sram_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sram_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sram_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sram_bank_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.sram_bank_info* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sram_bank_info* %6, %struct.sram_bank_info** %4, align 8
  %7 = load %struct.sram_bank_info*, %struct.sram_bank_info** %4, align 8
  %8 = icmp eq %struct.sram_bank_info* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = call i32 @mutex_lock(i32* @sram_lock)
  %14 = load %struct.sram_bank_info*, %struct.sram_bank_info** %4, align 8
  %15 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %14, i32 0, i32 3
  %16 = call i32 @list_del(i32* %15)
  %17 = call i32 @mutex_unlock(i32* @sram_lock)
  %18 = load %struct.sram_bank_info*, %struct.sram_bank_info** %4, align 8
  %19 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gen_pool_destroy(i32 %20)
  %22 = load %struct.sram_bank_info*, %struct.sram_bank_info** %4, align 8
  %23 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iounmap(i32 %24)
  %26 = load %struct.sram_bank_info*, %struct.sram_bank_info** %4, align 8
  %27 = getelementptr inbounds %struct.sram_bank_info, %struct.sram_bank_info* %26, i32 0, i32 0
  %28 = load %struct.sram_bank_info*, %struct.sram_bank_info** %27, align 8
  %29 = call i32 @kfree(%struct.sram_bank_info* %28)
  %30 = load %struct.sram_bank_info*, %struct.sram_bank_info** %4, align 8
  %31 = call i32 @kfree(%struct.sram_bank_info* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %12, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.sram_bank_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gen_pool_destroy(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.sram_bank_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
