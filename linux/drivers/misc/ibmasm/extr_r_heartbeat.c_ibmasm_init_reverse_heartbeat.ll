; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_r_heartbeat.c_ibmasm_init_reverse_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_r_heartbeat.c_ibmasm_init_reverse_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32 }
%struct.reverse_heartbeat = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmasm_init_reverse_heartbeat(%struct.service_processor* %0, %struct.reverse_heartbeat* %1) #0 {
  %3 = alloca %struct.service_processor*, align 8
  %4 = alloca %struct.reverse_heartbeat*, align 8
  store %struct.service_processor* %0, %struct.service_processor** %3, align 8
  store %struct.reverse_heartbeat* %1, %struct.reverse_heartbeat** %4, align 8
  %5 = load %struct.reverse_heartbeat*, %struct.reverse_heartbeat** %4, align 8
  %6 = getelementptr inbounds %struct.reverse_heartbeat, %struct.reverse_heartbeat* %5, i32 0, i32 1
  %7 = call i32 @init_waitqueue_head(i32* %6)
  %8 = load %struct.reverse_heartbeat*, %struct.reverse_heartbeat** %4, align 8
  %9 = getelementptr inbounds %struct.reverse_heartbeat, %struct.reverse_heartbeat* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
