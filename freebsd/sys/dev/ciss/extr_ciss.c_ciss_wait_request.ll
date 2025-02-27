; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_wait_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_wait_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_request = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CISS_REQ_SLEEP = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cissREQ\00", align 1
@SBT_1MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_request*, i32)* @ciss_wait_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_wait_request(%struct.ciss_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciss_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ciss_request* %0, %struct.ciss_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 @debug_called(i32 2)
  %8 = load i32, i32* @CISS_REQ_SLEEP, align 4
  %9 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %10 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %14 = call i32 @ciss_start(%struct.ciss_request* %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %32, %18
  %20 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %21 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CISS_REQ_SLEEP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EWOULDBLOCK, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i1 [ false, %19 ], [ %29, %26 ]
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %34 = load %struct.ciss_request*, %struct.ciss_request** %4, align 8
  %35 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @PRIBIO, align 4
  %39 = load i32, i32* @SBT_1MS, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @msleep_sbt(%struct.ciss_request* %33, i32* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %41, i32 0, i32 0)
  store i32 %42, i32* %6, align 4
  br label %19

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_start(%struct.ciss_request*) #1

declare dso_local i32 @msleep_sbt(%struct.ciss_request*, i32*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
