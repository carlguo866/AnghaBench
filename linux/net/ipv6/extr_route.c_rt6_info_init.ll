; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_rt6_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.dst_entry }
%struct.dst_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt6_info*)* @rt6_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt6_info_init(%struct.rt6_info* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  store %struct.rt6_info* %0, %struct.rt6_info** %2, align 8
  %4 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %5 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %4, i32 0, i32 1
  store %struct.dst_entry* %5, %struct.dst_entry** %3, align 8
  %6 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %7 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %6, i64 1
  %8 = call i32 @memset(%struct.dst_entry* %7, i32 0, i32 4)
  %9 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %10 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %9, i32 0, i32 0
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  ret void
}

declare dso_local i32 @memset(%struct.dst_entry*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
