; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_unbind.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_vao_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_vao = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_vao*)* @gl_vao_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_vao_unbind(%struct.gl_vao* %0) #0 {
  %2 = alloca %struct.gl_vao*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store %struct.gl_vao* %0, %struct.gl_vao** %2, align 8
  %5 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %6 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = call i32 %15(i32 0)
  br label %34

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.gl_vao*, %struct.gl_vao** %2, align 8
  %21 = getelementptr inbounds %struct.gl_vao, %struct.gl_vao* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %27(i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %18

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
