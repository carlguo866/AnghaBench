; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_clone_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_clone_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rping_cb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rping_cb* (%struct.rping_cb*)* @clone_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rping_cb* @clone_cb(%struct.rping_cb* %0) #0 {
  %2 = alloca %struct.rping_cb*, align 8
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.rping_cb*, align 8
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %5 = call %struct.rping_cb* @malloc(i32 8)
  store %struct.rping_cb* %5, %struct.rping_cb** %4, align 8
  %6 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %7 = icmp ne %struct.rping_cb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.rping_cb* null, %struct.rping_cb** %2, align 8
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %11 = call i32 @memset(%struct.rping_cb* %10, i32 0, i32 8)
  %12 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %13 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %14 = bitcast %struct.rping_cb* %12 to i8*
  %15 = bitcast %struct.rping_cb* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %17 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %18 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.rping_cb* %16, %struct.rping_cb** %20, align 8
  %21 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  store %struct.rping_cb* %21, %struct.rping_cb** %2, align 8
  br label %22

22:                                               ; preds = %9, %8
  %23 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  ret %struct.rping_cb* %23
}

declare dso_local %struct.rping_cb* @malloc(i32) #1

declare dso_local i32 @memset(%struct.rping_cb*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
