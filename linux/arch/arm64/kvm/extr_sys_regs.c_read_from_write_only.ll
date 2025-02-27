; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_read_from_write_only.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.c_read_from_write_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.sys_reg_params = type { i32 }
%struct.sys_reg_desc = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Unexpected sys_reg read to write-only register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.sys_reg_params*, %struct.sys_reg_desc*)* @read_from_write_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_from_write_only(%struct.kvm_vcpu* %0, %struct.sys_reg_params* %1, %struct.sys_reg_desc* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.sys_reg_params*, align 8
  %6 = alloca %struct.sys_reg_desc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.sys_reg_params* %1, %struct.sys_reg_params** %5, align 8
  store %struct.sys_reg_desc* %2, %struct.sys_reg_desc** %6, align 8
  %7 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sys_reg_params*, %struct.sys_reg_params** %5, align 8
  %9 = call i32 @print_sys_reg_instr(%struct.sys_reg_params* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @kvm_inject_undefined(%struct.kvm_vcpu* %10)
  ret i32 0
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @print_sys_reg_instr(%struct.sys_reg_params*) #1

declare dso_local i32 @kvm_inject_undefined(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
