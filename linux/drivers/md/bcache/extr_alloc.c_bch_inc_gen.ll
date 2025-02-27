; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_inc_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_alloc.c_bch_inc_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bucket = type { i32 }

@BUCKET_GC_GEN_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_inc_gen(%struct.cache* %0, %struct.bucket* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bucket*, align 8
  %5 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bucket* %1, %struct.bucket** %4, align 8
  %6 = load %struct.bucket*, %struct.bucket** %4, align 8
  %7 = getelementptr inbounds %struct.bucket, %struct.bucket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.cache*, %struct.cache** %3, align 8
  %11 = getelementptr inbounds %struct.cache, %struct.cache* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bucket*, %struct.bucket** %4, align 8
  %16 = call i32 @bucket_gc_gen(%struct.bucket* %15)
  %17 = call i64 @max(i64 %14, i32 %16)
  %18 = load %struct.cache*, %struct.cache** %3, align 8
  %19 = getelementptr inbounds %struct.cache, %struct.cache* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  %22 = load %struct.cache*, %struct.cache** %3, align 8
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BUCKET_GC_GEN_MAX, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @bucket_gc_gen(%struct.bucket*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
