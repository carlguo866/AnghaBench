; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev5.c_ev5_reg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev5.c_ev5_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_register_config = type { i32 }
%struct.op_counter_config = type { i32 }
%struct.op_system_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_register_config*, %struct.op_counter_config*, %struct.op_system_config*)* @ev5_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev5_reg_setup(%struct.op_register_config* %0, %struct.op_counter_config* %1, %struct.op_system_config* %2) #0 {
  %4 = alloca %struct.op_register_config*, align 8
  %5 = alloca %struct.op_counter_config*, align 8
  %6 = alloca %struct.op_system_config*, align 8
  store %struct.op_register_config* %0, %struct.op_register_config** %4, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %5, align 8
  store %struct.op_system_config* %2, %struct.op_system_config** %6, align 8
  %7 = load %struct.op_register_config*, %struct.op_register_config** %4, align 8
  %8 = load %struct.op_counter_config*, %struct.op_counter_config** %5, align 8
  %9 = load %struct.op_system_config*, %struct.op_system_config** %6, align 8
  %10 = call i32 @common_reg_setup(%struct.op_register_config* %7, %struct.op_counter_config* %8, %struct.op_system_config* %9, i32 19, i32 22)
  ret void
}

declare dso_local i32 @common_reg_setup(%struct.op_register_config*, %struct.op_counter_config*, %struct.op_system_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
