; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_decrement_one_qlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_decrement_one_qlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb_sched_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sfb_bucket** }
%struct.sfb_bucket = type { i64 }

@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_BUCKET_MASK = common dso_local global i64 0, align 8
@SFB_BUCKET_SHIFT = common dso_local global i64 0, align 8
@SFB_NUMBUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.sfb_sched_data*)* @decrement_one_qlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decrement_one_qlen(i64 %0, i64 %1, %struct.sfb_sched_data* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sfb_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfb_bucket*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sfb_sched_data* %2, %struct.sfb_sched_data** %6, align 8
  %10 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %6, align 8
  %11 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sfb_bucket**, %struct.sfb_bucket*** %15, align 8
  %17 = getelementptr inbounds %struct.sfb_bucket*, %struct.sfb_bucket** %16, i64 0
  %18 = load %struct.sfb_bucket*, %struct.sfb_bucket** %17, align 8
  %19 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %18, i64 0
  store %struct.sfb_bucket* %19, %struct.sfb_bucket** %8, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %49, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SFB_LEVELS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @SFB_BUCKET_MASK, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* @SFB_BUCKET_SHIFT, align 8
  %29 = load i64, i64* %4, align 8
  %30 = lshr i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load %struct.sfb_bucket*, %struct.sfb_bucket** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %31, i64 %32
  %34 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load %struct.sfb_bucket*, %struct.sfb_bucket** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %38, i64 %39
  %41 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %37, %24
  %45 = load i32, i32* @SFB_NUMBUCKETS, align 4
  %46 = load %struct.sfb_bucket*, %struct.sfb_bucket** %8, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.sfb_bucket, %struct.sfb_bucket* %46, i64 %47
  store %struct.sfb_bucket* %48, %struct.sfb_bucket** %8, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %20

52:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
