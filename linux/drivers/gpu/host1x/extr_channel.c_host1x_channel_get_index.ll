; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_channel_get_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_channel_get_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_channel = type { i32 }
%struct.host1x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host1x_channel* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.host1x_channel* @host1x_channel_get_index(%struct.host1x* %0, i32 %1) #0 {
  %3 = alloca %struct.host1x_channel*, align 8
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.host1x_channel*, align 8
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.host1x*, %struct.host1x** %4, align 8
  %8 = getelementptr inbounds %struct.host1x, %struct.host1x* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.host1x_channel*, %struct.host1x_channel** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %10, i64 %12
  store %struct.host1x_channel* %13, %struct.host1x_channel** %6, align 8
  %14 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %15 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %14, i32 0, i32 0
  %16 = call i32 @kref_get_unless_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.host1x_channel* null, %struct.host1x_channel** %3, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  store %struct.host1x_channel* %20, %struct.host1x_channel** %3, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  ret %struct.host1x_channel* %22
}

declare dso_local i32 @kref_get_unless_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
