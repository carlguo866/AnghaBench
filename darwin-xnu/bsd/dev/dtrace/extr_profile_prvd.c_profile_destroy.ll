; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@CYCLIC_NONE = common dso_local global i64 0, align 8
@PROF_TICK = common dso_local global i64 0, align 8
@NCPU = common dso_local global i32 0, align 4
@profile_total = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @profile_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_destroy(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CYCLIC_NONE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PROF_TICK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = call i32 @kmem_free(%struct.TYPE_3__* %23, i32 16)
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = load i32, i32* @NCPU, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 16, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @kmem_free(%struct.TYPE_3__* %26, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32, i32* @profile_total, align 4
  %35 = icmp sge i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = call i32 @atomic_add_32(i32* @profile_total, i32 -1)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
