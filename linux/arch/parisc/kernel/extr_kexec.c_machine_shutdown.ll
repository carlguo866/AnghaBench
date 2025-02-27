; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kexec.c_machine_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kexec.c_machine_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_shutdown() #0 {
  %1 = call i32 (...) @smp_send_stop()
  br label %2

2:                                                ; preds = %5, %0
  %3 = call i32 (...) @num_online_cpus()
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = call i32 (...) @cpu_relax()
  %7 = call i32 @mdelay(i32 1)
  br label %2

8:                                                ; preds = %2
  ret void
}

declare dso_local i32 @smp_send_stop(...) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
