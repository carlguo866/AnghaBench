; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_get_stats.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vm_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@xh_vm_get_stats.statbuf = internal global [64 x i32] zeroinitializer, align 16
@vm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xh_vm_get_stats(i32 %0, %struct.timeval* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call i32 @getmicrotime(%struct.timeval* %8)
  %12 = load i32, i32* @vm, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @vmm_stat_copy(i32 %12, i32 %13, i32* %9, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @xh_vm_get_stats.statbuf, i32 0, i32 0))
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.timeval*, %struct.timeval** %6, align 8
  %25 = icmp ne %struct.timeval* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.timeval*, %struct.timeval** %6, align 8
  %28 = bitcast %struct.timeval* %27 to i8*
  %29 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  br label %30

30:                                               ; preds = %26, %23
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @xh_vm_get_stats.statbuf, i32 0, i32 0), i32** %4, align 8
  br label %32

31:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32*, i32** %4, align 8
  ret i32* %33
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @vmm_stat_copy(i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
