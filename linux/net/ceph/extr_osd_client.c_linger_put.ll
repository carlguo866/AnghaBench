; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_linger_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_linger_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osd_linger_request = type { i32 }

@linger_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_osd_linger_request*)* @linger_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linger_put(%struct.ceph_osd_linger_request* %0) #0 {
  %2 = alloca %struct.ceph_osd_linger_request*, align 8
  store %struct.ceph_osd_linger_request* %0, %struct.ceph_osd_linger_request** %2, align 8
  %3 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %4 = icmp ne %struct.ceph_osd_linger_request* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.ceph_osd_linger_request*, %struct.ceph_osd_linger_request** %2, align 8
  %7 = getelementptr inbounds %struct.ceph_osd_linger_request, %struct.ceph_osd_linger_request* %6, i32 0, i32 0
  %8 = load i32, i32* @linger_release, align 4
  %9 = call i32 @kref_put(i32* %7, i32 %8)
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
