; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_filt_pipewrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_pipe.c_filt_pipewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, %struct.pipe* }
%struct.pipe = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PIPE_ACTIVE = common dso_local global i64 0, align 8
@PIPE_EOF = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PIPE_BUF = common dso_local global i64 0, align 8
@PIPE_DIRECTW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_pipewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_pipewrite(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pipe*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.knote*, %struct.knote** %4, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 2
  %9 = load %struct.pipe*, %struct.pipe** %8, align 8
  store %struct.pipe* %9, %struct.pipe** %6, align 8
  %10 = load %struct.pipe*, %struct.pipe** %6, align 8
  %11 = getelementptr inbounds %struct.pipe, %struct.pipe* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PIPE_ACTIVE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.pipe*, %struct.pipe** %6, align 8
  %17 = getelementptr inbounds %struct.pipe, %struct.pipe* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PIPE_EOF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15, %2
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @EV_EOF, align 4
  %26 = load %struct.knote*, %struct.knote** %4, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  store i32 1, i32* %3, align 4
  br label %71

30:                                               ; preds = %15
  %31 = load %struct.pipe*, %struct.pipe** %6, align 8
  %32 = load i32, i32* @MA_OWNED, align 4
  %33 = call i32 @PIPE_LOCK_ASSERT(%struct.pipe* %31, i32 %32)
  %34 = load %struct.pipe*, %struct.pipe** %6, align 8
  %35 = getelementptr inbounds %struct.pipe, %struct.pipe* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.pipe*, %struct.pipe** %6, align 8
  %41 = getelementptr inbounds %struct.pipe, %struct.pipe* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pipe*, %struct.pipe** %6, align 8
  %45 = getelementptr inbounds %struct.pipe, %struct.pipe* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %43, %47
  br label %51

49:                                               ; preds = %30
  %50 = load i64, i64* @PIPE_BUF, align 8
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi i64 [ %48, %39 ], [ %50, %49 ]
  %53 = load %struct.knote*, %struct.knote** %4, align 8
  %54 = getelementptr inbounds %struct.knote, %struct.knote* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.pipe*, %struct.pipe** %6, align 8
  %56 = getelementptr inbounds %struct.pipe, %struct.pipe* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PIPE_DIRECTW, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.knote*, %struct.knote** %4, align 8
  %63 = getelementptr inbounds %struct.knote, %struct.knote* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %61, %51
  %65 = load %struct.knote*, %struct.knote** %4, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PIPE_BUF, align 8
  %69 = icmp sge i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %64, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @PIPE_LOCK_ASSERT(%struct.pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
