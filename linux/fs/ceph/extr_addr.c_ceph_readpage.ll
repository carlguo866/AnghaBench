; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_addr.c_ceph_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @ceph_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call i32 @ceph_do_readpage(%struct.file* %6, %struct.page* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @unlock_page(%struct.page* %14)
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @ceph_do_readpage(%struct.file*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
