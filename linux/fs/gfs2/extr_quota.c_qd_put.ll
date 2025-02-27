; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_qd_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@gfs2_qd_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_quota_data*)* @qd_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qd_put(%struct.gfs2_quota_data* %0) #0 {
  %2 = alloca %struct.gfs2_quota_data*, align 8
  store %struct.gfs2_quota_data* %0, %struct.gfs2_quota_data** %2, align 8
  %3 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %4 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %3, i32 0, i32 0
  %5 = call i64 @lockref_put_or_lock(%struct.TYPE_2__* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %13 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %12, i32 0, i32 1
  %14 = call i32 @list_lru_add(i32* @gfs2_qd_lru, i32* %13)
  %15 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %2, align 8
  %16 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  br label %19

19:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @lockref_put_or_lock(%struct.TYPE_2__*) #1

declare dso_local i32 @list_lru_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
