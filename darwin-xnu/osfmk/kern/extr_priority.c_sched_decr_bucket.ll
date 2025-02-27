; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_priority.c_sched_decr_bucket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_priority.c_sched_decr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TH_BUCKET_FIXPRI = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_BG = common dso_local global i64 0, align 8
@sched_run_buckets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sched_decr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_decr_bucket(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @TH_BUCKET_FIXPRI, align 8
  %5 = icmp uge i64 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %9 = icmp ule i64 %7, %8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64*, i64** @sched_run_buckets, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64*, i64** @sched_run_buckets, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = call i32 @hw_atomic_sub(i64* %23, i32 1)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hw_atomic_sub(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
