; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_proc.c_show_cpuinfo_misc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/extr_proc.c_show_cpuinfo_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cpuinfo_x86 = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"fpu\09\09: yes\0Afpu_exception\09: yes\0Acpuid level\09: %d\0Awp\09\09: yes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.cpuinfo_x86*)* @show_cpuinfo_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_cpuinfo_misc(%struct.seq_file* %0, %struct.cpuinfo_x86* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.cpuinfo_x86* %1, %struct.cpuinfo_x86** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %4, align 8
  %7 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %8)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
