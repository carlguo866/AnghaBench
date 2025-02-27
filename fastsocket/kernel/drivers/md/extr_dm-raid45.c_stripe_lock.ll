; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (i32, i32)* }

@READ = common dso_local global i32 0, align 4
@DM_RAID45_SHARED = common dso_local global i32 0, align 4
@DM_RAID45_EX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*, i32, i32)* @stripe_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_lock(%struct.stripe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stripe* %0, %struct.stripe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stripe*, %struct.stripe** %4, align 8
  %8 = getelementptr inbounds %struct.stripe, %struct.stripe* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.TYPE_4__* @RS(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (i32, i32)*, i64 (i32, i32)** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @READ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @DM_RAID45_SHARED, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @DM_RAID45_EX, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i64 %14(i32 %15, i32 %24)
  %26 = load %struct.stripe*, %struct.stripe** %4, align 8
  %27 = getelementptr inbounds %struct.stripe, %struct.stripe* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.stripe*, %struct.stripe** %4, align 8
  %29 = getelementptr inbounds %struct.stripe, %struct.stripe* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 0, %32 ], [ %35, %33 ]
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @RS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
