; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_cache_block.c_AStreamControl.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_cache_block.c_AStreamControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid vlc_stream_vaControl query=0x%x\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @AStreamControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AStreamControl(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %33 [
    i32 144, label %10
    i32 146, label %10
    i32 145, label %10
    i32 147, label %10
    i32 137, label %10
    i32 140, label %10
    i32 134, label %10
    i32 135, label %10
    i32 139, label %10
    i32 142, label %10
    i32 143, label %10
    i32 138, label %10
    i32 136, label %10
    i32 133, label %10
    i32 131, label %10
    i32 132, label %10
    i32 141, label %10
    i32 128, label %17
    i32 129, label %17
    i32 130, label %32
  ]

10:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @vlc_stream_vaControl(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %38

17:                                               ; preds = %3, %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @vlc_stream_vaControl(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = call i32 @AStreamControlReset(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %3, %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @msg_Err(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %30, %10
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @vlc_stream_vaControl(i32, i32, i32) #1

declare dso_local i32 @AStreamControlReset(%struct.TYPE_5__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
