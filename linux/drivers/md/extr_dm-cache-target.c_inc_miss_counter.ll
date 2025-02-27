; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_inc_miss_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_inc_miss_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, %struct.bio*)* @inc_miss_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_miss_counter(%struct.cache* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = call i64 @bio_data_dir(%struct.bio* %5)
  %7 = load i64, i64* @READ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.cache*, %struct.cache** %3, align 8
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.cache*, %struct.cache** %3, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32* [ %12, %9 ], [ %16, %13 ]
  %19 = call i32 @atomic_inc(i32* %18)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
