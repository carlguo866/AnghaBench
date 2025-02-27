; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_free_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.dm_target*, i32)* @free_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_context(%struct.mirror_set* %0, %struct.dm_target* %1, i32 %2) #0 {
  %4 = alloca %struct.mirror_set*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %4, align 8
  store %struct.dm_target* %1, %struct.dm_target** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = load i32, i32* %6, align 4
  %9 = add i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %13 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %14 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_put_device(%struct.dm_target* %12, i32 %20)
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %24 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dm_io_client_destroy(i32 %25)
  %27 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %28 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dm_region_hash_destroy(i32 %29)
  %31 = load %struct.mirror_set*, %struct.mirror_set** %4, align 8
  %32 = call i32 @kfree(%struct.mirror_set* %31)
  ret void
}

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @dm_io_client_destroy(i32) #1

declare dso_local i32 @dm_region_hash_destroy(i32) #1

declare dso_local i32 @kfree(%struct.mirror_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
