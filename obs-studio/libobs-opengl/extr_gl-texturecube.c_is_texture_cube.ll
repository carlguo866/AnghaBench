; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texturecube.c_is_texture_cube.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texturecube.c_is_texture_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GS_TEXTURE_CUBE = common dso_local global i64 0, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s (GL) failed:  Not a cubemap texture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @is_texture_cube to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_texture_cube(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GS_TEXTURE_CUBE, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_ERROR, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @blog(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @blog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
