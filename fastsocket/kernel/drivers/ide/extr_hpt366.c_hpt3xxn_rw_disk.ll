; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xxn_rw_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xxn_rw_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.request*)* @hpt3xxn_rw_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt3xxn_rw_disk(%struct.TYPE_3__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call i64 @rq_data_dir(%struct.request* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 35, i32 33
  %13 = call i32 @hpt3xxn_set_clock(i32 %7, i32 %12)
  ret void
}

declare dso_local i32 @hpt3xxn_set_clock(i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
