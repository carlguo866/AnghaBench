; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_OD_DecSpecificDesc_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_OD_DecSpecificDesc_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.TYPE_5__*)* @OD_DecSpecificDesc_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OD_DecSpecificDesc_Read(i32* %0, i32 %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @VLC_UNUSED(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @malloc(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memcpy(i64 %29, i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %23, %4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
