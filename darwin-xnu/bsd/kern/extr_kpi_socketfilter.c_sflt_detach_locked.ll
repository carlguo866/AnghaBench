; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_detach_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socketfilter.c_sflt_detach_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_filter_entry = type { i32 }

@SFEF_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_filter_entry*)* @sflt_detach_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sflt_detach_locked(%struct.socket_filter_entry* %0) #0 {
  %2 = alloca %struct.socket_filter_entry*, align 8
  store %struct.socket_filter_entry* %0, %struct.socket_filter_entry** %2, align 8
  %3 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  %4 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SFEF_ATTACHED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @SFEF_ATTACHED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  %13 = getelementptr inbounds %struct.socket_filter_entry, %struct.socket_filter_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.socket_filter_entry*, %struct.socket_filter_entry** %2, align 8
  %17 = call i32 @sflt_entry_release(%struct.socket_filter_entry* %16)
  br label %18

18:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @sflt_entry_release(%struct.socket_filter_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
