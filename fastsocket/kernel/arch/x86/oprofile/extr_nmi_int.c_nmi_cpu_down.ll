; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_nmi_int.c_nmi_cpu_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_nmi_int.c_nmi_cpu_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctr_running = common dso_local global i64 0, align 8
@nmi_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nmi_cpu_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmi_cpu_down(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @ctr_running, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @nmi_cpu_stop(i8* %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i64, i64* @nmi_enabled, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @nmi_cpu_shutdown(i8* %12)
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @nmi_cpu_stop(i8*) #1

declare dso_local i32 @nmi_cpu_shutdown(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
