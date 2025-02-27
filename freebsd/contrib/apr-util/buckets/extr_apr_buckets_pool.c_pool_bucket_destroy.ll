; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/buckets/extr_apr_buckets_pool.c_pool_bucket_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/buckets/extr_apr_buckets_pool.c_pool_bucket_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i64 }

@pool_bucket_cleanup = common dso_local global i32 0, align 4
@apr_bucket_type_heap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pool_bucket_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_bucket_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i64 @apr_bucket_shared_destroy(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load i32, i32* @pool_bucket_cleanup, align 4
  %20 = call i32 @apr_pool_cleanup_kill(i64 %17, %struct.TYPE_7__* %18, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @apr_bucket_free(%struct.TYPE_7__* %21)
  br label %23

23:                                               ; preds = %14, %10
  br label %28

24:                                               ; preds = %1
  %25 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @apr_bucket_type_heap, i32 0, i32 0), align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 %25(%struct.TYPE_7__* %26)
  br label %28

28:                                               ; preds = %24, %23
  ret void
}

declare dso_local i64 @apr_bucket_shared_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @apr_pool_cleanup_kill(i64, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @apr_bucket_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
