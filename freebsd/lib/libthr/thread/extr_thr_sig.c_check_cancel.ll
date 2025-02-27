; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_check_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_sig.c_check_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i64, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SIGCANCEL = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*, %struct.TYPE_3__*)* @check_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_cancel(%struct.pthread* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.pthread*, %struct.pthread** %3, align 8
  %6 = getelementptr inbounds %struct.pthread, %struct.pthread* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.pthread*, %struct.pthread** %3, align 8
  %11 = getelementptr inbounds %struct.pthread, %struct.pthread* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.pthread*, %struct.pthread** %3, align 8
  %16 = getelementptr inbounds %struct.pthread, %struct.pthread* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9, %2
  %20 = phi i1 [ true, %9 ], [ true, %2 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @__predict_true(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.pthread*, %struct.pthread** %3, align 8
  %27 = getelementptr inbounds %struct.pthread, %struct.pthread* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %25
  %31 = load %struct.pthread*, %struct.pthread** %3, align 8
  %32 = getelementptr inbounds %struct.pthread, %struct.pthread* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SIGCANCEL, align 4
  %43 = call i32 @SIGADDSET(i32 %41, i32 %42)
  %44 = load %struct.pthread*, %struct.pthread** %3, align 8
  %45 = getelementptr inbounds %struct.pthread, %struct.pthread* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.pthread*, %struct.pthread** %3, align 8
  %47 = load i32, i32* @SIGCANCEL, align 4
  %48 = call i32 @_thr_send_sig(%struct.pthread* %46, i32 %47)
  br label %54

49:                                               ; preds = %35, %30
  %50 = load %struct.pthread*, %struct.pthread** %3, align 8
  %51 = getelementptr inbounds %struct.pthread, %struct.pthread* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @thr_wake(i32 %52)
  br label %54

54:                                               ; preds = %49, %38
  br label %72

55:                                               ; preds = %25
  %56 = load %struct.pthread*, %struct.pthread** %3, align 8
  %57 = getelementptr inbounds %struct.pthread, %struct.pthread* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* @PTHREAD_CANCELED, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = icmp ne %struct.TYPE_3__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32* [ %66, %64 ], [ null, %67 ]
  %70 = call i32 @_pthread_exit_mask(i32 %61, i32* %69)
  br label %71

71:                                               ; preds = %68, %55
  br label %72

72:                                               ; preds = %24, %71, %54
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @SIGADDSET(i32, i32) #1

declare dso_local i32 @_thr_send_sig(%struct.pthread*, i32) #1

declare dso_local i32 @thr_wake(i32) #1

declare dso_local i32 @_pthread_exit_mask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
