; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_l16_payload_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_l16_payload_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, %struct.TYPE_4__*, i32)* @l16_payload_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @l16_payload_handler(i32* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @generic_payload_handler(i32* %14, i32* %15, %struct.TYPE_4__* %16, i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %5, align 8
  br label %70

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %30 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, -2
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %12, align 8
  br label %48

48:                                               ; preds = %64, %34
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32* %66, i32** %11, align 8
  br label %48

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %27, %24
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %22
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @generic_payload_handler(i32*, i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
