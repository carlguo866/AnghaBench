; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_frame_drop_dec.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_frame_drop_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mp_decoder_wrapper* }
%struct.mp_decoder_wrapper = type { i32 }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_frame_drop_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_frame_drop_dec(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.mp_decoder_wrapper*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %31, align 8
  br label %34

33:                                               ; preds = %18, %4
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi %struct.mp_decoder_wrapper* [ %32, %25 ], [ null, %33 ]
  store %struct.mp_decoder_wrapper* %35, %struct.mp_decoder_wrapper** %11, align 8
  %36 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %11, align 8
  %37 = icmp ne %struct.mp_decoder_wrapper* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.mp_decoder_wrapper*, %struct.mp_decoder_wrapper** %11, align 8
  %44 = getelementptr inbounds %struct.mp_decoder_wrapper, %struct.mp_decoder_wrapper* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @m_property_int_ro(i32 %41, i8* %42, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %38
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @m_property_int_ro(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
