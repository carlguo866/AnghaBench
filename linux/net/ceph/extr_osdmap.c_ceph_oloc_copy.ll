; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_oloc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_oloc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_object_locator = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_oloc_copy(%struct.ceph_object_locator* %0, %struct.ceph_object_locator* %1) #0 {
  %3 = alloca %struct.ceph_object_locator*, align 8
  %4 = alloca %struct.ceph_object_locator*, align 8
  store %struct.ceph_object_locator* %0, %struct.ceph_object_locator** %3, align 8
  store %struct.ceph_object_locator* %1, %struct.ceph_object_locator** %4, align 8
  %5 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %3, align 8
  %6 = call i32 @ceph_oloc_destroy(%struct.ceph_object_locator* %5)
  %7 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %4, align 8
  %8 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32* @ceph_get_string(i32* %19)
  %21 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %3, align 8
  %25 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @ceph_oloc_destroy(%struct.ceph_object_locator*) #1

declare dso_local i32* @ceph_get_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
