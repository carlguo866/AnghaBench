; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_get_fan_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_i8k.c_i8k_get_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@I8K_SMM_GET_SPEED = common dso_local global i32 0, align 4
@fan_mult = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i8k_get_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_get_fan_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smm_regs, align 4
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %3, i32 0, i32 0
  %5 = load i32, i32* @I8K_SMM_GET_SPEED, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %3, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 255
  %9 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = call i64 @i8k_smm(%struct.smm_regs* %3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 65535
  %17 = load i32, i32* @fan_mult, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  br label %20

20:                                               ; preds = %13, %12
  %21 = phi i64 [ %10, %12 ], [ %19, %13 ]
  %22 = trunc i64 %21 to i32
  ret i32 %22
}

declare dso_local i64 @i8k_smm(%struct.smm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
