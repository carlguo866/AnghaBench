; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_osdmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_ceph_osdmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@GFP_NOIO = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ceph_osdmap* @ceph_osdmap_alloc() #0 {
  %1 = alloca %struct.ceph_osdmap*, align 8
  %2 = alloca %struct.ceph_osdmap*, align 8
  %3 = load i32, i32* @GFP_NOIO, align 4
  %4 = call %struct.ceph_osdmap* @kzalloc(i32 48, i32 %3)
  store %struct.ceph_osdmap* %4, %struct.ceph_osdmap** %2, align 8
  %5 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %6 = icmp ne %struct.ceph_osdmap* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.ceph_osdmap* null, %struct.ceph_osdmap** %1, align 8
  br label %30

8:                                                ; preds = %0
  %9 = load i8*, i8** @RB_ROOT, align 8
  %10 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %11 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %10, i32 0, i32 6
  store i8* %9, i8** %11, align 8
  %12 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load i8*, i8** @RB_ROOT, align 8
  %15 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @RB_ROOT, align 8
  %18 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @RB_ROOT, align 8
  %21 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %22 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @RB_ROOT, align 8
  %24 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  %27 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %26, i32 0, i32 1
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %2, align 8
  store %struct.ceph_osdmap* %29, %struct.ceph_osdmap** %1, align 8
  br label %30

30:                                               ; preds = %8, %7
  %31 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %1, align 8
  ret %struct.ceph_osdmap* %31
}

declare dso_local %struct.ceph_osdmap* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
