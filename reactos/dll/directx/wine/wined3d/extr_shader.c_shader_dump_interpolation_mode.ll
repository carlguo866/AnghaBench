; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_interpolation_mode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_interpolation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"linear centroid\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"linear noperspective\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"linear sample\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"linear noperspective centroid\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"linear noperspective sample\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"<unrecognized_interpolation_mode %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i32)* @shader_dump_interpolation_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_interpolation_mode(%struct.wined3d_string_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %27 [
    i32 134, label %6
    i32 133, label %9
    i32 132, label %12
    i32 131, label %15
    i32 128, label %18
    i32 130, label %21
    i32 129, label %24
  ]

6:                                                ; preds = %2
  %7 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %8 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %11 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %14 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %17 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %20 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %31

21:                                               ; preds = %2
  %22 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %23 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %26 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
