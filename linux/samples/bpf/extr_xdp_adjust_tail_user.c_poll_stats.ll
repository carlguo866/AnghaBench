; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_adjust_tail_user.c_poll_stats.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_adjust_tail_user.c_poll_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATS_INTERVAL_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"icmp \22packet too big\22 sent: %10llu pkts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @poll_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 @time(i32* null)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = call i32 @time(i32* null)
  %14 = load i32, i32* %5, align 4
  %15 = sub i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp ule i32 %15, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ true, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = load i32, i32* @STATS_INTERVAL_S, align 4
  %22 = call i32 @sleep(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @bpf_map_lookup_elem(i32 %23, i32* %7, i32* %6)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %9

30:                                               ; preds = %18
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
