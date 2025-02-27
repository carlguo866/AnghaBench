; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_check_and_free_pending_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_check_and_free_pending_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_cmd = type { i32 }

@TCMU_CMD_BIT_EXPIRED = common dso_local global i32 0, align 4
@tcmu_cmd_cache = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_cmd*)* @tcmu_check_and_free_pending_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_check_and_free_pending_cmd(%struct.tcmu_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcmu_cmd*, align 8
  store %struct.tcmu_cmd* %0, %struct.tcmu_cmd** %3, align 8
  %4 = load i32, i32* @TCMU_CMD_BIT_EXPIRED, align 4
  %5 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %5, i32 0, i32 0
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @tcmu_cmd_cache, align 4
  %11 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %3, align 8
  %12 = call i32 @kmem_cache_free(i32 %10, %struct.tcmu_cmd* %11)
  store i32 0, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.tcmu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
