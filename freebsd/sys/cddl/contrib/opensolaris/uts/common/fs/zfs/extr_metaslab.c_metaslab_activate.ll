; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@METASLAB_ACTIVE_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @metaslab_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metaslab_activate(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = call i32 @MUTEX_HELD(i32* %10)
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @METASLAB_ACTIVE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @metaslab_load(%struct.TYPE_6__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = call i32 @metaslab_group_sort(i32 %27, %struct.TYPE_6__* %28, i32 0)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %78

31:                                               ; preds = %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @METASLAB_ACTIVE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EBUSY, align 4
  store i32 %39, i32* %4, align 4
  br label %78

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @metaslab_activate_allocator(i32 %43, %struct.TYPE_6__* %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %40
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @metaslab_group_sort(i32 %59, %struct.TYPE_6__* %60, i32 %65)
  br label %67

67:                                               ; preds = %51, %3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @METASLAB_ACTIVE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @ASSERT(i32 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %67, %49, %38, %24
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_6__*) #1

declare dso_local i32 @metaslab_group_sort(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @metaslab_activate_allocator(i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
