; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_free_font.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font/extr_vita2d_font.c_vita2d_font_free_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vita2d_font_free_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vita2d_font_free_font(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i64)*, i32 (i64)** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 %26(i64 %29)
  br label %31

31:                                               ; preds = %21, %16, %11
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @vita2d_free_texture(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i32 @free(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %31, %10
  ret void
}

declare dso_local i32 @vita2d_free_texture(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
