; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_fixup_extensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_directx.c_fixup_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.wined3d_gl_info*)*, i32, i32 (%struct.wined3d_gl_info*, %struct.wined3d_caps_gl_ctx*, i8*, i32, i32, i32)* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_caps_gl_ctx = type { i32 }

@quirk_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Applying driver quirk \22%s\22.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_caps_gl_ctx*, i8*, i32, i32, i32)* @fixup_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_extensions(%struct.wined3d_gl_info* %0, %struct.wined3d_caps_gl_ctx* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_caps_gl_ctx* %1, %struct.wined3d_caps_gl_ctx** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %51, %6
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirk_table, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirk_table, align 8
  %21 = load i32, i32* %13, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32 (%struct.wined3d_gl_info*, %struct.wined3d_caps_gl_ctx*, i8*, i32, i32, i32)*, i32 (%struct.wined3d_gl_info*, %struct.wined3d_caps_gl_ctx*, i8*, i32, i32, i32)** %24, align 8
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %27 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 %25(%struct.wined3d_gl_info* %26, %struct.wined3d_caps_gl_ctx* %27, i8* %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  br label %51

35:                                               ; preds = %19
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirk_table, align 8
  %37 = load i32, i32* %13, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @quirk_table, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.wined3d_gl_info*)*, i32 (%struct.wined3d_gl_info*)** %47, align 8
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %50 = call i32 %48(%struct.wined3d_gl_info* %49)
  br label %51

51:                                               ; preds = %35, %34
  %52 = load i32, i32* %13, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %14

54:                                               ; preds = %14
  %55 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %56 = call i32 @test_pbo_functionality(%struct.wined3d_gl_info* %55)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @test_pbo_functionality(%struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
