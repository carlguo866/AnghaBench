; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_do_ill_tl1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_64.c_do_ill_tl1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.tl1_traplog = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"TL1: Illegal Instruction Exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ill_tl1(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i64 1
  %5 = bitcast %struct.pt_regs* %4 to %struct.tl1_traplog*
  %6 = call i32 @dump_tl1_traplog(%struct.tl1_traplog* %5)
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @die_if_kernel(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %7)
  ret void
}

declare dso_local i32 @dump_tl1_traplog(%struct.tl1_traplog*) #1

declare dso_local i32 @die_if_kernel(i8*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
