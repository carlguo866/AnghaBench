; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_read_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_read_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.quota_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @v2_read_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_read_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.quota_info*, align 8
  %4 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %5 = load %struct.dquot*, %struct.dquot** %2, align 8
  %6 = getelementptr inbounds %struct.dquot, %struct.dquot* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.quota_info* @sb_dqopt(i32 %7)
  store %struct.quota_info* %8, %struct.quota_info** %3, align 8
  %9 = load %struct.quota_info*, %struct.quota_info** %3, align 8
  %10 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %9, i32 0, i32 0
  %11 = call i32 @down_read(i32* %10)
  %12 = load %struct.dquot*, %struct.dquot** %2, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dquot*, %struct.dquot** %2, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_4__* @sb_dqinfo(i32 %14, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dquot*, %struct.dquot** %2, align 8
  %23 = call i32 @qtree_read_dquot(i32 %21, %struct.dquot* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.quota_info*, %struct.quota_info** %3, align 8
  %25 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.quota_info* @sb_dqopt(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @qtree_read_dquot(i32, %struct.dquot*) #1

declare dso_local %struct.TYPE_4__* @sb_dqinfo(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
