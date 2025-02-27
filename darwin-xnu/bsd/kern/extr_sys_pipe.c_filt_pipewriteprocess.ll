; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_pipewriteprocess.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_filt_pipewriteprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64, i64, %struct.kevent_internal_s, %struct.TYPE_2__* }
%struct.kevent_internal_s = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.filt_process_s = type { i32 }
%struct.pipe = type { i32 }

@EV_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.filt_process_s*, %struct.kevent_internal_s*)* @filt_pipewriteprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_pipewriteprocess(%struct.knote* %0, %struct.filt_process_s* %1, %struct.kevent_internal_s* %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.filt_process_s*, align 8
  %6 = alloca %struct.kevent_internal_s*, align 8
  %7 = alloca %struct.pipe*, align 8
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.filt_process_s* %1, %struct.filt_process_s** %5, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %6, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.pipe*
  store %struct.pipe* %14, %struct.pipe** %7, align 8
  %15 = load %struct.pipe*, %struct.pipe** %7, align 8
  %16 = call i32 @PIPE_LOCK(%struct.pipe* %15)
  %17 = load %struct.knote*, %struct.knote** %4, align 8
  %18 = load %struct.pipe*, %struct.pipe** %7, align 8
  %19 = call i32 @filt_pipewrite_common(%struct.knote* %17, %struct.pipe* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %6, align 8
  %24 = load %struct.knote*, %struct.knote** %4, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 3
  %26 = bitcast %struct.kevent_internal_s* %23 to i8*
  %27 = bitcast %struct.kevent_internal_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 8 %27, i64 4, i1 false)
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EV_CLEAR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.knote*, %struct.knote** %4, align 8
  %36 = getelementptr inbounds %struct.knote, %struct.knote* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.knote*, %struct.knote** %4, align 8
  %38 = getelementptr inbounds %struct.knote, %struct.knote* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %22
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.pipe*, %struct.pipe** %7, align 8
  %42 = call i32 @PIPE_UNLOCK(%struct.pipe* %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @filt_pipewrite_common(%struct.knote*, %struct.pipe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
