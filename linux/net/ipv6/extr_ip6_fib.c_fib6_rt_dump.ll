; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_rt_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_rt_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_info = type { i32 }
%struct.fib6_dump_arg = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fib6_info* }

@FIB_EVENT_ENTRY_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fib6_info*, %struct.fib6_dump_arg*)* @fib6_rt_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fib6_rt_dump(%struct.fib6_info* %0, %struct.fib6_dump_arg* %1) #0 {
  %3 = alloca %struct.fib6_info*, align 8
  %4 = alloca %struct.fib6_dump_arg*, align 8
  store %struct.fib6_info* %0, %struct.fib6_info** %3, align 8
  store %struct.fib6_dump_arg* %1, %struct.fib6_dump_arg** %4, align 8
  %5 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %6 = load %struct.fib6_dump_arg*, %struct.fib6_dump_arg** %4, align 8
  %7 = getelementptr inbounds %struct.fib6_dump_arg, %struct.fib6_dump_arg* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.fib6_info*, %struct.fib6_info** %10, align 8
  %12 = icmp eq %struct.fib6_info* %5, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.fib6_dump_arg*, %struct.fib6_dump_arg** %4, align 8
  %16 = getelementptr inbounds %struct.fib6_dump_arg, %struct.fib6_dump_arg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fib6_dump_arg*, %struct.fib6_dump_arg** %4, align 8
  %19 = getelementptr inbounds %struct.fib6_dump_arg, %struct.fib6_dump_arg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* @FIB_EVENT_ENTRY_ADD, align 4
  %22 = load %struct.fib6_info*, %struct.fib6_info** %3, align 8
  %23 = call i32 @call_fib6_entry_notifier(i32 %17, %struct.TYPE_4__* %20, i32 %21, %struct.fib6_info* %22)
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @call_fib6_entry_notifier(i32, %struct.TYPE_4__*, i32, %struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
