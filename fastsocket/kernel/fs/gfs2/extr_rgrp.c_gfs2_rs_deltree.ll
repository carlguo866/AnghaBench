; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rs_deltree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rs_deltree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_blkreserv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rs_deltree(%struct.gfs2_blkreserv* %0) #0 {
  %2 = alloca %struct.gfs2_blkreserv*, align 8
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_blkreserv* %0, %struct.gfs2_blkreserv** %2, align 8
  %4 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  store %struct.gfs2_rgrpd* %7, %struct.gfs2_rgrpd** %3, align 8
  %8 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %9 = icmp ne %struct.gfs2_rgrpd* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %2, align 8
  %15 = call i32 @__rs_deltree(%struct.gfs2_blkreserv* %14)
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__rs_deltree(%struct.gfs2_blkreserv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
