; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3306a_state*)* @lgdt3306a_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_soft_reset(%struct.lgdt3306a_state* %0) #0 {
  %2 = alloca %struct.lgdt3306a_state*, align 8
  %3 = alloca i32, align 4
  store %struct.lgdt3306a_state* %0, %struct.lgdt3306a_state** %2, align 8
  %4 = call i32 @dbg_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %6 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %5, i32 0, i32 7, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @lg_chkerr(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  %12 = call i32 @msleep(i32 20)
  %13 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %2, align 8
  %14 = call i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state* %13, i32 0, i32 7, i32 1)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @lg_chkerr(i32 %15)
  br label %17

17:                                               ; preds = %11, %10
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @dbg_info(i8*) #1

declare dso_local i32 @lgdt3306a_set_reg_bit(%struct.lgdt3306a_state*, i32, i32, i32) #1

declare dso_local i64 @lg_chkerr(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
