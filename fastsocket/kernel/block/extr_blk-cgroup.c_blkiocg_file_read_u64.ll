; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_file_read_u64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-cgroup.c_blkiocg_file_read_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.blkio_cgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*)* @blkiocg_file_read_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkiocg_file_read_u64(%struct.cgroup* %0, %struct.cftype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.blkio_cgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  %9 = load %struct.cftype*, %struct.cftype** %5, align 8
  %10 = getelementptr inbounds %struct.cftype, %struct.cftype* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BLKIOFILE_POLICY(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.cftype*, %struct.cftype** %5, align 8
  %14 = getelementptr inbounds %struct.cftype, %struct.cftype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BLKIOFILE_ATTR(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %18 = call %struct.blkio_cgroup* @cgroup_to_blkio_cgroup(%struct.cgroup* %17)
  store %struct.blkio_cgroup* %18, %struct.blkio_cgroup** %6, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %27 [
    i32 129, label %20
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %26 [
    i32 128, label %22
  ]

22:                                               ; preds = %20
  %23 = load %struct.blkio_cgroup*, %struct.blkio_cgroup** %6, align 8
  %24 = getelementptr inbounds %struct.blkio_cgroup, %struct.blkio_cgroup* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %20
  br label %29

27:                                               ; preds = %2
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %26
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @BLKIOFILE_POLICY(i32) #1

declare dso_local i32 @BLKIOFILE_ATTR(i32) #1

declare dso_local %struct.blkio_cgroup* @cgroup_to_blkio_cgroup(%struct.cgroup*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
