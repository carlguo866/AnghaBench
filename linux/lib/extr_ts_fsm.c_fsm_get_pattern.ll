; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ts_fsm.c_fsm_get_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ts_fsm.c_fsm_get_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32 }
%struct.ts_fsm = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ts_config*)* @fsm_get_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fsm_get_pattern(%struct.ts_config* %0) #0 {
  %2 = alloca %struct.ts_config*, align 8
  %3 = alloca %struct.ts_fsm*, align 8
  store %struct.ts_config* %0, %struct.ts_config** %2, align 8
  %4 = load %struct.ts_config*, %struct.ts_config** %2, align 8
  %5 = call %struct.ts_fsm* @ts_config_priv(%struct.ts_config* %4)
  store %struct.ts_fsm* %5, %struct.ts_fsm** %3, align 8
  %6 = load %struct.ts_fsm*, %struct.ts_fsm** %3, align 8
  %7 = getelementptr inbounds %struct.ts_fsm, %struct.ts_fsm* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

declare dso_local %struct.ts_fsm* @ts_config_priv(%struct.ts_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
