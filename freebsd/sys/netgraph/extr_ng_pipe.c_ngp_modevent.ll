; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_ngp_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pipe.c_ngp_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ng_pipe\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@ngp_zone = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"ng_pipe: couldn't allocate descriptor zone\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ngp_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngp_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %18
  ]

9:                                                ; preds = %3
  %10 = call i32 @max(i32 4, i32 4)
  %11 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %12 = call i32* @uma_zcreate(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32* null, i32* null, i32* null, i32* null, i32 %11, i32 0)
  store i32* %12, i32** @ngp_zone, align 8
  %13 = load i32*, i32** @ngp_zone, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %9
  br label %23

18:                                               ; preds = %3
  %19 = load i32*, i32** @ngp_zone, align 8
  %20 = call i32 @uma_zdestroy(i32* %19)
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %18, %17
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @uma_zdestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
