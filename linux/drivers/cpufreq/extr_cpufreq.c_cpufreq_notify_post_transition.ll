; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_notify_post_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_notify_post_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }
%struct.cpufreq_freqs = type { i32, i32 }

@CPUFREQ_POSTCHANGE = common dso_local global i32 0, align 4
@CPUFREQ_PRECHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32)* @cpufreq_notify_post_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_notify_post_transition(%struct.cpufreq_policy* %0, %struct.cpufreq_freqs* %1, i32 %2) #0 {
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca %struct.cpufreq_freqs*, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_freqs* %1, %struct.cpufreq_freqs** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %8 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %5, align 8
  %9 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %10 = call i32 @cpufreq_notify_transition(%struct.cpufreq_policy* %7, %struct.cpufreq_freqs* %8, i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %5, align 8
  %16 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %5, align 8
  %19 = getelementptr inbounds %struct.cpufreq_freqs, %struct.cpufreq_freqs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @swap(i32 %17, i32 %20)
  %22 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %23 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %5, align 8
  %24 = load i32, i32* @CPUFREQ_PRECHANGE, align 4
  %25 = call i32 @cpufreq_notify_transition(%struct.cpufreq_policy* %22, %struct.cpufreq_freqs* %23, i32 %24)
  %26 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %27 = load %struct.cpufreq_freqs*, %struct.cpufreq_freqs** %5, align 8
  %28 = load i32, i32* @CPUFREQ_POSTCHANGE, align 4
  %29 = call i32 @cpufreq_notify_transition(%struct.cpufreq_policy* %26, %struct.cpufreq_freqs* %27, i32 %28)
  br label %30

30:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @cpufreq_notify_transition(%struct.cpufreq_policy*, %struct.cpufreq_freqs*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
