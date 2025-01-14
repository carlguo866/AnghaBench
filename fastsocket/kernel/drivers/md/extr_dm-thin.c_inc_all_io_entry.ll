; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_inc_all_io_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_inc_all_io_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32 }
%struct.bio = type { i32 }
%struct.dm_thin_endio_hook = type { i32 }
%struct.TYPE_2__ = type { %struct.dm_thin_endio_hook* }

@BIO_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, %struct.bio*)* @inc_all_io_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_all_io_entry(%struct.pool* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.dm_thin_endio_hook*, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BIO_DISCARD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = call %struct.TYPE_2__* @dm_get_mapinfo(%struct.bio* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %16, align 8
  store %struct.dm_thin_endio_hook* %17, %struct.dm_thin_endio_hook** %5, align 8
  %18 = load %struct.pool*, %struct.pool** %3, align 8
  %19 = getelementptr inbounds %struct.pool, %struct.pool* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_deferred_entry_inc(i32 %20)
  %22 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %5, align 8
  %23 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.TYPE_2__* @dm_get_mapinfo(%struct.bio*) #1

declare dso_local i32 @dm_deferred_entry_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
