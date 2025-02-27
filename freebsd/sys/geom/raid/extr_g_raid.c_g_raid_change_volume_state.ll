; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_change_volume_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_g_raid.c_g_raid_change_volume_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Volume %s state changed from %s to %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid_change_volume_state(%struct.g_raid_volume* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %6 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %9 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @g_raid_volume_state2str(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @g_raid_volume_state2str(i32 %15)
  %17 = call i32 @G_RAID_DEBUG1(i32 0, i32 %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %20 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @G_RAID_DEBUG1(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_raid_volume_state2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
