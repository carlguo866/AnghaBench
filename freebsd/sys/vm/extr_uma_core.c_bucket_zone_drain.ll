; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_zone_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_zone_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_bucket_zone = type { i64, i32 }

@bucket_zones = common dso_local global %struct.uma_bucket_zone* null, align 8
@UMA_RECLAIM_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bucket_zone_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bucket_zone_drain() #0 {
  %1 = alloca %struct.uma_bucket_zone*, align 8
  %2 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** @bucket_zones, align 8
  %3 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %2, i64 0
  store %struct.uma_bucket_zone* %3, %struct.uma_bucket_zone** %1, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %6 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %11 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UMA_RECLAIM_DRAIN, align 4
  %14 = call i32 @uma_zone_reclaim(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %1, align 8
  %17 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %16, i32 1
  store %struct.uma_bucket_zone* %17, %struct.uma_bucket_zone** %1, align 8
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @uma_zone_reclaim(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
