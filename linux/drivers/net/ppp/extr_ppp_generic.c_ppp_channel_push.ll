; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_channel_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_channel_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @ppp_channel_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_channel_push(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %3 = load %struct.channel*, %struct.channel** %2, align 8
  %4 = getelementptr inbounds %struct.channel, %struct.channel* %3, i32 0, i32 0
  %5 = call i32 @read_lock_bh(i32* %4)
  %6 = load %struct.channel*, %struct.channel** %2, align 8
  %7 = getelementptr inbounds %struct.channel, %struct.channel* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %2, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @this_cpu_ptr(i32 %15)
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.channel*, %struct.channel** %2, align 8
  %20 = call i32 @__ppp_channel_push(%struct.channel* %19)
  %21 = load %struct.channel*, %struct.channel** %2, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @this_cpu_ptr(i32 %25)
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.channel*, %struct.channel** %2, align 8
  %31 = call i32 @__ppp_channel_push(%struct.channel* %30)
  br label %32

32:                                               ; preds = %29, %10
  %33 = load %struct.channel*, %struct.channel** %2, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 0
  %35 = call i32 @read_unlock_bh(i32* %34)
  ret void
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32* @this_cpu_ptr(i32) #1

declare dso_local i32 @__ppp_channel_push(%struct.channel*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
