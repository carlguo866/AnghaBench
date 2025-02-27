; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_old_synchronous_dataset_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_old_synchronous_dataset_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.killarg = type { i32*, i32* }
%struct.TYPE_2__ = type { i64, i32 }

@TRAVERSE_POST = common dso_local global i32 0, align 4
@TRAVERSE_NO_DECRYPT = common dso_local global i32 0, align 4
@kill_blkptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @old_synchronous_dataset_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @old_synchronous_dataset_destroy(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.killarg, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds %struct.killarg, %struct.killarg* %5, i32 0, i32 1
  store i32* %6, i32** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds %struct.killarg, %struct.killarg* %5, i32 0, i32 0
  store i32* %8, i32** %9, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_2__* @dsl_dataset_phys(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TRAVERSE_POST, align 4
  %16 = load i32, i32* @TRAVERSE_NO_DECRYPT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @kill_blkptr, align 4
  %19 = call i32 @traverse_dataset(i32* %10, i32 %14, i32 %17, i32 %18, %struct.killarg* %5)
  %20 = call i32 @VERIFY0(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @DS_UNIQUE_IS_ACCURATE(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_2__* @dsl_dataset_phys(i32* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  ret void
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @traverse_dataset(i32*, i32, i32, i32, %struct.killarg*) #1

declare dso_local %struct.TYPE_2__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DS_UNIQUE_IS_ACCURATE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
