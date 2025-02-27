; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_suspend.c_xen_arch_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_suspend.c_xen_arch_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xen_vcpu_notify_restore = common dso_local global i32 0, align 4
@CLOCK_EVT_NOTIFY_RESUME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_arch_resume() #0 {
  %1 = load i32, i32* @xen_vcpu_notify_restore, align 4
  %2 = load i64, i64* @CLOCK_EVT_NOTIFY_RESUME, align 8
  %3 = inttoptr i64 %2 to i8*
  %4 = call i32 @on_each_cpu(i32 %1, i8* %3, i32 1)
  ret void
}

declare dso_local i32 @on_each_cpu(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
