; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdpush_sender_thread_custom_host_variables_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdpush_sender_thread_custom_host_variables_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@RRDVAR_OPTION_CUSTOM_HOST_VAR = common dso_local global i32 0, align 4
@RRDVAR_TYPE_CALCULATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @rrdpush_sender_thread_custom_host_variables_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrdpush_sender_thread_custom_host_variables_callback(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RRDVAR_OPTION_CUSTOM_HOST_VAR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RRDVAR_TYPE_CALCULATED, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ false, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = call i32 @rrdpush_sender_add_host_variable_to_buffer_nolock(i32* %30, %struct.TYPE_3__* %31)
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rrdpush_sender_add_host_variable_to_buffer_nolock(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
